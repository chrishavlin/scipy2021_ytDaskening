#!/bin/bash

command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv np 1000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv unyt 1000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 1 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 1 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 2 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 2 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 1 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 1 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 2 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 2 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 1 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 1 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 2 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 2 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 1 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 1 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 2 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 2 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 1 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 1 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 2 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 2 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 1 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 1 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 2 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 2 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 1 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 1 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 2 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 2 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv np 3162277"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv unyt 3162277"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 1 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 1 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 2 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 2 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 1 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 1 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 2 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 2 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 1 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 1 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 2 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 2 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 1 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 1 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 2 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 2 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 1 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 1 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 2 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 2 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 1 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 1 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 2 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 2 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 1 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 1 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 2 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 2 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv np 10000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv unyt 10000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 1 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 1 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 2 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 2 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 1 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 1 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 2 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 2 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 1 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 1 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 2 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 2 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 1 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 1 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 2 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 2 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 1 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 1 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 2 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 2 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 1 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 1 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 2 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 2 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 1 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 1 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 2 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 2 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv np 31622776"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv unyt 31622776"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 1 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 1 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 2 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 2 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 1 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 1 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 2 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 2 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 1 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 1 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 2 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 2 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 1 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 1 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 2 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 2 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 1 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 1 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 2 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 2 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 1 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 1 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 2 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 2 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 1 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 1 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 2 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 2 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv np 100000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv unyt 100000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 1 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 1 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 2 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 2 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 1 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 1 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 2 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 2 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 1 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 1 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 2 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 2 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 1 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 1 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 2 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 2 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 1 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 1 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 2 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 2 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 1 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 1 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 2 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 2 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 1 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 1 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 2 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 2 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv np 316227766"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv unyt 316227766"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 1 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 1 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 2 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 2 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 1 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 1 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 2 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 2 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 1 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 1 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 2 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 2 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 1 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 1 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 2 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 2 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 1 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 1 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 2 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 2 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 1 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 1 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 2 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 2 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 1 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 1 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 2 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 2 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv np 1000000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv unyt 1000000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 1 --threads_per_worker 1 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 1 --threads_per_worker 1 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 1 --threads_per_worker 2 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 1 --threads_per_worker 2 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 2 --threads_per_worker 1 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 2 --threads_per_worker 1 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 2 --threads_per_worker 2 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 2 --threads_per_worker 2 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 3 --threads_per_worker 1 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 3 --threads_per_worker 1 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 3 --threads_per_worker 2 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 3 --threads_per_worker 2 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 4 --threads_per_worker 1 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 4 --threads_per_worker 1 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 4 --threads_per_worker 2 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 4 --threads_per_worker 2 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 5 --threads_per_worker 1 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 5 --threads_per_worker 1 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 5 --threads_per_worker 2 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 5 --threads_per_worker 2 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 6 --threads_per_worker 1 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 6 --threads_per_worker 1 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 6 --threads_per_worker 2 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 6 --threads_per_worker 2 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 7 --threads_per_worker 1 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 7 --threads_per_worker 1 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 7 --threads_per_worker 2 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 7 --threads_per_worker 2 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv np 1000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv unyt 1000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 1 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 1 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 2 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 2 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 1 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 1 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 2 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 2 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 1 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 1 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 2 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 2 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 1 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 1 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 2 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 2 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 1 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 1 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 2 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 2 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 1 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 1 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 2 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 2 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 1 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 1 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 2 dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 2 unyt_dask 1000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv np 3162277"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv unyt 3162277"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 1 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 1 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 2 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 1 --threads_per_worker 2 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 1 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 1 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 2 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 2 --threads_per_worker 2 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 1 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 1 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 2 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 3 --threads_per_worker 2 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 1 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 1 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 2 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 4 --threads_per_worker 2 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 1 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 1 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 2 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 5 --threads_per_worker 2 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 1 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 1 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 2 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 6 --threads_per_worker 2 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 1 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 1 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 2 dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000 --n_workers 7 --threads_per_worker 2 unyt_dask 3162277"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv np 10000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv unyt 10000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 1 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 1 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 2 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 2 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 1 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 1 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 2 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 2 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 1 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 1 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 2 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 2 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 1 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 1 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 2 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 2 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 1 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 1 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 2 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 2 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 1 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 1 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 2 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 2 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 1 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 1 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 2 dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 2 unyt_dask 10000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv np 31622776"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv unyt 31622776"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 1 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 1 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 2 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 1 --threads_per_worker 2 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 1 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 1 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 2 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 2 --threads_per_worker 2 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 1 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 1 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 2 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 3 --threads_per_worker 2 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 1 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 1 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 2 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 4 --threads_per_worker 2 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 1 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 1 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 2 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 5 --threads_per_worker 2 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 1 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 1 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 2 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 6 --threads_per_worker 2 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 1 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 1 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 2 dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 1000000 --n_workers 7 --threads_per_worker 2 unyt_dask 31622776"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv np 100000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv unyt 100000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 1 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 1 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 2 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 2 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 1 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 1 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 2 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 2 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 1 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 1 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 2 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 2 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 1 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 1 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 2 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 2 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 1 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 1 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 2 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 2 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 1 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 1 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 2 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 2 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 1 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 1 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 2 dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 2 unyt_dask 100000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv np 316227766"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv unyt 316227766"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 1 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 1 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 2 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 1 --threads_per_worker 2 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 1 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 1 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 2 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 2 --threads_per_worker 2 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 1 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 1 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 2 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 3 --threads_per_worker 2 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 1 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 1 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 2 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 4 --threads_per_worker 2 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 1 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 1 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 2 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 5 --threads_per_worker 2 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 1 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 1 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 2 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 6 --threads_per_worker 2 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 1 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 1 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 2 dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 10000000 --n_workers 7 --threads_per_worker 2 unyt_dask 316227766"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv np 1000000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv unyt 1000000000"
echo $command
eval $command
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 1 --threads_per_worker 1 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 1 --threads_per_worker 1 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 1 --threads_per_worker 2 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 1 --threads_per_worker 2 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 2 --threads_per_worker 1 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 2 --threads_per_worker 1 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 2 --threads_per_worker 2 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 2 --threads_per_worker 2 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 3 --threads_per_worker 1 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 3 --threads_per_worker 1 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 3 --threads_per_worker 2 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 3 --threads_per_worker 2 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 4 --threads_per_worker 1 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 4 --threads_per_worker 1 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 4 --threads_per_worker 2 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 4 --threads_per_worker 2 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 5 --threads_per_worker 1 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 5 --threads_per_worker 1 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 5 --threads_per_worker 2 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 5 --threads_per_worker 2 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 6 --threads_per_worker 1 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 6 --threads_per_worker 1 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 6 --threads_per_worker 2 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 6 --threads_per_worker 2 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 7 --threads_per_worker 1 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 7 --threads_per_worker 1 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 7 --threads_per_worker 2 dask 1000000000"
echo $command
eval $command
sleep 5
command="python test_daskunyt.py --n_tests 10 --out_fi unyt_dask_results.csv --chunksize 100000000 --n_workers 7 --threads_per_worker 2 unyt_dask 1000000000"
echo $command
eval $command
sleep 5
