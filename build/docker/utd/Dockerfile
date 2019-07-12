# syntax = docker/dockerfile:1.0-experimental
FROM centos:centos6 as build
MAINTAINER Tutu Ajayi "ajayi@umich.edu"


# Common development tools and libraries (kitchen sink approach)
RUN yum groupinstall -y "Development Tools" "Development Libraries"

# Install Python3
RUN yum install -y epel-release python34
RUN yum install -y python34

# Install dependencies for graphical
RUN yum install -y csh libX11-devel tcl tk tcl-devel tk-devel cairo-devel ncurses-devel

# download public key for github.com
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts


# Upgrade git for submodule recurse
RUN yum remove -y git
RUN yum install -y wget openssl-devel curl-devel expat-devel perl-devel && \
    wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.9.3.tar.gz && \
    tar xzf git-2.9.3.tar.gz && \
    cd git-2.9.3 && \
    ./configure && \
    make -j$(proc) && \
    make install

# Replace all https git accesses with ssh to avoid pw prompts
RUN git config --global url."git@github.com:tajayi/utd-lib.git".insteadOf "https://github.com/billswartz7/utd-lib.git"
RUN git config --global url."https://github.com/The-OpenROAD-Project".insteadOf "https://github.com/billswartz7"

# git clone utd components
RUN git clone https://github.com/The-OpenROAD-Project/UTD-Build.git

# build utd components
WORKDIR "UTD-Build"

# Disable yosys build
RUN sed -i '/utd-translate/d' Makefile.in && \
    sed -i '/utd-translate/d' Makefile.am


RUN --mount=type=ssh \
    . ./setenv.sh && \
    bootstrap

RUN . ./setenv.sh && \
    cd build && \
    ../configure --prefix=/build --disable-shared --enable-debug && \
    make && \
    make install

RUN date +"Build Timestamp: %Y-%m-%d_%H-%M-%S" > /build/utd.version
RUN git rev-parse HEAD >> /build/utd.version
RUN tar -czf /build.tar.gz /build

ENV PATH "/build/bin/Linux-x86_64:$PATH"
ENV OPENROAD "/build"

