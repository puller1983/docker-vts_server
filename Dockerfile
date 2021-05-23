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
