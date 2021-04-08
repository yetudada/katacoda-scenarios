#!/bin/bash

echo "Waiting to complete"

# Wait until background.sh is finished
while [ ! -f /opt/.backgroundfinished ]; do sleep 2; done

kedro info

echo "done"