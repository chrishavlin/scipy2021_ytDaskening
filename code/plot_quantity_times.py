import pandas as pd
import matplotlib.pyplot as plt

csvfi = "./results/quantities/raw_times.csv"


df = pd.read_csv(csvfi)

# need to collapse the mpi runs across rank (dask_mpi does that behind the scenes)
df_main_mpi = df[df.testtype=='main_mpi']
df_main_mpi[df_main_mpi.MPI_rank == 1.]
df = df[df.testtype!='main_mpi']
df = pd.concat([df, df_main_mpi])


for op in pd.unique(df['op']):
    df_temp = df[df.op == op]
    df_temp.boxplot(column='elapsed_s',by='testtype')
    plt.title(op)
    plt.ylabel('compute time [s]')

plt.show()
# df_grpd = df.groupby(by='testtype')['elapsed_s'].agg(['mean','median','std','min','count']).reset_index()
