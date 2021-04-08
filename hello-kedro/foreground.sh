#!/bin/bash

echo "Waiting to install Kedro"

# Wait until background.sh is finished
while [ ! -f /opt/.backgroundfinished ]; do sleep 2; done

kedro info