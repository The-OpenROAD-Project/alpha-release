orparam lef $::env(TECH_DIR)/merged_padded_dummy.lef
orparam def $::env(RESULTS_DIR)/cts.def

# orparam gcell origin {0 0}
# orparam gcell rows 2
# orparam gcell tracks 24

orparam gcell dimension {6000 6000 0 0 dbunits}
orparam gcell utilization 75
orparam toplayer 7

orparam gscale 2000.0

orgroute::params
ordesign read

ordesign route
ordesign output

