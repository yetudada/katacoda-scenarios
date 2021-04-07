#!/bin/bash

# Tell users that they must wait until Kedro is installed and configured
echo "Please wait until Kedro is installed and configured."

# Install Kedro
pip install kedro

# Show Kedro version
kedro info

# Create a new Kedro project called "Get Started"
kedro new --config config.yml

# Change the project directory
cd get-started

# Install project dependencies
kedro install

# Print out done
echo "done"

# Clear screen
clear

