The `data_processing` pipeline needs to:
 - Load the `titanic` dataset from `get-started/conf/catalog.yml`{{open}}
 - Extract titles using `extract_title` from `/02_set_up_data/
data_processing.py`{{open}}
 - Return and persist a dataframe called `preprocessed_titanic`

To do this, we need to: 
1. Repeat a step that you took in [**Set up the Data**](https://katacoda.com/yetudada/courses/get-started
/02_set_up_data) to add `titanic` to `get-started/conf/catalog.yml`{{open}}
2. Move `data_processing.py` into `get-started/get_started/src/pipelines/data_processing/`
3. Create a pipeline in `get-started/get_started/src/pipelines/data_processing/pipeline.py`{{open}}
4. Register the pipeline in `get-started/get_started/src/pipeline_registry.py`{{open}}
5. Ask Kedro to persist `preprocessed_titanic` using the Data Catalog by adding an entry to save `preprocessed_titanic
` in `get-started/conf/catalog.yml`{{open}}