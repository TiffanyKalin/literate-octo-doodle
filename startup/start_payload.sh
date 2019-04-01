#!/bin/bash
#
# start_payload.sh
#
# This script starts the payload scripts

# wait 2 seconds before starting
sleep 2

date
PATH=$PATH:/bin:/sbin:/usr/bin:/usr/local/bin
PATH=$PATH:$HOME/LM/payload
PATH=$PATH:$HOME/LM/payload/scripts
export PATH
echo "PATH:" $PATH

PYTHONPATH=$PYTHONPATH:$HOME/LM/payload/scripts
export PYTHONPATH
echo "PYTHONPATH:" $PYTHONPATH

cd $HOME/LM/payload/scripts

python payload_strategy.py

echo "start_payload.sh done"
