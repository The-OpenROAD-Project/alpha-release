set TARGET_LIBRARY_FILES /afs/eecs.umich.edu/kits/ARM/TSMC_65lp/arm_2019q2/sc12_base_rvt/db/sc12_cln65lp_base_rvt_tt_typical_max_1p20v_25c.db

set_app_var target_library ${TARGET_LIBRARY_FILES}
set_app_var link_library "* $target_library"


# Perform resizing and buffering
set dont_use_cells ""
foreach cell $::env(DONT_USE_CELLS) {
  set dont_use_cells "$dont_use_cells sc12_cln65lp_base_rvt_tt_typical_max_1p20v_25c/$cell"
}

set_dont_use $dont_use_cells

analyze -f sverilog $::env(VERILOG_FILES)
elaborate $::env(DESIGN_NAME)

current_design $::env(DESIGN_NAME)

link

source $::env(SDC_FILE)

# FLAT
# compile_ultra

# Hierarchical
compile_ultra -no_boundary_optimization

write -hierarchy -format verilog -output $::env(RESULTS_DIR)/1_1_dc.v


report_qor > $::env(REPORTS_DIR)/report_qor.rpt
# report_area  > $::env(REPORTS_DIR)/dc_report_area.rpt
# report_timing -path full -delay max -max_paths 10 -nworst 100 > $::env(REPORTS_DIR)/dc_report_timing.rpt
# report_power -hier -analysis_effort medium > $::env(REPORTS_DIR)/dc_report_power.rpt

exit