# syntax = docker/dockerfile:1.0-experimental
FROM centos:centos6 as build
MAINTAINER Tutu Ajayi "ajayi@umich.edu"

# Common development tools and libraries (kitchen sink approach)
RUN yum groupinstall -y "Development Tools" "Development Libraries"

# magic dependencies
RUN yum install -y csh wget tcl-devel tk-devel libX11-devel cairo-devel ncurses-devel

# git clone magic components
# RUN git clone https://github.com/RTimothyEdwards/magic.git
RUN git clone https://github.com/The-OpenROAD-Project/magic.git

WORKDIR "magic"

RUN git checkout magic-8.2

# build
RUN ./configure --prefix=/build && \
    make && \
    make install

RUN date +"Build Timestamp: %Y-%m-%d_%H-%M-%S" > /build/magic.version
RUN git rev-parse HEAD >> /build/magic.version
RUN tar -czf /build.tar.gz /build

