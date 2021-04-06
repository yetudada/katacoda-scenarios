# Create a new project

Once you have [installed Kedro](./02_install.md), you can create a new, empty project by answering a series of questions, or by using settings recorded in a configuration file.

If you want to create a Kedro project that is populated with some template or example code, you can use Kedro starters by specifying the `--starter` flag. Read the guide to [creating new projects with Kedro Starters](./06_starters.md) for more information.

## Create a new project interactively

Create a new project in your current working directory:

`kedro new`{{execute}}

You will be asked to enter each of the following variables in turn. Once you have entered text for the first option (the project's name), you will be offered a default choice for the other options:

 - **Project name:** A human-readable name for your new project e.g. "Get Started"
 - **Repo name:** A name for the folder that holds your project e.g. "get-started"
 - **Python package:** A name for the Python package name in your project (short, all-lowercase) e.g. "get_started"
 
The output lists the directory in which to find the project.