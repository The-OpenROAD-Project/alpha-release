export DESIGN_NAME = swerv_wrapper
export PLATFORM    = tsmc65lp

export VERILOG_FILES = ./designs/src/swerv/design.v
export SDC_FILE      = ./designs/src/swerv/design.sdc

export MERGED_LEF = ./platforms/tsmc65lp/merged.lef
export LIB_FILES  = $(sort $(wildcard ./platforms/tsmc65lp/lib/*.lib))
export GDS_FILES  = $(sort $(wildcard ./platforms/tsmc65lp/gds/*.gds2))

export RUN_MACRO_PLACEMENT = 1

export DIE_AREA    = 0.0  0.0  1848.0 1448.0
export CORE_AREA   = 14.0 14.0 1834.0 1434.0
export CORE_WIDTH  = 1834.0
export CORE_HEIGHT = 1434.0

export CLOCK_PERIOD = 10.000
export CLOCK_PORT   = clk
