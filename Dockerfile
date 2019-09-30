FROM openroad/centos6-tcl8.6 as builder

# install base dependencies
RUN yum install -y git tcl tk libjpeg libgomp libXext libSM libXft libffi cairo gettext

# python 3.6
RUN yum install -y install centos-release-scl
RUN yum install -y rh-python36
ENV PATH=/opt/rh/rh-python36/root/usr/bin:$PATH

# Install python dependencies
RUN pip3 install --upgrade pip && \
    pip3 install matplotlib

# Mount volume
VOLUME /openroad

# Configure Environment
ARG VERSION=2019.10.01
ENV OPENROAD_HOME=/openroad
ENV PATH=$OPENROAD_HOME/module/yosys:$PATH
ENV PATH=$OPENROAD_HOME/module/Resizer/build:$PATH
ENV PATH=$OPENROAD_HOME/module/ioPlacer/build:$OPENROAD_HOME/module/ioPlacer/scripts:$PATH
ENV PATH=$OPENROAD_HOME/module/RePlAce/build:$OPENROAD_HOME/module/RePlAce/module/OpenSTA/app:$OPENROAD_HOME/module/RePlAce/ntuplace:$PATH
ENV PATH=$OPENROAD_HOME/module/TritonMacroPlace/build:$PATH
ENV PATH=$OPENROAD_HOME/module/pdn/src/PdnPinDumper/build:$OPENROAD_HOME/module/pdn/src/scripts:$PATH
ENV TCLLIBPATH=$OPENROAD_HOME/module/module/pdn/scripts:$TCLLIBPATH
ENV PATH=$OPENROAD_HOME/module/tapcell/bin:$PATH
ENV PATH=$OPENROAD_HOME/module/OpenDP/build:$PATH
ENV PATH=$OPENROAD_HOME/module/TritonRoute/build:$PATH
ENV PATH=$OPENROAD_HOME/module/TritonCTS/bin:$OPENROAD_HOME/module/TritonCTS/third_party:$PATH
ENV PATH=$OPENROAD_HOME/module/TritonCTS/src/scripts:$OPENROAD_HOME/module/TritonCTS/src/tech:$OPENROAD_HOME/module/TritonCTS:$PATH
ENV PATH=$OPENROAD_HOME/module/FastRoute4-lefdef/build/third_party/rsyn/bin:$PATH
