# Dockerfile
FROM ubuntu:18.04

# install needed apk
RUN apt-get update \
    && apt -y install default-jre default-jdk \
       python-dev python-protobuf protobuf-compiler python-virtualenv python-pip \
       aapt adb 
