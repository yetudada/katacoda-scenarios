#!/bin/bash

# Tell users that they must wait until Kedro is installed and configured
echo "Wait until Kedro is installed and configured."

# Install Kedro and pandas
pip install kedro==0.17.2 && pip install pandas==1.2.3

# Create a new Kedro project called "Get Started"
kedro new --config "./02_set_up_data/config.yml"

## Change to the project directory
cd get-started

## Install project dependencies
kedro install

# Print out done
echo "done"  >> /opt/.backgroundfinished