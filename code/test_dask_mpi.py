# run with
# mpirun -np 4 python test_dask_mpi.py

from dask_mpi import initialize
from dask.distributed import Client
import yt
import os
import time
from profiler import ProfileManager, test_info
from timeit import default_timer as timer

if __name__ == "__main__":
    initialize()
    c = Client()

    ds = yt.load_sample("snapshot_033")

    ttype = "dask_mpi"
    sdir = os.path.join(".", "results", ttype)
    if os.path.isdir(sdir) is False:
        os.mkdir(sdir)

    for test_iter in range(test_info['iterations']):
        p = ProfileManager(ttype)
        sp = ds.sphere(ds.domain_center, 0.5)

        p.enable()
        vals = sp[("PartType0", "Density")].compute()
        p.disable()

        saveprof = os.path.join(sdir, f"it_{test_iter}.prof")
        p.dump_stats(saveprof)

    # raw time measure
    p = ProfileManager(ttype, nproc=4)
    times = []
    for test_iter in range(test_info['iterations']):
        sp = ds.sphere(ds.domain_center, 0.5)

        t0 = timer()
        vals = sp[("PartType0", "Density")]
        t1 = timer()
        times.append(t1 - t0)

    p.save_rawtimes("results", times, "sphere")