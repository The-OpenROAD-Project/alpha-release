export DESIGN_NAME = ariane
export PLATFORM    = tsmc65lp

export VERILOG_FILES = ./designs/src/ariane/design.v
export SDC_FILE      = ./designs/src/ariane/design.sdc

export MERGED_LEF = ./platforms/tsmc65lp/merged.lef
export LIB_FILES  = $(sort $(wildcard ./platforms/tsmc65lp/lib/*.lib))
export GDS_FILES  = $(sort $(wildcard ./platforms/tsmc65lp/gds/*.gds2))

export RUN_MACRO_PLACEMENT = 1

export DIE_AREA    = 0.0 0.0 2200 1560
export CORE_AREA   = 10.0 10.0 2190 1550
export CORE_WIDTH  = 2180
export CORE_HEIGHT = 1540

export CLOCK_PERIOD = 5.600
export CLOCK_PORT   = clock
