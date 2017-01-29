FROM fixl/base:latest

MAINTAINER Stefan Fuchs

RUN apt-get update && \
    apt-get -y install nodejs npm git openjdk-8-jdk-headless jq && \
    update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10 && \
    npm install -g npm && \
    apt-get clean autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/{apt,dpkg,cache,log}

WORKDIR /work
