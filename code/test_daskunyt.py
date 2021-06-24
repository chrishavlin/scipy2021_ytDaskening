from timeit import default_timer as timer
from unyt import dask_array as unyt_dask_array, unyt_quantity, unyt_array
from dask import array as da
from time import sleep
import numpy as np
import argparse
import pandas as pd
import os
from dask.distributed import Client

def plain_test_op(x):
    start = timer()
    _ = (x ** 2).mean()
    end = timer()
    return end - start

def dask_test_op(x):
    start = timer()
    _ = (x ** 2).mean().compute()
    end = timer()
    return end - start

def get_array_and_func(args, sze):

    chunk_size = args.chunksize
    shp = (sze,)
    if args.test_type == 'np':
        test_array = np.ones(shp)
        func = plain_test_op
        chunk_size = np.nan
    elif args.test_type == 'unyt':
        test_array = unyt_array(np.ones(shp), 'm')
        func = plain_test_op
        chunk_size = np.nan
    elif args.test_type == 'dask':
        test_array = da.ones(shp, chunks=(chunk_size,))
        func = dask_test_op
    elif args.test_type == 'unyt_dask':
        test_array = unyt_dask_array.unyt_from_dask(da.ones(shp, chunks=(chunk_size,)), 'm')
        func = dask_test_op
    return test_array, func, chunk_size

def sanitize_dask_args(args):

    def test_type_to_nan(var):
        if 'dask' not in args.test_type:
            return np.nan
        return var

    ch = test_type_to_nan(args.chunksize)
    nw = test_type_to_nan(args.n_workers)
    nthr = test_type_to_nan(args.threads_per_worker)
    return ch, nw, nthr

def save_results(test_results, test_sizes, args):
    # save results
    df = pd.DataFrame({"elapsed_s": test_results, 'array_size':test_sizes})
    df['testtype'] = args.test_type

    ch, nw, nthr = sanitize_dask_args(args)
    df['chunksize'] = ch
    df['n_workers'] = nw
    df['threads_per_worker'] = nthr
    hdr = os.path.isfile(args.out_fi) is False
    df.to_csv(args.out_fi, mode='a', header= hdr, index=False)
    
if __name__ == "__main__":
    # python test_daskunyt.py - -chunksize 1000 - -n_tests 10 - -out_fi hello.csv np 100000

    argparse.ArgumentParser
    parser = argparse.ArgumentParser(description='Run a unyt-dask')
    parser.add_argument('test_type', type=str, help="one of np, unyt, dask, unyt_dask")
    parser.add_argument('--chunksize', type=int, default=1e6,
                        help='chunksize for dask arrays')
    parser.add_argument('--n_tests', type=int, default=100)
    parser.add_argument('--out_fi', type=str, default='unyt_tests.csv')
    parser.add_argument('--n_workers', type=int, default=0)
    parser.add_argument('--threads_per_worker', type=int, default=0)
    args = parser.parse_args()

    # setup dask client if we're using it
    dask_c = None
    if 'dask' in args.test_type and (args.n_workers or args.threads_per_worker):
        kwargs = {}
        if args.n_workers:
            kwargs["n_workers"] = args.n_workers
        if args.threads_per_worker:
            kwargs["threads_per_worker"] = args.threads_per_worker
        sleep(10) # running this in an external loop, need to make sure the previous async client shutdown has occurred
        dask_c = Client(**kwargs)

    # run the tests    
    size_range = np.logspace(6,9,7).astype(int)
    if 'dask' in args.test_type:
        size_range = np.concatenate([size_range[:-1], np.logspace(9,10,3).astype(int)])
    
    for itest in range(args.n_tests):
        test_results = []
        test_sizes = []
        print(f"    iteration {itest+1} of {args.n_tests}")
        for test_num, test_size in enumerate(size_range):
            print(f"        size test {test_num+1} of {len(size_range)}")
            test_array, func, chunk_size = get_array_and_func(args, test_size)
            elapsed = func(test_array)
            test_results.append(elapsed)
            test_sizes.append(test_size)
        save_results(test_results, test_sizes, args)

    # close client if using
    if dask_c:
        dask_c.close()
        sleep(5) # make sure the async close has time in case we're starting again soon... 
    exit()
