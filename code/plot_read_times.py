import pandas as pd
import matplotlib.pyplot as plt

csvfi = "./code/results/raw_times.csv"


df = pd.read_csv(csvfi)

# need to collapse the mpi runs across rank (dask_mpi does that behind the scenes)
df_main_mpi = df[df.testtype=='main_mpi']
df_main_mpi[df_main_mpi.MPI_rank == 1.]
df = df[df.testtype!='main_mpi']
df = pd.concat([df, df_main_mpi])

df.boxplot(column='elapsed_s',by='testtype')
# df_grpd = df.groupby(by='testtype')['elapsed_s'].agg(['mean','median','std','min','count']).reset_index()
