FROM ubuntu:22.04

RUN apt-get -y upgrade && apt-get -y update
RUN apt-get -y install python3.9
RUN apt-get -y upgrade
RUN apt-get -y install python3-pip
RUN apt-get -y update

RUN apt-get -y install \
    git \
    vim

RUN pip3 install torch torchvision torchaudio 

RUN pip3 install --no-cache-dir \
    tensorflow \
    tensorboardX \
    jupyter

WORKDIR /app/
ENV APP /app