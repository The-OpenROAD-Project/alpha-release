export PROCESS = 45

export PLACE_SITE = FreePDK45_38x28_10R_NP_162NW_34O
export TRACKS_INFO_FILE = ./kits/freepdk45/tracks.info

# For tsmc65 1cpp = 0.2 microns
export CELL_PAD_IN_MICRON = 1.0

# Welltie and endcap options
export ENDCAP_CELL   = FILLCELL_X1
export WELLTIE_CELL  = FILLCELL_X1
export WELLTTAP_RULE = 120

# CTS options
export CTS_DUMMY_CELL = BUF_X1
export CTS_BUF_CELL   = BUF_X4
export CTS_TECH_DIR   = ./kits/freepdk45/tritonCts

# Primarily used by Replace
export CAP_PER_MICRON = 0.235146e-12
export RES_PER_MICRON = 1.59

# Primarily used by Resizer
export CAP_PER_METER    = 0.36e-9
export RES_PER_METER    = 0.1233e+6
export RESIZER_BUF_CELL = BUF_X4

export MAGIC_TECH_FILE = ../../CI/test/testcases/tsmc65lp/tech/magic.tech

export DONT_USE_CELLS = FILLCELL_X1
