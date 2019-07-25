# Read liberty files
foreach libFile $::env(LIB_FILES) {
  read_liberty $libFile
}


# Read lef def and sdc
read_lef $::env(TECH_DIR)/merged.lef
read_def $::env(RESULTS_DIR)/3_1_place_gp.def
read_sdc $::env(RESULTS_DIR)/2_floorplan.sdc

# Set res and cap
set_wire_rc -resistance $::env(RES_PER_METER) -capacitance $::env(CAP_PER_METER)

# initial report
report_checks > $::env(REPORTS_DIR)/checks.rpt
report_tns > $::env(REPORTS_DIR)/tns.rpt
report_wns > $::env(REPORTS_DIR)/wns.rpt

# Perform resizing and buffering
set dont_use_cells ""
foreach cell $::env(DONT_USE_CELLS) {
  set dont_use_cells "$dont_use_cells [get_full_name [get_lib_cells */$cell]]"
}

# resize -buffer_cell [get_full_name [get_lib_cells */$::env(RESIZER_BUF_CELL)]] \
#        -dont_use $dont_use_cells

# DISABLED input/output buffering due to issues in CTS detail routing
# resize -resize -repair_max_cap -repair_max_slew \
#        -buffer_cell [get_full_name [get_lib_cells */$::env(RESIZER_BUF_CELL)]] \
#        -dont_use $dont_use_cells

# DISABLED repair max slew due to crashes running some designs
resize -resize -repair_max_cap  \
       -buffer_cell [get_full_name [get_lib_cells */$::env(RESIZER_BUF_CELL)]] \
       -dont_use $dont_use_cells

# final report
report_checks > $::env(REPORTS_DIR)/checks_resize.rpt
report_tns > $::env(REPORTS_DIR)/tns_resize.rpt
report_wns > $::env(REPORTS_DIR)/wns_resize.rpt

# write output
write_def $::env(RESULTS_DIR)/3_2_place_resized.def
write_verilog $::env(RESULTS_DIR)/3_place.v

exit