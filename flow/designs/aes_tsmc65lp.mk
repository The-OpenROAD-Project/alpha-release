export DESIGN_NAME = aes_cipher_top
export PLATFORM_CONFIG = ./kits/tsmc65lp/config_umich.mk

export VERILOG_FILES = ./designs/aes/design.v
export SDC_FILE      = ./designs/aes/design.sdc

export MERGED_LEF = ./kits/tsmc65lp/merged.lef
export LIB_FILES  = $(wildcard ./kits/tsmc65lp/lib/*.lib)
export GDS_FILES  = $(wildcard ./kits/tsmc65lp/gds/*.gds2)

export DIE_AREA    = 0.0  0.0  616.8 420.0
export CORE_AREA   = 14.0 14.0 602.8 406.0
export CORE_WIDTH  = 602.8
export CORE_HEIGHT = 406.0

export CLOCK_PERIOD = 5.000
export CLOCK_PORT   = clk
