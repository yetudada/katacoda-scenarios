The `titanic` dataset is a `csv`. You can use Kedro's `pandas.CSVDataSet` to interact with this dataset by adding
 this requirement to the project's dependencies. 

To **update** the project's dependencies, you should modify `get-started/src/requirements.txt`{{open}} to add the
 following. 

`kedro[pandas.CSVDataSet]==0.17.2`{{copy}}

Then, install all project dependencies with: `kedro install`{{execute}}