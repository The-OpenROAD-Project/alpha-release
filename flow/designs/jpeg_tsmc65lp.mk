export DESIGN_NAME = jpeg_encoder
export PLATFORM    = tsmc65lp

export VERILOG_FILES = ./designs/src/jpeg/design.v
export SDC_FILE      = ./designs/src/jpeg/design.sdc

export MERGED_LEF = ./platforms/tsmc65lp/merged.lef
export LIB_FILES  = $(wildcard ./platforms/tsmc65lp/lib/*.lib)
export GDS_FILES  = $(wildcard ./platforms/tsmc65lp/gds/*.gds2)

export DIE_AREA    = 0.0 0.0 1109.4 664.8
export CORE_AREA   = 14.0 14.0 1095.4 650.8
export CORE_WIDTH  = 1081.4
export CORE_HEIGHT = 636.8

export CLOCK_PERIOD = 4.000
export CLOCK_PORT   = clk
