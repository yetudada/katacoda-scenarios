#!/bin/bash

# Tell users that they must wait until Kedro is installed and configured
echo "Wait until Kedro is installed and configured."

# Install Kedro
pip install kedro

# Create a new Kedro project called "Get Started"
kedro new --config "./02_set_up_data/config.yml"

# Change the project directory
cd get-started

# Print out done
echo "done"  >> /opt/.backgroundfinished