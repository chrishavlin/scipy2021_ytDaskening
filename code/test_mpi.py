# run with 
# $ mpirun -np 4 python test_mpi.py
import yt
yt.enable_parallelism()

ds = yt.load("RD0035/RedshiftOutput0035")
v, c = ds.find_max("density")
print(v, c)
