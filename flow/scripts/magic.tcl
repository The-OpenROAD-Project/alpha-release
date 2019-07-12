# scalegrid 1 10
box 0 0 0 0
drc off
snap int

# Read tech lef
lef read $::env(TECH_DIR)/merged.lef


# Read gds files
gds readonly true
gds rescale false
foreach gdsFile $::env(GDS_FILES) {
  gds read $gdsFile
}


# Read def and load design
load $::env(DESIGN_NAME)
def read $::env(RESULTS_DIR)/route.def

# Write gds
select top cell
expand
gds write $::env(RESULTS_DIR)/finish.gds

puts "GDS write complete"

quit -noprompt
