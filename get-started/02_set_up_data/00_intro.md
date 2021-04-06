In this section, we discuss the data set-up phase, which is the second part of the [standard development workflow](https://kedro.readthedocs.io/en/stable/03_tutorial/01_spaceflights_tutorial.html#kedro-project-development-workflow). It assumes a Kedro project called "Get Started" has already been created.

The steps are as follows:

* Add datasets to your `data/` folder, according to [data engineering convention](https://kedro.readthedocs.io/en/stable/12_faq/01_faq.html#what-is-data-engineering-convention)
* Install dependencies-related to the datasets
* Register the datasets with the Data Catalog in `conf/base/catalog.yml`, which is the registry of all data sources available for use by the project. This ensures that your code is reproducible when it references datasets in different locations and/or environments.

You can find further information about [the Data Catalog](https://kedro.readthedocs.io/en/stable/05_data/01_data_catalog.html) in specific documentation covering advanced usage.