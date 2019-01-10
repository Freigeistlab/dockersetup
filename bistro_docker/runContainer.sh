#!/bin/bash
# build & start docker bistro container
sudo docker build -t bistro-container .
sudo docker run -it --privileged -e PYTHONIOENCODING=utf-8 -v /run:/run -v $(pwd)/recipes.db:/bistro/database/recipes.db --net=host bistro-container:latest /bistro/startup.sh
