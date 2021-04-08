Register the [`titanic`](https://github.com/FilippoBovo/production-data-science/tree/master/tutorial/a-setup/exploration/data) dataset so it can be loaded by Kedro. All Kedro projects have a `get-started/conf/base/catalog.yml`{{open}} file, and you register each dataset by adding a named entry into the `.yml` file.

Kedro supports a number of different data types, and those supported can be found in the API documentation. Kedro uses [`fsspec`](https://kedro.readthedocs.io/en/stable/05_data/01_data_catalog.html#specifying-the-location-of-the-dataset) to read data from a variety of data stores including local file systems, network file systems, cloud object stores and HDFS.

For the [`titanic`](https://github.com/FilippoBovo/production-data-science/tree/master/tutorial/a-setup/exploration/data) dataset, register the `csv` dataset by adding this snippet to `get-started/conf/base/catalog.yml`{{open}} file:

```
titanic:
  type: "pandas.CSVDataSet"
  filepath: "/root/02_set_up_data/titanic.csv"
```{{copy}}