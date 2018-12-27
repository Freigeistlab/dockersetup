# Freigeistlab
# container for running bistro.py
# see end of file for commands to run

FROM ubuntu:18.04

RUN apt-get update && apt-get install -y python python-dev python3.6 python3.6-dev python3-pip virtualenv libssl-dev libpq-dev git build-essential libfontconfig1 libfontconfig1-dev python-dbus git

RUN pip3 install setuptools pip --upgrade --force-reinstall

# bluetooth utils
RUN apt-get update && apt-get install -y bluez bluetooth usbutils --fix-missing

# clone repo
RUN git clone https://github.com/Freigeistlab/bistro.git
WORKDIR /bistro
RUN pip3 install -r requirements.txt

RUN git pull


# commands to run:
# sudo docker build -t bistro-container .
# sudo docker run -it --privileged -v /run:/run --net=host bistro-container:latest /bin/bash
