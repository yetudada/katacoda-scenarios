While exploring the data, you realise that you would like to setup a logistic regression pipeline. We now need to add `scikit-learn` to the project's dependencies. 
This is a slightly different process from the initial change we made early in the previous tutorial.

To **update** the project's dependencies, you should modify `get-started/src/requirements.in`{{open}} to add the
 following. Note that you do not need to update `get-started/src/requirements.txt` as you did previously in the tutorial before you built the project's requirements with `kedro build-reqs`.

`scikit-learn==0.23.1`{{copy}}

Then, re-run `kedro install` with a flag telling Kedro to recompile the requirements:

`kedro install --build-reqs`{{execute}}

You can find out more about [how to work with project dependencies](https://kedro.readthedocs.io/en/stable/04_kedro_project_setup/01_dependencies.html) in the Kedro project documentation.