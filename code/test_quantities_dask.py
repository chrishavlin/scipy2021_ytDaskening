import yt
import os
from profiler import ProfileManager, test_info
from timeit import default_timer as timer


ttype = "dask"
sdir = os.path.join(".", "results", "quantities")
if os.path.isdir(sdir) is False:
    os.mkdir(sdir)


ds = yt.load_sample("snapshot_033")


# raw time measure
p = ProfileManager(ttype)

for test_iter in range(test_info['iterations']):
    times = []
    extra_cols = {'op': []}
    selectors = []

    ad = ds.all_data()
    sp = ds.sphere(ds.domain_center, 0.8)

    t0 = timer()
    _ = ad.quantities.extrema([("PartType0","Density"), ("PartType0","Temperature")])
    t1 = timer()
    times.append(t1 - t0)
    extra_cols['op'].append('extrema')
    selectors.append('all_data')

    t0 = timer()
    _ = sp.quantities.extrema([("PartType0", "Density"), ("PartType0", "Temperature")])
    t1 = timer()
    times.append(t1 - t0)
    extra_cols['op'].append('extrema')
    selectors.append('sphere')

    t0 = timer()
    _ = ad.quantities.total_quantity(("PartType0","Potential"))
    t1 = timer()
    times.append(t1 - t0)
    extra_cols['op'].append('total_quantity')
    selectors.append('all_data')

    t0 = timer()
    _ = sp.quantities.total_quantity(("PartType0", "Potential"))
    t1 = timer()
    times.append(t1 - t0)
    extra_cols['op'].append('total_quantity')
    selectors.append('sphere')

    ad = ds.all_data()
    sp = ds.sphere(ds.domain_center, 0.8) # reset to avoid reading cached

    t0 = timer()
    ad.quantities.weighted_average_quantity([("PartType0","Density"), ("PartType0","Temperature")],("PartType0", "Mass"))
    t1 = timer()
    times.append(t1 - t0)
    extra_cols['op'].append('weighted_average_quantity')
    selectors.append('all_data')

    # t0 = timer()
    # sp.quantities.weighted_average_quantity([("PartType0", "Density"), ("PartType0", "Temperature")],
    #                                         ("PartType0", "Temperature"))
    # t1 = timer()
    # times.append(t1 - t0)
    # extra_cols['op'].append('weighted_average_quantity')
    # selectors.append('sphere')

    t0 = timer()
    ad.quantities.center_of_mass(use_particles=True, particle_type='PartType0')
    t1 = timer()
    times.append(t1 - t0)
    extra_cols['op'].append('center_of_mass')
    selectors.append('all_data')

    # note: bug with sp center of mass  and weigthd averages -- empty chunks probably.

    p.save_rawtimes(sdir, times, selector_string=selectors, extra_cols=extra_cols)
