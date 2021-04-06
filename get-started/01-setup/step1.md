# Install Kedro

To install Kedro from the Python Package Index (PyPI) simply run:

`pip install kedro`{{execute}}

>_Note:_ It is also possible to install Kedro using `conda`, as follows, but we recommend using `pip` at this point to eliminate any potential dependency issues:


```bash
conda install -c conda-forge kedro
```

Both `pip` and `conda` install the core Kedro module, which includes the CLI tool, project template, pipeline abstraction, framework, and support for configuration.

## Verify a successful installation

To check that Kedro is installed:

`kedro info`{{execute}}