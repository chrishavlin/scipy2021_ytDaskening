# A Daskified yt : using data

daskified `profile` and/or `quantitites`. 


## daskified `derived_quantity` calculations

```python
import yt
ds = yt.load_sample("snapshot_033")
sp = ds.sphere(ds.domain_center, 0.8)
sp.quantities.extrema([("PartType0", "Density"), ("PartType0", "Temperature")])
```

returns the max/min values for each field. 

### direct dask-array approach

Brief code description: easy to write! reduces complexity and lines of code. 

Here we compare execution times for different `derived_quantity` operations between methods and testing conditions (the test type). 

![](images/dask_array_quantities.png)

The `test_id` refers to the following configurations:

| `test_id` | test type | notes |
|-----------|-----------|-------|
| 0 | `dask_multiproc` | 4 workers, 1 thread per worker|
|1| `dask_mpi` | 4 workers
|2| `dask` | no explicit client spinup (defualt `Client`)|
|3| `main_serial` | standard yt |
|4| `main_mpi` | standard yt, 4 workers |


The `dask_` tests use the daskified code branch (link), the `main_` tests use the current `main` branch of yt. 


The above tests group together multiple tests over `sphere` and `all_data` selector objects: 

```
sp = ds.sphere(ds.domain_center, 0.8)
ad = ds.all_data()
```

Of the test operations that are currently function for both these operations, we can additionall compare execution times between the selector objects: 

![](images/dask_array_quantities_sel.png)


From the above comparisons, it is clear that the dask-array approach is generally not performing as well as the native yt approach. The main reason for this, is that the native yt methods were carefully written to optimize chunk iteration. For example, when calculating the extrema for multiple fields, each chunk is read only once during which the data for each field is aggregated and then later reduced to the final extrema values. In the dask-array approach, the task graph includes a read for each field being aggregated. The `weighted_average_quantities` and `center_of_mass` daskified calculations perform well compared to their native yt approaches for the default dask `Client`. More words here... 

### dask-delayed approach

In previous work ([overview](https://hackmd.io/@chavlin/BJDVGiX0P), [detailed notebook](https://github.com/data-exp-lab/yt-dask-experiments/blob/master/notebooks/yt_profiles_with_dask.ipynb)), we compared different methods of calculating a yt profile (a binned statistic) and showed that we actually got the best performance when using a dask delayed workflow that directly uses yt's already optimized algorithm as opposed to a `dask array.map_blocks` implementation. We're currently in the process of repeating the above `derived_quantities` test with a similar delayed work flow approach for calculating derived quantities. 