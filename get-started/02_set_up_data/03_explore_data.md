To check whether Kedro can load the data correctly, open a `kedro ipython`{{execute}} session and run:

`titanic = catalog.load("titanic")`{{execute}}

You can view the first five rows of this dataset with: `titanic.head()`{{execute}}

> _Note:_ The command loads the dataset named `titanic` (as per top-level key in `get-started/conf/base/catalog.yml`{{open}}) from the underlying filepath `/root/02_set_up_data/titanic.csv` into the variable `titanic`, which is of type `pandas.DataFrame`. The `head` method from `pandas` then displays the first five rows of the DataFrame.

When you have finished, close the `ipython` session as follows:

`exit()`{{execute}}

_Note:_ You use `kedro ipython` in this example but you can use `kedro jupyter notebook` to explore and profile
 datasets.