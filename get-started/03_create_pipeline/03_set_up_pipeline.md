Do parts 1. and 2. of this workflow:
1. Repeat a step that you took in [**Set up the Data**](https://katacoda.com/yetudada/courses/get-started/02_set_up_data) to add `titanic` to `get-started/conf/catalog.yml`{{open}}
2. Move `/03_create_pipeline/data_processing.py`{{open}} into `get-started/src/get_started/pipelines/data_processing/data_processing.py`{{open}}

## Part 1
For the `titanic` dataset, register the `csv` dataset by adding this snippet to `get-started/conf/base/catalog.yml`{{open}} file:

```
titanic:
  type: "pandas.CSVDataSet"
  filepath: "/03_create_pipeline/titanic.csv"
```{{copy}}

## Part 2

The content of `/03_create_pipeline/data_processing.py`{{open}} is:
```
import logging


def extract_title(df):

    logging.info("Extracting the titles from the name column")

    simplify_title = {
        "Capt": "Officer",
        "Col": "Officer",
        "Major": "Officer",
        "Jonkheer": "Royalty",
        "Don": "Royalty",
        "Sir": "Royalty",
        "Dr": "Officer",
        "Rev": "Officer",
        "the Countess": "Royalty",
        "Dona": "Royalty",
        "Mme": "Mrs",
        "Mlle": "Miss",
        "Ms": "Mrs",
        "Mr": "Mr",
        "Mrs": "Mrs",
        "Miss": "Miss",
        "Master": "Master",
        "Lady": "Royalty"
    }

    title = df['Name'].apply(
        lambda full_name: (
            simplify_title[
                # Example: Uruchurtu, Don. Manuel E --> Don
                full_name.split(',')[1].split('.')[0].strip()
            ]
        )
    )

    merged = df.merge(title.to_frame(name='Title'),
                      left_index=True, right_index=True)
    merged['Title'] = merged['Title'].astype('category')

    return merged
```{{copy}}

Move the contents of `/03_create_pipeline/data_processing.py`{{open}} into `get-started/src/get_started/pipelines/data_processing/data_processing.py`{{open}}