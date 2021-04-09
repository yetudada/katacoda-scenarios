Part 5. of this workflow is to ask Kedro to persist `preprocessed_titanic` using the Data Catalog by adding an entry
 to save `preprocessed_titanic` in `get-started/conf/catalog.yml`{{open}}.

In the previous section you would have noticed that you could accomplish a `kedro run`{{execute}} without saving
 `preprocessed_titanic`. You will now tell Kedro where to save this file for you. 

To save the `titanic` dataset, register the `csv` dataset by adding this snippet to `get-started/conf/base/catalog.yml`{{open}} file:

```
preprocessed_titanic:
  type: "pandas.CSVDataSet"
  filepath: "/root/03_create_pipeline/preprocessed_titanic.csv"
```{{copy}}

Do another `kedro run` and you will see `processed_titanic.csv` created in the `/03_create_pipeline` folder.