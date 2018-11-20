#!/bin/bash
# build & start docker bistro container
sudo docker build -t bistro-container .
sudo docker run -it --privileged -v /run:/run --net=host bistro-container:latest /bistro/startup.sh
