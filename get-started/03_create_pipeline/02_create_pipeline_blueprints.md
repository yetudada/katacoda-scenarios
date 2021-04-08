We realise that our workflow will require two stages:
- Data processing
- The logistic regression

Kedro has helper commands for creating the pipeline templates.

Run `kedro pipeline create "data_processing"`{{execute}}

And `kedro pipeline create "modelling"`{{execute}}