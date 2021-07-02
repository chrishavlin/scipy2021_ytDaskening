## On the Daskening of yt

This is the repository contains the jupyter-book source of the Scipy 2021 presentation, "On the Daskening of yt" by Havlin, Munk, Kowalik and Turk. 

Visit the rendered page at [chrishavlin.github.io/scipy2021](https://chrishavlin.github.io/scipy2021).

### short summary 

The yt package provides a powerful suite of analysis and visualization tools for the physical sciences. In addition to expanding yt into a more domain-agnostic tool, a number of ongoing efforts seek to better leverage advancements from across the Python open source ecosystem within yt's infrastructure. In this work, we present our efforts to incorporate Dask within the yt codebase to handle both lazy serial and parallel workflows, improving both the developer and end-user experience. We compare both user experience and performance between yt's existing serial and MPI-parallel processing methods and their "Daskified" counterparts.

### abstract 

The yt package is a cross-domain tool for visualization and analysis of data. While still used primarily within the computational astrophysics community, a number of recent efforts have focused on transforming yt into a more domain agnostic tool. Part of the effort to expand the yt platform includes leveraging recent advancements from across the open source python ecosystem. This presentation focuses on advancements in using Dask within the yt framework to improve both serial and parallel workflows.

While yt already supports lazy serial and MPI-parallel computations, refactoring yt to use Dask has a number of potential benefits. For the yt user, an underlying Dask framework allows for parallel computation with minimal setup and a consistent experience across machines from laptops to HPC environments. It also allows for easier custom parallel workflows, for example by returning Dask arrays rather than MPI iterable objects (while still operating in MPI environments with dask-mpi) from which a user can use more array-like manipulations while still working in parallel. For the developer, a Dask refactor will simplify the codebase and improve the development process, particularly for implementing new parallel algorithms.

At present, yt handles on-disk datasets using a chunk iterator to access and process ranges of data from across datafiles. In both serial and parallel applications, data selection and processing operations are applied to individual chunks of data and the results are then aggregated across chunks, allowing yt to process datasets that exceed a machine's available memory. When operating in parallel, yt uses MPI to distribute chunk operations to workers and gather results. While effective, yt's chunking infrastructure can be remapped to delayed Dask operations in a relatively straightforward manner by constructing either delayed Dask arrays or more general delayed workflows from the chunk iterators. 

In this presentation, we will show our latest efforts to leverage Dask within the yt framework, building off of previous reports on Dask-yt prototyping shown at RHytHM2020 ([Leveraging Dask in yt](https://youtu.be/3GLbEBgpaK4)) and the yt-blog ([Dask and yt: a pre-YTEP](https://yt-project.github.io/blog/posts/dask_yt_pytep/)). These reports described a number of separate experimental prototypes including a "Daskified" particle reader, a binned-statistic calculation using yt's already-optimized parallel statistic methods with Dask delayed arrays and unyt arrays with Dask support. In this presentation, we will present a more fully integrated prototype directly within the yt API. We will show comparisons in use and performance between the existing chunk framework and the new Daskified versions for both single-processor serial and parallel computations. In addition to showing results specific to yt, we will touch on the complexities of refactoring an existing tool to use Dask.

## Repository notes

`./code` contains much of the code referenced in the presentation. 

`./daskening_yt` contains the jupyter-book source. The rendered page is built following the jupyter-book [docs](https://jupyterbook.org/start/build.html): 

```
$ jupyter-book build daskening_yt/

```

This should result in a build directory, `daskening_yt/_build` from which the `html` rendering can be viewed by opening `daskening_yt/_build/html/index.html` in a browser. For the Scipy presentation, the contents the `html` folder were copied to the `static/scipy2021` folder of `https://github.com/chrishavlin/chrishavlin.github.io` (a [Hugo](https://gohugo.io/) site). 
