from git import Repo
import toml
from mpi4py import MPI
import yt 
import os
import pandas as pd
import cProfile
import numpy as np

test_branches = {
        "dask": "dask_unyt_index_refactor" ,  # rename to scipy2021_dask
        "dask_multiproc": "dask_unyt_index_refactor",
        "dask_mpi": "dask_unyt_index_refactor",
        "main_serial": "master",  # rename to scipy2021_main
        "main_mpi": "master",
        }

test_info = {
    "iterations": 50
}

class ProfileManager(cProfile.Profile):
    def __init__(self, testtype, configfi="test_config.toml", nproc=1, nthr=1, comm=MPI.COMM_WORLD, *args, **kwargs):
        """ 
        a subclass of cProfile.Profile that checks for the proper yt source branch for a 
        given test type. 
        """
        super().__init__(*args, **kwargs)

        self.testtype = testtype
        self.n_workers = nproc
        self.threads_per_worker = nthr
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

    def save_rawtimes(self, savedir, elapsed_s, selector_string, comm=MPI.COMM_WORLD):
        df = pd.DataFrame({"elapsed_s": elapsed_s})
        df['testtype'] = self.testtype
        df['selector'] = selector_string
        df['n_workers'] = self.n_workers
        if 'mpi' in self.testtype:
            df['MPI_rank'] = comm.rank
        else:
            df['MPI_rank'] = np.nan
        df['threads_per_worker'] = self.threads_per_worker

        savefi = os.path.join(savedir, 'raw_times.csv')
        hdr = os.path.isfile(savefi) is False
        df.to_csv(savefi, mode='a', header=hdr, index=False)
