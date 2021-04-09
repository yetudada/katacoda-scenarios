Part 3. of this workflow is to create a pipeline in `get-started/src/get_started/pipelines/data_processing/pipeline.py
`{{open}}.

Erase the contents of this file and add the following to `get-started/src/get_started/pipelines/data_processing/pipeline.py
`{{open}}:
```
from kedro.pipeline import Pipeline, node

from .data_processing import extract_title

def create_pipeline(**kwargs):
    return Pipeline(
        [
            node(
                func=extract_title,
                inputs="titanic",
                outputs="preprocessed_titanic",
            )
        ]
    )
```{{copy}}

This workflow makes a pipeline:
 - Load the `titanic` dataset from `get-started/conf/catalog.yml`
 - Extract titles using `extract_title` from `get-started/src/get_started/pipelines/data_processing/data_processing.py`{{open}}
 - Return and persist a dataframe called `preprocessed_titanic`