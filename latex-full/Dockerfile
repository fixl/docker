FROM fixl/base:latest

MAINTAINER Stefan Fuchs

RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get install -y texlive-full && \
    apt-get clean autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/{apt,dpkg,cache,log}

WORKDIR /source

ENTRYPOINT ["pdflatex"]
