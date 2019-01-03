# Freigeistlab
# container for running dashboard for bistro

FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install curl gnupg2 git -y 

# install yarn
RUN apt remove cmdtest
RUN apt remove yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install yarn -y

# clone repo
RUN git clone https://github.com/Freigeistlab/bistro-dashboard.git
RUN cd bistro-dashboard && yarn install
WORKDIR /bistro-dashboard
