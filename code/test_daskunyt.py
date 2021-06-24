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

def get_array_and_func(args):

    chunk_size = args.chunksize
    shp = (int(args.array_size),)

    plain_numpy = np.ones(shp)
    plain_unyt = unyt_array(plain_numpy, 'm')
    plain_dask = da.ones(shp, chunks=(chunk_size,))
    unyt_dask = unyt_dask_array.unyt_from_dask(plain_dask, 'm')

    if args.test_type == 'np':
        test_array = plain_numpy
        func = plain_test_op
        chunk_size = np.nan
    elif args.test_type == 'unyt':
        test_array = plain_unyt
        func = plain_test_op
        chunk_size = np.nan
    elif args.test_type == 'dask':
        test_array = plain_dask
        func = dask_test_op
    elif args.test_type == 'unyt_dask':
        test_array = unyt_dask
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

if __name__ == "__main__":
    # python test_daskunyt.py - -chunksize 1000 - -n_tests 10 - -out_fi hello.csv np 100000

    argparse.ArgumentParser
    parser = argparse.ArgumentParser(description='Run a unyt-dask')
    parser.add_argument('test_type', type=str, help="one of np, unyt, dask, unyt_dask")
    parser.add_argument('array_size', type=int, help='array size')
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
        dask_c = Client(threads_per_worker = 2, n_workers = 2)

    # setup arrays and the function to call
    test_array, func, chunk_size = get_array_and_func(args)

    # run the tests
    test_results = []
    for itest in range(args.n_tests):
        elapsed = func(test_array)
        test_results.append(elapsed)



    # save results
    df = pd.DataFrame({"elapsed_s": test_results})
    df['testtype'] = args.test_type
    df['array_size'] = args.array_size

    ch, nw, nthr = sanitize_dask_args(args)
    df['chunksize'] = ch
    df['n_workers'] = nw
    df['threads_per_worker'] = nthr
    hdr = os.path.isfile(args.out_fi) is False
    df.to_csv(args.out_fi, mode='a', header= hdr, index=False)

    if dask_c:
        dask_c.close()
        sleep(5)
    exit()


