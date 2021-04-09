You can do Part 1. and Part 2. of this workflow:
1. Repeat a step that you took in [**Set up the Data**](https://katacoda.com/yetudada/courses/get-started
/02_set_up_data) to add `titanic` to `get-started/conf/catalog.yml`{{open}}
2. Move `data_processing.py` into `get-started/get_started/src/pipelines/data_processing/`

For the `titanic` dataset, register the `csv` dataset by adding this snippet to `get-started/conf/base/catalog.yml`{{open}} file:

```
titanic:
  type: "pandas.CSVDataSet"
  filepath: "/root/02_set_up_data/titanic.csv"
```{{copy}}

To setup `data_processing.py` in `get-started/get_started/src/pipelines/data_processing/data_processing.py`