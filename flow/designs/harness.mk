export DESIGN_NAME ?= SPECIFY_DESIGN_NAME
export PLATFORM    = nangate45

export VERILOG_FILES = ./designs/src/harness/*.v
export SDC_FILE      = ./designs/src/harness/design.sdc

export MERGED_LEF = ./platforms/nangate45/NangateOpenCellLibrary.mod.lef
export LIB_FILES  = ./platforms/nangate45/NangateOpenCellLibrary_typical.lib
export GDS_FILES  = $(wildcard ./platforms/nangate45/gds/*)

#export RUN_MACRO_PLACEMENT = 1

# These values must be multiples of placement site
# x=0.19 y=1.4
export DIE_AREA    = 0 0 900.22 901.6
export CORE_AREA   = 20.14 22.4 880.46 882
export CORE_WIDTH  = 860.32
export CORE_HEIGHT = 859.6

# Start with 250MHz for nangate45, relatively conservative
export CLOCK_PERIOD = 4
export CLOCK_PORT   = clock
