export DESIGN_NAME = ibex_core
export PLATFORM    = nangate45

export VERILOG_FILES = ./designs/src/ibex/design.v
export SDC_FILE      = ./designs/src/ibex/design.sdc

export MERGED_LEF = ./platforms/nangate45/NangateOpenCellLibrary.mod.lef
export LIB_FILES  = ./platforms/nangate45/NangateOpenCellLibrary_typical.lib
export GDS_FILES  = $(wildcard ./platforms/nangate45/gds/*)

export DIE_AREA    = 0.0  0.0  948.0 748.0
export CORE_AREA   = 14.0 14.0 934.0 734.0
export CORE_WIDTH  = 934.0
export CORE_HEIGHT = 734.0

export CLOCK_PERIOD = 10.000
export CLOCK_PORT   = clk_i
