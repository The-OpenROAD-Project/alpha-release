# syntax = docker/dockerfile:1.0-experimental
FROM centos:centos6 as build
MAINTAINER Mingyu woo "mwoo@eng.ucsd.edu"

# Mostly copied from https://github.com/abk-openroad/RePlAce/blob/master/Dockerfile

# install gcc 6
RUN yum install git tcl libjpeg libgomp libXext libSM libXft libffi -y
RUN yum install centos-release-scl -y
RUN yum install rh-python35 -y

RUN echo 'pip install --upgrade pip' | scl enable rh-python35 bash
RUN echo 'pip install matplotlib' | scl enable rh-python35 bash
