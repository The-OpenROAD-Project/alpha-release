FROM openroad/centos6-tcl8.6 as builder

# install base dependencies
RUN yum install -y git libjpeg libgomp libXext libSM libXft libffi cairo gettext

# python 3.6
RUN yum install -y install centos-release-scl
RUN yum install -y rh-python36
ENV PATH=/opt/rh/rh-python36/root/usr/bin:$PATH

# Install python dependencies
RUN pip3 install --upgrade pip && \
    pip3 install matplotlib

ARG VERSION=0.0.1

ENV OPENROAD=/openroad/OpenROAD-$VERSION
ENV OPENROADOS=Linux-x86_64

ENV PATH=$OPENROAD/bin:$OPENROAD/bin/Linux-x86_64:$OPENROAD/pdn/scripts:$PATH
ENV LD_LIBRARY_PATH=$OPENROAD/lib:$OPENROAD/lib/Linux-x86_64:$LD_LIBRARY_PATH
ENV MANPATH=$OPENROAD/share/man:$MANPATH
ENV TCLLIBPATH=$OPENROAD/pdn/scripts:$TCLLIBPATH
