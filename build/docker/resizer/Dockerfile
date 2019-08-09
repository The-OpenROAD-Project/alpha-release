# syntax = docker/dockerfile:1.0-experimental
FROM centos:centos6 as build
MAINTAINER Tutu Ajayi "ajayi@umich.edu"

# Mostly copied from https://github.com/abk-openroad/RePlAce/blob/master/Dockerfile

# install gcc 6
RUN yum -y install centos-release-scl && \
    yum -y install devtoolset-6 devtoolset-6-libatomic-devel
ENV CC=/opt/rh/devtoolset-6/root/usr/bin/gcc \
    CPP=/opt/rh/devtoolset-6/root/usr/bin/cpp \
    CXX=/opt/rh/devtoolset-6/root/usr/bin/g++ \
    PATH=/opt/rh/devtoolset-6/root/usr/bin:$PATH \
    LD_LIBRARY_PATH=/opt/rh/devtoolset-6/root/usr/lib64:/opt/rh/devtoolset-6/root/usr/lib:/opt/rh/devtoolset-6/root/usr/lib64/dyninst:/opt/rh/devtoolset-6/root/usr/lib/dyninst:/opt/rh/devtoolset-6/root/usr/lib64:/opt/rh/devtoolset-6/root/usr/lib:$LD_LIBRARY_PATH

# install dependencies
RUN yum install -y wget git zlib-devel tcl-devel swig bison flex


# download public key for github.com
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

# Installing cmake for build dependency
RUN wget https://cmake.org/files/v3.9/cmake-3.9.0-Linux-x86_64.sh && \
    chmod +x cmake-3.9.0-Linux-x86_64.sh  && \
    ./cmake-3.9.0-Linux-x86_64.sh --skip-license --prefix=/usr/local

# download CUDD
RUN wget https://www.davidkebo.com/source/cudd_versions/cudd-3.0.0.tar.gz && \
    tar -xvf cudd-3.0.0.tar.gz && \
    cd cudd-3.0.0 && \
    ./configure && \
    make && \
    make install

# get Resizer
RUN git clone --recursive https://github.com/The-OpenROAD-Project/Resizer.git

# Workaround for issue https://github.com/The-OpenROAD-Project/Resizer/issues/5
WORKDIR Resizer
RUN git checkout 98568f271339bf0c83df5c5835c3d8d1f8c33917
WORKDIR module/OpenSTA
RUN git checkout 73fef1117e973efde68b1d39c6adabf5c83f6417
WORKDIR /
# End Workaround

WORKDIR Resizer

COPY resizer.patch .
RUN git apply resizer.patch


RUN mkdir build
WORKDIR build
RUN cmake -DCMAKE_INSTALL_PREFIX=/build -DCUDD=/usr/local ..

RUN make

RUN mkdir -p /build/bin/ && \
    cp resizer /build/bin && \
    cp verilog2def /build/bin

RUN date +"Build Timestamp: %Y-%m-%d_%H-%M-%S" > /build/resizer.version
RUN git rev-parse HEAD >> /build/resizer.version
RUN tar -czf /build.tar.gz /build
