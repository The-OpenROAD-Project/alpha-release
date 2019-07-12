export PLATFORM = nangate45
export PROCESS = 45

export PLACE_SITE = CoreSite
export TRACKS_INFO_FILE = ./kits/freepdk45/tracks.info

# For tsmc65 1cpp = 0.2 microns
export CELL_PAD_IN_MICRON = 1.0

# Welltie and endcap options
export ENDCAP_CELL   = FILL
export WELLTIE_CELL  = FILL
export WELLTTAP_RULE = 120

# CTS options
export CTS_DUMMY_CELL = CLKBUF1
export CTS_BUF_CELL   = CLKBUF2
export CTS_TECH_DIR   = ./kits/freepdk45/tritonCts

# Primarily used by Replace
export CAP_PER_MICRON = 0.235146e-12
export RES_PER_MICRON = 1.59

# Primarily used by Resizer
export CAP_PER_METER    = 0.36e-9
export RES_PER_METER    = 0.1233e+6
export RESIZER_BUF_CELL = BUFX2

export MAGIC_TECH_FILE = ./kits/freepdk45/gscl45nm.tech

export DONT_USE_CELLS = FILL
