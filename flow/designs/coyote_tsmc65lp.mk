export DESIGN_NAME = bsg_rocket_node_client_rocc
export PLATFORM    = tsmc65lp

export VERILOG_FILES = ./designs/src/coyote/design.v
export SDC_FILE      = ./designs/src/coyote/design.sdc

export MERGED_LEF = ./platforms/tsmc65lp/merged.lef
export LIB_FILES  = $(sort $(wildcard ./platforms/tsmc65lp/lib/*.lib))
export GDS_FILES  = $(sort $(wildcard ./platforms/tsmc65lp/gds/*.gds2))

export RUN_MACRO_PLACEMENT = 1

export DIE_AREA    = 0.0 0.0 4200 1860
export CORE_AREA   = 10.0 10.0 4190 1850
export CORE_WIDTH  = 4180
export CORE_HEIGHT = 1840

export CLOCK_PERIOD = 5.600
export CLOCK_PORT   = clock
