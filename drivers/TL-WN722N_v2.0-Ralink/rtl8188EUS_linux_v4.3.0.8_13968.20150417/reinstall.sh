#!/bin/bash

echo 'Starting'
sudo make clean > /dev/null;
echo 'Cleaned. Making...'
sudo make all > /dev/null 2>/dev/null;
echo 'Made. Installing'
sudo make install > /dev/null;
echo 'Installed. Loading module'
sudo modprobe -r 8188eu > /dev/null;
sudo modprobe 8188eu;
echo 'Done'
