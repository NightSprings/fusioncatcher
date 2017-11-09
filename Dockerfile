FROM ubuntu:14.04

MAINTAINER daniel.nicorici@gmail.com

LABEL Description="This image is used to run FusionCatcher" Version="0.99.7d"

RUN apt-get -y clean \
    && apt-get -y update \
    && apt-get -y install \
    automake \
    build-essential \
    bzip2 \
    cmake \
    curl \
    g++ \
    gawk \
    gcc \
    gzip  \
    libc6-dev \
    libncurses5-dev \
    libtbb2 \
    libtbb-dev \
    make \
    parallel \
    pigz \
    python \
    python-dev \
    python-biopython \
    python-numpy \
    python-openpyxl \
    python-xlrd \
    tar \
    unzip \
    wget \
    zip \
    zlib1g \
    zlib1g-dev \
    zlibc \
    default-jdk \
    git \
    && apt-get -y clean

WORKDIR /apps

######################
## INSTALLATION
######################

RUN git clone https://github.com/NightSprings/fusioncatcher_v0.99.7c.git && python bootstrap.py -t --download -y -i /apps/fusioncatcher/v0997c/
