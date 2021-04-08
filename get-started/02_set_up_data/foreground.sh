#!/bin/bash

echo "Waiting to complete Kedro project setup"

# Wait until background.sh is finished
while [ ! -f /opt/.backgroundfinished ]; do sleep 2; done

echo "done"