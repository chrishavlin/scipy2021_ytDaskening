# run with 
# python test_main.py
# visualize results with snakeviz/results/testprofile_main
import warnings
warnings.filterwarnings("ignore")  # avoiding the ambiguous field deprecieation warnings for this frontend.

import yt
import os
from profiler import ProfileManager, test_info
from timeit import default_timer as timer

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




# raw time measure
p = ProfileManager(ttype)
times = []
for test_iter in range(test_info['iterations']):
    sp = ds.sphere(ds.domain_center, 0.5)

    t0 = timer()
    vals = sp[("PartType0", "Density")]
    t1 = timer()
    times.append(t1 - t0)

p.save_rawtimes("results", times, "sphere")