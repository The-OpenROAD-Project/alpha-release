export DESIGN_NAME = RocketTile
export PLATFORM    = tsmc65lp

export VERILOG_FILES = ./designs/src/tinyRocket/design.v
export SDC_FILE      = ./designs/src/tinyRocket/design.sdc

export MERGED_LEF = ./platforms/tsmc65lp/merged.lef
export LIB_FILES  = $(wildcard ./platforms/tsmc65lp/lib/*.lib)
export GDS_FILES  = $(wildcard ./platforms/tsmc65lp/gds/*.gds2)

export RUN_MACRO_PLACEMENT = 1

export DIE_AREA    = 0.0 0.0 625.8 505.6
export CORE_AREA   = 14.0 14.0 611.8 491.6
export CORE_WIDTH  = 597.8
export CORE_HEIGHT = 463.6

export CLOCK_PERIOD = 5.600
export CLOCK_PORT   = clock
