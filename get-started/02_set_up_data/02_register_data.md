You now need to register the datasets so they can be loaded by Kedro. All Kedro projects have a `get-started/conf
/base/catalog.yml`{{open}} file, and you register each dataset by adding a named entry into the `.yml` file.

Kedro supports a number of different data types, and those supported can be found in the API documentation. Kedro uses [`fssspec`](https://filesystem-spec.readthedocs.io/en/latest/) to read data from a variety of data stores including local file systems, network file systems, cloud object stores and HDFS.

For the [`titanic`](https://github.com/FilippoBovo/production-data-science/tree/master/tutorial/a-setup/exploration/data) dataset, register the `csv` dataset by adding this snippet to the end of the `conf/base/catalog.yml` file:

```yaml
titanic:
  type: pandas.CSVDataSet
  filepath: ./02_set_up_data/titanic.csv
```