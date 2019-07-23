export DESIGN_NAME = bp_fe_top
export PLATFORM    = tsmc65lp

export VERILOG_FILES = ./designs/src/bp_fe_top/design.v
export SDC_FILE      = ./designs/src/bp_fe_top/design.sdc

export MERGED_LEF = ./platforms/tsmc65lp/merged.lef
export LIB_FILES  = $(sort $(wildcard ./platforms/tsmc65lp/lib/*.lib))
export GDS_FILES  = $(sort $(wildcard ./platforms/tsmc65lp/gds/*.gds2))

export RUN_MACRO_PLACEMENT = 1

export DIE_AREA    = 0.0 0.0 1200 1000
export CORE_AREA   = 10.0 10.0 1190 990
export CORE_WIDTH  = 1180
export CORE_HEIGHT = 980

export CLOCK_PERIOD = 5.600
export CLOCK_PORT   = clock
