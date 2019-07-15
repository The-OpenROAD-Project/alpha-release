export DESIGN_NAME = gcd
export PLATFORM    = tsmc65lp

export VERILOG_FILES = ./designs/src/gcd/design.v
export SDC_FILE      = ./designs/src/gcd/design.sdc

export MERGED_LEF = ./platforms/tsmc65lp/merged.lef
export LIB_FILES  = $(sort $(wildcard ./platforms/tsmc65lp/lib/*.lib))
export GDS_FILES  = $(sort $(wildcard ./platforms/tsmc65lp/gds/*.gds2))

export DIE_AREA    = 0.0  0.0  148.0 148.0
export CORE_AREA   = 14.0 14.0 134.0 134.0
export CORE_WIDTH  = 134.0
export CORE_HEIGHT = 134.0

export CLOCK_PERIOD = 10.000
export CLOCK_PORT   = clk
