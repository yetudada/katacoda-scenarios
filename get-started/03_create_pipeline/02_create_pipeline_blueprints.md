Your [workflow was refactored](https://github.com/FilippoBovo/production-data-science/tree/master/tutorial/d-refactor#refactoring-the-notebook). You will focus on creating a pipeline with `/02_set_up_data/
data_processing.py`{{open}}.

You will create a pipeline template for this pipeline using: `kedro pipeline create "data_processing"`{{execute}}.

The `kedro pipeline create` command creates templates for you to: 
 - Add nodes and the pipeline in `get-started/src/pipelines`{{open}}
 - Register datasets for the pipeline in `get-started/conf/catalog/`{{open}}
 - Populate parameters in `get-started/conf/parameters/`{{open}}
 - Include tests in `get-started/src/tests/pipelines`{{open}}