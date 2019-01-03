#!/bin/bash
# build & start docker bistro dashboard container
sudo docker build -t bistro-dashboard-container .
sudo docker run -it --privileged -p 3000:3000 bistro-dashboard-container:latest yarn start