We will need `pandas` to explore our data and should add this requirement to the project's dependencies. 

To **update** the project's dependencies, you should modify `get-started/src/requirements.in`{{open}} to add the
 following. 

```text
pandas==1.2.3
```

Then, re-run `kedro install` with a flag telling Kedro to recompile the requirements:

```bash
kedro install --build-reqs
```