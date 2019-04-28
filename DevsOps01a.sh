#!/bin/bash
df -h --output='source','target','iused','iavail'
lscpu
sudo lshw -short -C memory
ifconfig
