FROM fixl/base:latest

MAINTAINER Stefan Fuchs

RUN apt-get update && \
    apt-get -y install nodejs npm openjdk-8-jdk-headless && \
    apt-get clean autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/{apt,dpkg,cache,log}

WORKDIR /work
