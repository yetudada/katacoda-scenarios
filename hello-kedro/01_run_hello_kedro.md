Have a look at the `hello-kedro/hello_kedro.py`{{open}} file as we walk through Kedro concepts. You will be
 introduced to a:
 - Node
 - Pipeline
 - DataCatalog
 - Runner

The file is executable by running `python "hello-kedro/hello_kedro.py"`{{execute}} in the terminal. You should see `{'my_message': 'Hello Kedro!'}` printed to the console.

## Node

A `node` is a Kedro concept. It is a wrapper for a Python function that names the inputs and outputs of that function. It is the building block of a pipeline. Nodes can be linked when the output of one node is the input of another.

Here, the `return_greeting` function is wrapped by a node called `return_greeting_node`, which has no inputs, and
 names a single output (`my_salutation`).

The `join_statements` function is wrapped by a node called `join_statements_node`, which names a single input
 (`my_salutation`) and a single output (`my_message`).

> _Note:_ `my_salutation` is the output of `return_greeting_node` and also the input of `join_statements_node`.

## Pipeline

A pipeline organises the dependencies and execution order of a collection of nodes, and connects inputs and outputs while keeping your code modular. The pipeline determines the node execution order by resolving dependencies and does *not* necessarily run the nodes in the order in which they are passed in.

In this example the pipeline executes `return_greeting_node` before it executes `join_statements_node`.

## DataCatalog

A `DataCatalog` is a Kedro concept. It is the registry of all data sources that the project can use. It maps the names of node inputs and outputs as keys in a `DataSet`, which is a Kedro class that can be specialised for different types of data storage. Kedro uses a `MemoryDataSet` for data that is simply stored in-memory.

Kedro provides a [number of different built-in datasets](https://kedro.readthedocs.io/en/stable/kedro.extras.datasets.html#data-sets) for different file types and file systems so you don’t have to write the logic for reading/writing data.

## Runner

The Runner is an object that runs the pipeline. Kedro resolves the order in which the nodes are executed:

1.  Kedro first executes `return_greeting_node`. This runs `return_greeting`, which takes no input but outputs the string "Hello".
2.  The output string is stored in the `MemoryDataSet` named `my_salutation`.
3.  Kedro then executes the second node, `join_statements_node`. This loads the `my_salutation` dataset and injects it into the `join_statements` function.
4.  The function joins the input salutation with "Kedro!" to form the output string "Hello Kedro!"
5.  The output of the pipeline is returned in a dictionary with key `my_message`.
