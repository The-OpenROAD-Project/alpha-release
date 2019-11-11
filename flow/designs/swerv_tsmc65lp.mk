export DESIGN_NAME = swerv
export PLATFORM    = tsmc65lp

export VERILOG_FILES = ./designs/src/swerv/swerv_wrapper.sv2v.v
export SDC_FILE      = ./designs/src/swerv/design.sdc

export MERGED_LEF = ./platforms/tsmc65lp/merged.lef
export LIB_FILES  = $(sort $(wildcard ./platforms/tsmc65lp/lib/*.lib))
export GDS_FILES  = $(sort $(wildcard ./platforms/tsmc65lp/gds/*.gds2))

# These values must be multiples of placement site
export DIE_AREA    = 0 0 1550 1341.6
export CORE_AREA   = 10 12 1540 1332
export CORE_WIDTH  = 1530
export CORE_HEIGHT = 1320

export CLOCK_PERIOD = 10.000
export CLOCK_PORT   = clk
