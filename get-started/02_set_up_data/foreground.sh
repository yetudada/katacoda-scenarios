#!/bin/bash

echo "Waiting to finish setting up your Kedro project"; while [ ! -f /opt/.backgroundfinished ] ; do sleep 2; done;
echo "Done"