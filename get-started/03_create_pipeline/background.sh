#!/bin/bash

# Tell users that they must wait until Kedro is installed and configured
echo "Wait until Kedro is installed and configured."

# Install Kedro
pip install "kedro[pandas.CSVDataSet]==0.17.2"

# Create a new Kedro project called "Get Started"
kedro new --config "./03_create_pipeline/config.yml"

# Change to the project directory
cd get-started

# Install project dependencies
kedro install

# Print out done
echo "done"  >> /opt/.backgroundfinished