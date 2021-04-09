Part 4. of this workflow is to register the pipeline in `get-started/src/get_started/pipeline_registry.py`{{open}} so
 that you can call it from the CLI. 

Erase the contents of this file and add the following to `get-started/src/get_started/pipeline_registry.py`{{open}}:
```
from typing import Dict

from kedro.pipeline import Pipeline

from get_started.pipelines import data_processing as dp


def register_pipelines() -> Dict[str, Pipeline]:

        data_processing_pipeline = dp.create_pipeline()

        return {
            "__default__": data_processing_pipeline,
            "dp": data_processing_pipeline,
        }
```{{copy}}

You are now ready to do your first pipeline run with: `kedro run`{{execute}}.