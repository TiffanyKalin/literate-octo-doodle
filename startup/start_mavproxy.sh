#!/bin/bash
#
# start_mavproxy.sh
#
# This script starts up mavproxy as odroid and should be called from /etc/rc.local

# give 10 seconds before starting
sleep 10

date
export HOME=/home/odroid
PATH=$PATH:/bin:/sbin:/usr/bin:/usr/local/bin
PATH=$PATH:$HOME/LM/payload
PATH=$PATH:$HOME/LM/payload/scripts
PATH=$PATH:$HOME/LM/payload/camera
export PATH
echo "PATH:" $PATH

PYTHONPATH=$PYTHONPATH:$HOME/LM/payload/scripts
export PYTHONPATH
echo "PYTHONPATH:" $PYTHONPATH

cd $HOME
echo $HOME

#TODO: how to call the right craft
ls -l /dev/ttyUSB*
ls -l /dev/serial/by-id
ls -l /dev/video*

screen -d -m -s /bin/bash mavproxy.py --master=/dev/ttyUSB0 --baudrate 921600 --aircraft MyCopter

echo "start_mavproxy.sh done"
