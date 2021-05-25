# Dockerfile
FROM ubuntu:18.04

RUN apt-get update && apt -y install \
    # needed \
    default-jre \
    default-jdk \
    python-dev \
    python-protobuf \
    protobuf-compiler \
    python-virtualenv \
    python-pip \
    aapt \
    adb \
    # utility \
    tmux \
&& rm -rf /var/lib/apt/lists/*

ARG UNAME=testuser
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID -o $UNAME \
&& useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME
