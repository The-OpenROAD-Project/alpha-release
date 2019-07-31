# Process node
export PROCESS = 45

# Set the TIEHI/TIELO cells
# These are used in yosys synthesis to avoid logical 1/0's in the netlist
export TIEHI_CELL_AND_PORT = LOGIC1_X1 Z
export TIELO_CELL_AND_PORT = LOGIC0_X1 Z

# Blackbox verilog file
# List all standard cells and cells yosys should treat as blackboxes here
export BLACKBOX_V_FILE = ./platforms/nangate45/NangateOpenCellLibrary.blackbox.v

# Placement site for core cells
# This can be found in the technology lef
export PLACE_SITE = FreePDK45_38x28_10R_NP_162NW_34O

# Track information for generating DEF tracks
export TRACKS_INFO_FILE = ./platforms/nangate45/tracks.info

# Cell padding in microns to ease rout-ability
export CELL_PAD_IN_MICRON = 1.0

# Wndcap and Welltie cells
# Use fillers if kit doesn't have them
export ENDCAP_CELL   = FILLCELL_X1
export WELLTIE_CELL  = FILLCELL_X1
export WELLTTAP_RULE = 120

# TritonCTS options
export CTS_DUMMY_CELL = BUF_X1
export CTS_BUF_CELL   = BUF_X4
export CTS_TECH_DIR   = ./platforms/nangate45/tritonCTS

# RC information for the placer
export CAP_PER_MICRON = 0.235146e-12
export RES_PER_MICRON = 1.59

# RC information for the sizer
export CAP_UNIT_PER_MICRON    = 0.00020
export RES_UNIT_PER_MICRON    = 0.0020
export RESIZER_BUF_CELL = BUF_X4

# Magic technology file
export MAGIC_TECH_FILE = ./platforms/nangate45/magic.tech

# Dont use cells to ease congestion
# Specify at least one filler cell if none
export DONT_USE_CELLS = FILLCELL_X1
