# Dockerfile for Melown VTS Backend 
# https://melown.readthedocs.io/en/latest/tutorials/vtsbackend.html

FROM ubuntu:16.04

MAINTAINER Rich Signell <rsignell@usgs.gov>

# RUN echo "deb http://archive.ubuntu.com/ubuntu xenial main universe" > /etc/apt/sources.list

RUN cd /etc/apt/sources.list.d/ && wget http://cdn.melown.com/packages/conf/melown-xenial.list
RUN wget -O - http://cdn.melown.com/packages/keys/oss.packages%40melown.com.key | apt-key add -

RUN apt-get update

CMD apt install -y vts-backend

# VTS Backend Port
EXPOSE 8070
