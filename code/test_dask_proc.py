# run with 
# python test_main.py
# visualize results with snakeviz/results/testprofile_main
import yt
import os
import time
from profiler import ProfileManager, test_info


if __name__ == "__main__":
    c = yt.utilities.parallel_tools.dask_helper.ClientContainer()
    c.start_client(n_workers = 4)

    # ip = c.client.__repr__().split("'")[1].replace("inproc")
    # print(c.client)

    # c.client.__repr__()
    # input("Press Enter to continue...")

    ds = yt.load_sample("snapshot_033")


    ttype = "dask_multiproc"
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
