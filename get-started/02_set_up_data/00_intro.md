We discuss data set-up phase, which is the second part of the [standard development workflow](https://kedro.readthedocs.io/en/stable/03_tutorial/01_spaceflights_tutorial.html#kedro-project-development-workflow). 

We assume that all steps in [install and setup Kedro](https://katacoda.com/yetudada/courses/get-started/01_set_up_project) have been completed.

You will focus on:

- Installing dependencies-related to the [`titanic`](https://github.com/FilippoBovo/production-data-science/tree/master/tutorial/a-setup/exploration/data) dataset
- Registering the [`titanic`](https://github.com/FilippoBovo/production-data-science/tree/master/tutorial/a-setup/exploration/data) dataset in the Data Catalog in `conf/base/catalog.yml`, which is the registry of all data
 sources available for use by the project. 
- Exploring the data using an iPython session