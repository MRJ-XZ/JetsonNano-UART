#! bin/sh
sudo systemctl stop nvgetty.service
sudo systemctl disable nvgetty.service
sudo systemctl stop serial-getty@ttyS0.service    #very important, this is the service that occupied the pins
cd ../..
sudo chgrp dialout /dev/ttyS0
sudo chmod 666 /dev/ttyS0
echo 'ttyS0 is ready to use.'
