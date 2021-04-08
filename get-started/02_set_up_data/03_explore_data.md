To check whether Kedro can load the data correctly, open a `kedro ipython` session and run:

```python
titanic = catalog.load("titanic")
titanic.head()
```

The command loads the dataset named `titanic` (as per top-level key in `catalog.yml`) from the underlying filepath
 `./02_set_up_data/titanic.csv` into the variable `titanic`, which is of type `pandas.DataFrame`. The `head` method from
  `pandas` then displays the first five rows of the DataFrame.

When you have finished, close `ipython` session as follows:

```python
exit()
```