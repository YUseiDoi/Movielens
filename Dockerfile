FROM ubuntu:22.04

RUN apt-get -y upgrade
RUN apt-get -y update
RUN apt-get -y install python3
RUN apt-get -y upgrade
RUN apt-get -y install python3-pip
RUN apt-get -y update
RUN apt-get -y install emacs
RUN pip3 install torch torchvision torchaudio 
RUN pip3 install torchvision

RUN pip3 install matplotlib

RUN pip3 install tensorflow tensorboardX

WORKDIR /app/
ENV APP /app