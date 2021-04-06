#!/bin/bash

echo "This background script sets up your Kedro project"

pip install kedro

kedro new --config config.yml

kedro install

echo "done" >> /opt/.backgroundfinished