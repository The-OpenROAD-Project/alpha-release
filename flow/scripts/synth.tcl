yosys -import

# Don't change these unless you know what you are doing
set stat_ext    "_stat.rep"
set gl_ext      "_gl.v"
set abc_script  "+read_constr,$::env(SDC_FILE);strash;ifraig;retime,-D,{D},-M,6;strash;dch,-f;map,-p,-M,1,{D},-f;topo;dnsize;buffer,-p;upsize;"


# read verilog files
foreach file $::env(VERILOG_FILES) {
  read_verilog $file
}

# Mapping required for memory macros
hierarchy -generate tsmc65lp_* o:Q o:QA o:QB \
                               i:CLK i:CLKA i:CLKB \
                               i:CEN i:CENA i:CENB \
                               i:GWEN \
                               i:A i:AA i:AB \
                               i:D i:DB \
                               i:WEN i:WENA i:WENB\
                               i:STOV \
                               i:EMA i:EMAA i:EMAB \
                               i:EMAW i:EMAS i:RET1N \
                               i:SE i:TEN o:CENY o:WENY o:AY \
                               o:SO i:SI i:TCEN i:TWEN i:TA i:TD \
                               i:DFTRAMBYP i:PGEN i:KEN i:BEN i:TQ

# generic synthesis
synth  -top $::env(DESIGN_NAME) -flatten
opt_clean -purge

# mapping for Registers
dfflibmap -liberty $::env(OBJECTS_DIR)/merged.lib

# TODO: Not sure why we have to set these seeing as we are passing sdc?
set clock $::env(CLOCK_PERIOD)
set clockPort $::env(CLOCK_PORT)

# mapping for technology
abc -D [expr $clock * 1000] \
    -constr "$::env(SDC_FILE)" \
    -liberty $::env(OBJECTS_DIR)/merged.lib \
    -script $abc_script

# Splitting nets resolves unwanted compound assign statements ( assign {..} = {..})
splitnets -ports; opt
hilomap -hicell {*}$::env(TIEHI_CELL_AND_PORT) -locell {*}$::env(TIELO_CELL_AND_PORT)

opt_clean -purge

# cleanup
clean
opt_clean -purge

# reports
tee -o $::env(REPORTS_DIR)/synth_check.txt check
tee -o $::env(REPORTS_DIR)/synth_stat.txt stat -liberty $::env(OBJECTS_DIR)/merged.lib

# write synthesized design
write_verilog -noattr -noexpr -nohex -nodec $::env(RESULTS_DIR)/synth.yosys.v
