import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

csvfi = "./results/quantities/raw_times.csv"


df = pd.read_csv(csvfi)

# need to collapse the mpi runs across rank (dask_mpi does that behind the scenes)
df_main_mpi = df[df.testtype=='main_mpi']
df_main_mpi[df_main_mpi.MPI_rank == 1.]
df = df[df.testtype!='main_mpi']
df = pd.concat([df, df_main_mpi])


testtype_id = np.arange(0,len(pd.unique(df.testtype)))
test_dict = {testtype:testid for testtype, testid in zip(pd.unique(df.testtype), testtype_id)}

df['test_id'] = df['testtype'].apply(lambda x: test_dict[x])

ops = pd.unique(df['op'])
fig, axes = plt.subplots(nrows=2, ncols=2)
for iop, op in enumerate(ops):
    df_temp = df[df.op == op]

    if iop > 1:
        row = 1
        col = iop - 2
    else:
        row = 0
        col = iop

    the_axes = axes[row, col]
    df_temp.boxplot(column='elapsed_s',by='test_id', ax=the_axes)


    the_axes.set_title(op)
    if col ==0:
        the_axes.set_ylabel('compute time [s]')
    fig = the_axes.get_figure()
    fig.suptitle("")

plt.tight_layout()

ops = pd.unique(['extrema', 'total_quantity'])
fig, axes = plt.subplots(nrows=2, ncols=2)

for col, selector in enumerate(pd.unique(df['selector'])):
    for row, op in enumerate(ops):
        df_temp = df[(df.op == op) & (df.selector == selector)]

        the_axes = axes[row, col]
        df_temp.boxplot(column='elapsed_s',by='test_id', ax=the_axes)

        the_axes.set_title(op + ',' + selector)
        if col ==0:
            the_axes.set_ylabel('compute time [s]')
        fig = the_axes.get_figure()
        fig.suptitle('')


plt.tight_layout()


print(" ")
print("| test_id | test type | notes |")
print("|-----------|-----------|-------|")
for test, testid in test_dict.items():
    print(f"| {testid} | {test}| |")

plt.show()