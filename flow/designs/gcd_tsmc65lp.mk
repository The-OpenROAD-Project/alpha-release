export DESIGN_NAME = gcd
export PLATFORM_CONFIG = ./kits/tsmc65lp/config.mk

export VERILOG_FILES = ./designs/gcd/design.v
export SDC_FILE      = ./designs/gcd/design.sdc

export MERGED_LEF = ../../CI/test/testcases/tsmc65lp/tech/tech_macro.lef
export LIB_FILES  = ../../CI/test/testcases/tsmc65lp/lib/sc12_cln65lp_base_rvt_ss_typical_max_1p08v_125c.lib
export GDS_FILES  = ../../CI/test/testcases/tsmc65lp/gds/sc12_cln65lp_base_rvt.gds2

export DIE_AREA    = 0.0  0.0  148.0 148.0
export CORE_AREA   = 14.0 14.0 134.0 134.0
export CORE_WIDTH  = 134.0
export CORE_HEIGHT = 134.0

export CLOCK_PERIOD = 10.000
export CLOCK_PORT   = clk
