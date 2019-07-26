export DESIGN_NAME = dynamic_node_top_wrap
export PLATFORM    = nangate45

export VERILOG_FILES = ./designs/src/dynamic_node/design.v
export SDC_FILE      = ./designs/src/dynamic_node/design.sdc

export MERGED_LEF = ./platforms/nangate45/NangateOpenCellLibrary.mod.lef
export LIB_FILES  = ./platforms/nangate45/NangateOpenCellLibrary_typical.lib
export GDS_FILES  = $(wildcard ./platforms/nangate45/gds/*)

export DIE_AREA    = 0.0  0.0  500.0 500.0
export CORE_AREA   = 10.0  10.0  490.0 490.0
export CORE_WIDTH  = 480.0
export CORE_HEIGHT = 480.0

export CLOCK_PERIOD = 15.000
export CLOCK_PORT   = clk
