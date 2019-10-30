# Library setup

set TARGET_LIBRARY_FILES /afs/eecs.umich.edu/kits/ARM/TSMC_65lp/arm_2019q2/sc12_base_rvt/db/sc12_cln65lp_base_rvt_tt_typical_max_1p20v_25c.db

set_app_var target_library ${TARGET_LIBRARY_FILES}
set_app_var link_library "* $target_library"


# Read Design
read_verilog $::env(RESULTS_DIR)/1_1_yosys.v

current_design $::env(DESIGN_NAME)

link

read_sdc $::env(SDC_FILE)

# Update Timing
update_timing -full
check_timing -verbose > $::env(REPORTS_DIR)/pt_check_timing.rpt

# Write Reports
report_qor > $::env(REPORTS_DIR)/pt_report_qor.rpt
report_timing > $::env(REPORTS_DIR)/pt_report_timing.rpt
report_timing -max_paths 20 -delay min > $::env(REPORTS_DIR)/pt_report_timing_min.rpt
report_timing -max_paths 20 -delay max > $::env(REPORTS_DIR)/pt_report_timing_max.rpt


# TODO POWER

exit