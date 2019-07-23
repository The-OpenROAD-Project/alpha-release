# syntax = docker/dockerfile:1.0-experimental
FROM centos:centos6 as build
MAINTAINER Mingyu woo "mwoo@eng.ucsd.edu"

# Mostly copied from https://github.com/abk-openroad/RePlAce/blob/master/Dockerfile


# install base dependencies
RUN yum install -y git tcl tk libjpeg libgomp libXext libSM libXft libffi cairo

# python 3.6
RUN yum install -y install centos-release-scl
RUN yum install -y rh-python36
ENV PATH=/opt/rh/rh-python36/root/usr/bin:$PATH

# Install python dependencies
RUN pip3 install --upgrade pip && \
    pip3 install matplotlib

# Install latest build
# TODO: Would use add but there's a broken sym link in the package
# ADD openroad /

ARG VERSION

COPY OpenROAD-$VERSION.tar.gz /
RUN tar -xzf OpenROAD-$VERSION.tar.gz &&  \
    rm -rf OpenROAD-$VERSION.tar.gz

ENV OPENROAD=/openroad/OpenROAD-$VERSION
ENV OPENROADOS=Linux-x86_64

ENV PATH=$OPENROAD/bin:$OPENROAD/bin/Linux-x86_64:$OPENROAD/pdn/scripts:$PATH
ENV LD_LIBRARY_PATH=$OPENROAD/lib:$OPENROAD/lib/Linux-x86_64:$LD_LIBRARY_PATH
ENV MANPATH=$OPENROAD/share/man:$MANPATH
ENV TCLLIBPATH=$OPENROAD/pdn/scripts:$TCLLIBPATH
