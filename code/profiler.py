from git import Repo
import toml
import argparse
import yt 
import os
import pandas as pd
import cProfile

config = toml.load("test_config.toml")
repo = Repo.init(config["ytinfo"]["yt_source_dir"])

test_branches = {
        "dask": "dask_unyt_index_refactor" , 
        "main": "master"
        }

test_types = {'dask': 'profile_dask.py',
              'main_serial': 'profile_main.py', 
              'main_mpi': 'profile_main_mpi.py'}

field_to_read = ("PartType0", "Density")

def load_the_ds():
    return yt.load_sample("snapshot_033")

def profile_selector_read_dask(sel):
    with cProfile.Profile() as pr:
        values = sel[field_to_read].compute()
    return get_df(pr)
    
def profile_selector_read_main(sel):
    with cProfile.Profile() as pr:
        values = sel[field_to_read]
    return get_df(pr)

def particle_io_test_ad(ds, dask_run=True):
    ad = ds.all_data()    
    if dask_run:
        return profile_selector_read_dask(ad)
    else:
        return profile_selector_read_main(ad)

def particle_dask_io_test_sp(ds, dask_run=True):
    sp = ds.sphere(ds.domain_center, 0.5)
    if dask_run:
        return profile_selector_read_dask(sp)
    else:
        return profile_selector_read_main(sp)

def get_df(pr):
    # returns a dataframe with profiline results 
    attrs = ['code','callcount','reccallcount','totaltime','inlinetime','calls']
    rows = []
    for st in pr.getstats():
        rows.append([getattr(st,attr) for attr in attrs])
        
    return pd.DataFrame(rows,columns=attrs)

def run_all(dask_run=True):
    ds = load_the_ds()    
    ad_time = particle_io_test_ad(ds,dask_run=dask_run)
    sp_time = particle_io_test_sp(ds,dask_run=dask_run)
    return [ad_time, sp_time]

if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Run a profiling test')
    
    test_type_help = f"select the test type to run. must be one of {list(test_types.keys())}"
    parser.add_argument('--test_type', type=str, help=f"{test_type_help}")    
    args = parser.parse_args()
    
    test_branch = test_branches[args.test_type]    

    org = repo.remote()
    orgurl = list(org.urls)[0]

    if "chrishavlin/yt.git" not in orgurl:
        print("these tests require a clone of github.com/chrishavlin/yt")
        exit()

    if repo.active_branch.name != test_branch :
        print(f"Please checkout the {test_branch} branch before running this test (re-build should not be necessary)")
        exit()

    if "dask" in args.test_type:
        
        # spin up dask client 
        
        # run the tests
        results = run_all(dask_run=True)
        
    elif "main" in args.test_type:
        if "mpi" in args.test_type:
            yt.enable_parallism()
        results = run_all(dask_run=False)
