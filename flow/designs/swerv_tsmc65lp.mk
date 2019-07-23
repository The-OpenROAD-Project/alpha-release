export DESIGN_NAME = swerv
export PLATFORM    = tsmc65lp

export VERILOG_FILES = ./designs/src/swerv/design.v
export SDC_FILE      = ./designs/src/swerv/design.sdc

export MERGED_LEF = ./platforms/tsmc65lp/merged.lef
export LIB_FILES  = $(sort $(wildcard ./platforms/tsmc65lp/lib/*.lib))
export GDS_FILES  = $(sort $(wildcard ./platforms/tsmc65lp/gds/*.gds2))

export DIE_AREA    = 0.0  0.0  1548.0 1548.0
export CORE_AREA   = 14.0 14.0 1534.0 1534.0
export CORE_WIDTH  = 1534.0
export CORE_HEIGHT = 1534.0

export CLOCK_PERIOD = 10.000
export CLOCK_PORT   = clk
