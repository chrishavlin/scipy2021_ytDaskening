from git import Repo
import toml
from mpi4py import MPI
import yt 
import os
import pandas as pd
import cProfile

test_branches = {
        "dask": "dask_unyt_index_refactor" ,  # rename to scipy2021_dask
        "dask_multiproc": "dask_unyt_index_refactor",
        "dask_mpi": "dask_unyt_index_refactor",
        "main_serial": "master",  # rename to scipy2021_main
        "main_mpi": "master",
        }

test_info = {
    "iterations": 10
}

class ProfileManager(cProfile.Profile):
    def __init__(self, testtype, configfi="test_config.toml", comm=MPI.COMM_WORLD, *args, **kwargs):
        """ 
        a subclass of cProfile.Profile that checks for the proper yt source branch for a 
        given test type. 
        """
        super().__init__(*args, **kwargs)

        if testtype not in test_branches.keys():
            raise ValueError(f"must supply testtype in {list(test_branches.keys())}")
        self.required_branch = test_branches[testtype]

        if comm.rank == 0:
            # only validate on one process.
            self.config = toml.load(configfi)
            self.init_repo()    
            self.validate_branch()
        self.mpi_rank = comm.rank

    def init_repo(self):
        self.repo = Repo.init(self.config["ytinfo"]["yt_source_dir"])
        org = self.repo.remote()
        orgurl = list(org.urls)[0]

        if "chrishavlin/yt.git" not in orgurl:
            raise ValueError("these tests require a clone of github.com/chrishavlin/yt")
    
    def validate_branch(self):
        if self.repo.active_branch.name != self.required_branch :
            tb = self.required_branch
            raise ValueError(f"Please checkout the {tb} branch before running this test (re-build should not be necessary)")        

    def dump_stats(self, file):
        fnme = file.replace('.prof',f"_p_{self.mpi_rank}.prof")        
        super().dump_stats(fnme)
