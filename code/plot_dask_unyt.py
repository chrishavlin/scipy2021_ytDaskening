import pandas as pd
import matplotlib.pyplot as plt

def plot_select_results(fi):
    df = pd.read_csv(fi)

    # get plain np, unyt results
    bycols = ['testtype', 'array_size']
    df_stats = df.groupby(by=bycols)['elapsed_s'].agg(['mean', 'median', 'min', 'std']).reset_index()
    np_stats = df_stats[df_stats.testtype == 'np']
    unyt_stats = df_stats[df_stats.testtype == 'unyt']

    # get dask, unyt_dask results
    bycols = ['testtype', 'array_size', 'n_workers', 'threads_per_worker']
    df_stats = df.groupby(by=bycols)['elapsed_s'].agg(['mean', 'median', 'min', 'std']).reset_index()

    def get_dasky(df_stats,testtype,n_workers=4, threads_per_worker=1):
        df_test = df_stats[df_stats.testtype == testtype]
        df_test = df_test[df_test.n_workers == n_workers]
        df_test = df_test[df_test.threads_per_worker == threads_per_worker]
        return df_test


    def add_basic(ax, stats, lab, clr, linestyle='-'):
        ax.loglog(stats.array_size, stats['min']*1000, label=lab,color=clr,marker='.',linestyle=linestyle)
        # ax.semilogx(stats.array_size, stats['median']*1000 - 2*stats['std']*1000, label=f"{lab} - 2std", linestyle='--',color=clr,marker='.')
        # ax.semilogx(stats.array_size, stats['median']*1000 + 2*stats['std']*1000, label=f"{lab} + 2std", linestyle='--',color=clr,marker='.')
        # ax.semilogx(stats.array_size, stats['min']*1000, label=f"{lab} min",marker='x', color=clr)


    f,ax = plt.subplots(1)
    add_basic(ax, np_stats, 'np', 'k')
    add_basic(ax, unyt_stats, 'unyt', 'r')

    dask_stats = get_dasky(df_stats, 'dask',n_workers=4, threads_per_worker=1)
    unyt_dask_stats = get_dasky(df_stats, 'unyt_dask',n_workers=4, threads_per_worker=1)
    add_basic(ax, dask_stats, 'unyt_dask (4, 1)', 'b')
    add_basic(ax, unyt_dask_stats, 'dask (4, 1)', 'g')

    dask_stats = get_dasky(df_stats, 'dask',n_workers=6, threads_per_worker=1)
    unyt_dask_stats = get_dasky(df_stats, 'unyt_dask',n_workers=6, threads_per_worker=1)
    add_basic(ax, dask_stats, 'unyt_dask (6, 1)', 'b', linestyle='--')
    add_basic(ax, unyt_dask_stats, 'dask (6, 1)', 'g', linestyle='--')

    ax.set_xlabel('array size')
    ax.set_ylabel('min elapsed time [ms]')
    plt.legend()
    return f, ax

f,ax = plot_select_results('unyt_dask_results.csv')
plt.show()
