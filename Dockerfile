FROM nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04

WORKDIR /root

RUN apt update && \
    apt install -y python3 python3-pip git

RUN pip3 install --upgrade pip && \
    pip3 install pipenv

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

ADD Pipfile .
ADD Pipfile.lock .

RUN pipenv install --skip-lock
