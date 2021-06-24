import numpy as np


outfile = "unyt_dask_results.csv"

n_tests = 10 # tests per iteration
n_iters = 5 # number of iterations


# chunksize= 10**(np.floor(np.log10(test_sizes)) - 1).astype(int) # always 10 chunks per array
chsize = int(1e7)

# will test every permutation of the following
nproctests = [4,] #np.arange(1, 8)
nthreadtests = [1,] #, 2]

# our list of commands to run
cmnds = []
cmnds.append("#!/bin/bash")
cmnds.append("")


def add_cmd(cmd):
    # adds the command to our command list with both an echo and eval
    cmnds.append('command="' + cmd + '"')
    cmnds.append('echo $command')
    cmnds.append('eval $command')


base = f"python test_daskunyt.py --n_tests {n_tests} --out_fi {outfile}"

for _ in range(n_iters):

    add_cmd(f"{base} np")
    add_cmd(f"{base} unyt")

    for nprocs in nproctests:
        for nthreads in nthreadtests:
            dask_args = f"--chunksize {chsize} --n_workers {nprocs} --threads_per_worker {nthreads}"
            add_cmd(f"{base} {dask_args} dask")
            cmnds.append("sleep 5")
            add_cmd(f"{base} {dask_args} unyt_dask")
            cmnds.append("sleep 5")

# write out those commands to a bash script
with open('run_tests.sh','w') as f:
    for cmd in cmnds:
        f.write(cmd + "\n")

print("commands generated! run:")
print("chmod u+x run_tests.sh")
print("./run_tests.sh")
