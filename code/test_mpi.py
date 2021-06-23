# run with 
# $ mpirun -np 4 python test_mpi.py
# visualize results with snakeviz/results/testprofile_mpi_MPICOMMNUMBER
import yt
import os
from profiler import ProfileManager, test_info
yt.enable_parallelism()




ds = yt.load_sample("snapshot_033")

# p = ProfileManager('main_mpi')
# p.enable()    
# vals = sp[("PartType0", "Density")]
# p.disable()

# p.dump_stats('results/testprofile_mpi')


ttype = "main_mpi"
sdir = os.path.join(".", "results", ttype)
if os.path.isdir(sdir) is False:
    os.mkdir(sdir)

for test_iter in range(test_info['iterations']):

    p = ProfileManager(ttype)

    sp = ds.sphere(ds.domain_center, 0.5)

    p.enable()    
    vals = sp[("PartType0", "Density")]
    p.disable()

    saveprof = os.path.join(sdir, f"it_{test_iter}.prof")
    p.dump_stats(saveprof)