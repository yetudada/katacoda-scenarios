# Install project dependencies

Specifying a project’s dependencies in Kedro makes it easier for others to run your project; it avoids version conflicts by use of the same Python packages.

The generic project template bundles some typical dependencies, in `src/requirements.txt`{{open}}. Here’s a typical
 example, although you may find that the version numbers are slightly different depending on the version of Kedro that you are using:

```
black==v19.10b0 # Used for formatting code with `kedro lint`
flake8>=3.7.9, <4.0 # Used for linting code with `kedro lint`
ipython==7.0 # Used for an IPython session with `kedro ipython`
isort>=4.3.21, <5.0 # Used for linting code with `kedro lint`
jupyter~=1.0 # Used to open a Kedro-session in Jupyter Notebook & Lab
jupyter_client>=5.1.0, <7.0 # Used to open a Kedro-session in Jupyter Notebook & Lab
jupyterlab==0.31.1 # Used to open a Kedro-session in Jupyter Lab
kedro==0.17.2
nbstripout==0.3.3 # Strips the output of a Jupyter Notebook and writes the outputless version to the original file
pytest-cov~=2.5 # Produces test coverage reports
pytest-mock>=1.7.1,<2.0 # Wrapper around the mock package for easier use with pytest
pytest~=6.1.2 # Testing framework for Python code
wheel==0.32.2 # The reference implementation of the Python wheel packaging standard
```

To install the project-specific dependencies, navigate to the root directory of the project and run:

`kedro install`{{execute}}