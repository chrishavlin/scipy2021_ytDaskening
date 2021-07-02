# setup

The dask functionality for `yt` and `unyt` shown in this poster rely on several branches that are in progress. For reproducibility, the version of the yt branch used for the demonstrating and testing used in this presentation is at [scipy2021_dask](https://github.com/chrishavlin/yt/tree/scipy2021_dask). Additionally the `dask` branch relies on the `unyt` PR [#185](https://github.com/yt-project/unyt/pull/185) branch. 

Both branches must be installed from source to reproduce the notebooks here.

The native yt tests are run using the [scipy2021_main](https://github.com/chrishavlin/yt/tree/scipy2021_main) branch, a frozen copy of the yt development branch from July 1, 2021. 

## notes on this presentation

This SciPy2021 poster was created using Jupypter book, the source repository at [https://github.com/chrishavlin/scipy2021_ytDaskening](https://github.com/chrishavlin/scipy2021_ytDaskening) includes instructions for building and deploying the Jupyter book.