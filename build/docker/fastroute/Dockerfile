# syntax = docker/dockerfile:1.0-experimental
FROM centos:centos6 as build
MAINTAINER Tutu Ajayi "ajayi@umich.edu"


# install gcc 6
RUN yum -y install centos-release-scl && \
    yum -y install devtoolset-6 devtoolset-6-libatomic-devel
ENV CC=/opt/rh/devtoolset-6/root/usr/bin/gcc \
    CPP=/opt/rh/devtoolset-6/root/usr/bin/cpp \
    CXX=/opt/rh/devtoolset-6/root/usr/bin/g++ \
    PATH=/opt/rh/devtoolset-6/root/usr/bin:$PATH \
    LD_LIBRARY_PATH=/opt/rh/devtoolset-6/root/usr/lib64:/opt/rh/devtoolset-6/root/usr/lib:/opt/rh/devtoolset-6/root/usr/lib64/dyninst:/opt/rh/devtoolset-6/root/usr/lib/dyninst:/opt/rh/devtoolset-6/root/usr/lib64:/opt/rh/devtoolset-6/root/usr/lib:$LD_LIBRARY_PATH

# Common development tools and libraries (kitchen sink approach)
RUN yum groupinstall -y "Development Tools" "Development Libraries"

RUN yum install -y wget rh-mongodb32-boost-devel rh-mongodb32-boost-static
ENV PATH=/opt/rh/rh-mongodb32/root/usr/bin:$PATH \
    LD_LIBRARY_PATH=/opt/rh/rh-mongodb32/root/usr/lib64:/opt/rh/rh-mongodb32/root/usr/lib:/opt/rh/rh-mongodb32/root/usr/lib64/dyninst:/opt/rh/rh-mongodb32/root/usr/lib/dyninst:/opt/rh/rh-mongodb32/root/usr/lib64:/opt/rh/rh-mongodb32/root/usr/lib:$LD_LIBRARY_PATH \
    C_INCLUDE_PATH=/opt/rh/rh-mongodb32/root/usr/include \
    CPLUS_INCLUDE_PATH=/opt/rh/rh-mongodb32/root/usr/include


RUN wget https://cmake.org/files/v3.9/cmake-3.9.0-Linux-x86_64.sh && \
    chmod +x cmake-3.9.0-Linux-x86_64.sh  && \
    ./cmake-3.9.0-Linux-x86_64.sh --skip-license --prefix=/usr/local


RUN yum install -y zlib-devel libpng-devel

RUN yum install -y install epel-release
RUN yum install -y  qt5-qtbase-devel


# download public key for github.com
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN git clone -b dev https://github.com/The-OpenROAD-Project/FastRoute4-lefdef.git

RUN mkdir /FastRoute4-lefdef/build
WORKDIR /FastRoute4-lefdef/build

RUN cmake -DCMAKE_BUILD_TYPE=Release -DBOOST_ROOT=/opt/rh/rh-mongodb32/root/usr ..  && \
    make

RUN mkdir -p /build/bin/ && \
    cp /FastRoute4-lefdef/build/rsyn/bin/rsyn /build/bin/FRlefdef


RUN date +"Build Timestamp: %Y-%m-%d_%H-%M-%S" > /build/fastroute.version
RUN git rev-parse HEAD >> /build/fastroute.version
RUN tar -czf /build.tar.gz /build
