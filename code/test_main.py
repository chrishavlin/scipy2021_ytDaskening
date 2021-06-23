# run with 
# python test_main.py
# visualize results with snakeviz/results/testprofile_main
import yt
import os
from profiler import ProfileManager, test_info


ds = yt.load_sample("snapshot_033")


ttype = "main_serial"
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
