if [ $# -eq 0 ]
  then
    export OPENROAD_HOME=$(PWD)
  else
    export OPENROAD_HOME=$1
fi

# Set relative paths
export PATH=$OPENROAD_HOME/module/yosys/:$PATH
export PATH=$OPENROAD_HOME/module/Resizer/build:$PATH
export PATH=$OPENROAD_HOME/module/ioPlacer/build:$OPENROAD_HOME/module/ioPlacer/scripts:$PATH
export PATH=$OPENROAD_HOME/module/RePlAce/build:$OPENROAD_HOME/module/RePlAce/module/OpenSTA/app:$OPENROAD_HOME/module/RePlAce/ntuplace:$PATH
export PATH=$OPENROAD_HOME/module/TritonMacroPlace/build:$PATH
export PATH=$OPENROAD_HOME/module/pdn/src/PdnPinDumper/build:$OPENROAD_HOME/module/pdn/src/scripts:$PATH
export TCLLIBPATH=$OPENROAD_HOME/module/module/pdn/scripts:$TCLLIBPATH
export PATH=$OPENROAD_HOME/module/tapcell/bin:$PATH
export PATH=$OPENROAD_HOME/module/OpenDP/build:$PATH
export PATH=$OPENROAD_HOME/module/TritonRoute/build:$PATH
export PATH=$OPENROAD_HOME/module/TritonCTS/bin:$OPENROAD_HOME/module/TritonCTS/third_party:$PATH
export PATH=$OPENROAD_HOME/module/TritonCTS/src/scripts:$OPENROAD_HOME/module/TritonCTS/src/tech:$OPENROAD_HOME/module/TritonCTS:$PATH
export PATH=$OPENROAD_HOME/module/FastRoute4-lefdef/build/third_party/rsyn/bin:$PATH