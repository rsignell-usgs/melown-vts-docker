# Dockerfile for Melown VTS Backend 
# https://melown.readthedocs.io/en/latest/tutorials/vtsbackend.html

FROM ubuntu:16.04

MAINTAINER Rich Signell <rsignell@usgs.gov>

RUN apt install -y software-properties-common apt-transport-https wget

RUN add-apt-repository -y ppa:ubuntugis/ppa

RUN cd /etc/apt/sources.list.d/ && wget http://cdn.melown.com/packages/conf/melown-xenial.list
RUN wget -O - http://cdn.melown.com/packages/keys/oss.packages%40melown.com.key | apt-key add -y -

RUN apt-get update -y

RUN apt install -y vts-backend

# VTS Backend Port
EXPOSE 8070
