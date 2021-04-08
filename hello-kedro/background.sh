#!/bin/bash

# Tell users that they must wait until Kedro is installed and configured
echo "Wait until Kedro is installed and configured."

# Install Kedro and pandas
pip install kedro==0.17.2

# Print out done
echo "done"  >> /opt/.backgroundfinished