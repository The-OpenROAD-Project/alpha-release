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

# Add OpenROAD tools to PATH
ENV PATH=/openroad/module/yosys:$PATH
ENV PATH=/openroad/module/Resizer/build:$PATH
ENV PATH=/openroad/module/ioPlacer/build:/openroad/module/ioPlacer/scripts:$PATH
ENV PATH=/openroad/module/RePlAce/build:/openroad/module/RePlAce/module/OpenSTA/app:/openroad/module/RePlAce/ntuplace:$PATH
ENV PATH=/openroad/module/TritonMacroPlace/build:$PATH
ENV PATH=/openroad/module/pdn/src/PdnPinDumper/build:/openroad/module/pdn/src/scripts:$PATH
ENV TCLLIBPATH=/openroad/module/module/pdn/scripts:$TCLLIBPATH
ENV PATH=/openroad/module/tapcell/bin:$PATH
ENV PATH=/openroad/module/OpenDP/build:$PATH
ENV PATH=/openroad/module/TritonRoute/build:$PATH
ENV PATH=/openroad/module/TritonCTS/bin:/openroad/module/TritonCTS/third_party:$PATH
ENV PATH=/openroad/module/TritonCTS/src/scripts:/openroad/module/TritonCTS/src/tech:/openroad/module/TritonCTS:$PATH
ENV PATH=/openroad/module/FastRoute4-lefdef/build/third_party/rsyn/bin:$PATH

# Other stuff
ARG VERSION=0.0.1
ENV OPENROAD=/openroad/OpenROAD-$VERSION
ENV LD_LIBRARY_PATH=$OPENROAD/lib:$OPENROAD/lib/Linux-x86_64:$LD_LIBRARY_PATH

