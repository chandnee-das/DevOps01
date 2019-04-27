#!/bin/bash
df -h
lscpu
df -h --output='source','target','iused','iavail'
sudo lshw -short -C memory
ifconfig
