FROM fixl/base:latest

MAINTAINER Stefan Fuchs

ENV HUGO_VERSION 0.19

RUN apt-get update && \
    apt-get install -y \
        python \
        python-setuptools \
        unzip \
        curl && \
    apt-get clean autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/{apt,dpkg,cache,log}

# Install hugo
RUN cd /tmp && \
    curl -L -o hugo.tar.gz https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-64bit.tar.gz && \
    mkdir hugo && \
    tar zxvf hugo.tar.gz -C hugo --strip-components=1 && \
    mv hugo/hugo_${HUGO_VERSION}_linux_amd64 /usr/local/bin/hugo && \
    rm -rf /tmp/*

COPY ./run.sh /run.sh

WORKDIR /hugo
CMD ["/run.sh"]

EXPOSE 1313
