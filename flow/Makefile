# DESIGN_CONFIG = ./designs/gcd_freepdk45.mk
# DESIGN_CONFIG = ./designs/gcd_nangate45.mk
DESIGN_CONFIG = ./designs/gcd_tsmc65lp.mk



all: finish

# ==============================================================================
#  ____  _____ _____ _   _ ____
# / ___|| ____|_   _| | | |  _ \
# \___ \|  _|   | | | | | | |_) |
#  ___) | |___  | | | |_| |  __/
# |____/|_____| |_|  \___/|_|
#
# ==============================================================================

# Include design and platform configuration
include $(DESIGN_CONFIG)
include $(PLATFORM_CONFIG)

# Setup working directories
export LOG_DIR     = ./logs/$(DESIGN_NAME)
export OBJECTS_DIR = ./objects/$(DESIGN_NAME)
export REPORTS_DIR = ./reports/$(DESIGN_NAME)
export RESULTS_DIR = ./results/$(DESIGN_NAME)

export SCRIPTS_DIR = ./scripts
export TECH_DIR    = ./tech/$(PLATFORM)

# Tool Options
SHELL = /bin/bash -o pipefail
export FIGLET_CMD = figlet -d $(OPENROAD)/figlet/fonts/

# Quick check to make sure OpenROAD tools are installed
ifeq ("$(OPENROAD)","")
  $(error ERROR: These tests require the OpenROAD tools to be setup (using module load openroad).)
endif


# Preprocess Lefs
# ==============================================================================
$(TECH_DIR)/merged.lef: $(MERGED_LEF)
	mkdir -p $(TECH_DIR)
	cp $< $@

$(TECH_DIR)/merged_padded.lef: $(TECH_DIR)/merged.lef
	$(SCRIPTS_DIR)/padLefMacro.py -p $(CELL_PAD_IN_MICRON) -i $< -o $@

$(TECH_DIR)/merged_padded_dummy.lef: $(TECH_DIR)/merged_padded.lef
	$(SCRIPTS_DIR)/addDummyToLef.py -r $(CTS_DUMMY_CELL) -i $< -o $@

# Modify lef files for TritonRoute
$(TECH_DIR)/merged_padded_dummy_spacing.lef: $(TECH_DIR)/merged_padded_dummy.lef
	$(SCRIPTS_DIR)/modifyLefSpacing.py -i $< -o $@

# Preprocess libraries
# ==============================================================================
$(OBJECTS_DIR)/merged.lib: $(DESIGN_LIB_FILES)
	mkdir -p $(OBJECTS_DIR)
	$(SCRIPTS_DIR)/mergeLib.pl $(PLATFORM)_merged \
	                           $(LIB_FILES) \
	                           > $@.tmp
	$(SCRIPTS_DIR)/markDontUse.pl -p "$(DONT_USE_CELLS)" -i $@.tmp -o $@

# Link flute data files
# ==============================================================================
./PORT9.dat:
	ln -sf $(OPENROAD)/share/replace/$@ $@
./POST9.dat:
	ln -sf $(OPENROAD)/share/replace/$@ $@
./POWV9.dat:
	ln -sf $(OPENROAD)/share/replace/$@ $@
../etc/PORT9.dat:
	mkdir -p ../etc
	ln -sf $(OPENROAD)/share/replace/PORT9.dat $@
../etc/POST9.dat:
	mkdir -p ../etc
	ln -sf $(OPENROAD)/share/replace/POST9.dat $@
../etc/POWV9.dat:
	mkdir -p ../etc
	ln -sf $(OPENROAD)/share/replace/POWV9.dat $@



# ==============================================================================
#  ______   ___   _ _____ _   _ _____ ____ ___ ____
# / ___\ \ / / \ | |_   _| | | | ____/ ___|_ _/ ___|
# \___ \\ V /|  \| | | | | |_| |  _| \___ \| |\___ \
#  ___) || | | |\  | | | |  _  | |___ ___) | | ___) |
# |____/ |_| |_| \_| |_| |_| |_|_____|____/___|____/
#
synth: $(RESULTS_DIR)/synth.v \
       $(RESULTS_DIR)/synth.sdc
# ==============================================================================


# Run Synthesis using yosys
#-------------------------------------------------------------------------------
$(RESULTS_DIR)/synth.yosys.v:  $(OBJECTS_DIR)/merged.lib
	@$(FIGLET_CMD) SYNTHESIS
	mkdir -p $(RESULTS_DIR) $(LOG_DIR) $(REPORTS_DIR)
	yosys -l $(LOG_DIR)/synth.log -c scripts/synth.tcl

$(RESULTS_DIR)/synth.v: $(RESULTS_DIR)/synth.yosys.v
	sed -E "/assign(.*)1'(.*)x;/d"  $< > $@

$(RESULTS_DIR)/synth.sdc: $(SDC_FILE)
	cp $< $@

clean_synth:
	rm -rf $(RESULTS_DIR)/synth.yosys.v
	rm -rf $(RESULTS_DIR)/synth.v $(RESULTS_DIR)/synth.v $(RESULTS_DIR)/synth.sdc
	rm -rf _tmp_yosys-abc-*



# ==============================================================================
#  _____ _     ___   ___  ____  ____  _        _    _   _
# |  ___| |   / _ \ / _ \|  _ \|  _ \| |      / \  | \ | |
# | |_  | |  | | | | | | | |_) | |_) | |     / _ \ |  \| |
# |  _| | |__| |_| | |_| |  _ <|  __/| |___ / ___ \| |\  |
# |_|   |_____\___/ \___/|_| \_\_|   |_____/_/   \_\_| \_|
#
floorplan: $(RESULTS_DIR)/floorplan.def \
           $(RESULTS_DIR)/floorplan.v \
           $(RESULTS_DIR)/floorplan.sdc
# ==============================================================================


# STEP 1: Translate verilog to def
#-------------------------------------------------------------------------------

$(RESULTS_DIR)/init.def: $(TECH_DIR)/merged.lef $(RESULTS_DIR)/synth.v
	@$(FIGLET_CMD) FLOORPLAN
	verilog2def \
	  -lef $(TECH_DIR)/merged.lef \
	  $(foreach file,$(LIB_FILES),-liberty $(file)) \
	  -verilog $(RESULTS_DIR)/synth.v \
	  -top_module $(DESIGN_NAME) \
	  -units 2000 \
	  -site $(PLACE_SITE) \
	  -die_area "$(DIE_AREA)" \
	  -core_area "$(CORE_AREA)" \
	  -auto_place_pins \
	  -tracks $(TRACKS_INFO_FILE) \
	  -def $@ \
	  2>&1 | tee $(LOG_DIR)/verilog2def.log
	  #TODO Update to use utilization

# STEP 2: Macro Placement
#-------------------------------------------------------------------------------



# STEP 3: PDN generation
#-------------------------------------------------------------------------------



# STEP 4: Tapcell and Welltie insertion
#-------------------------------------------------------------------------------
$(RESULTS_DIR)/floorplan.def: $(TECH_DIR)/merged.lef $(RESULTS_DIR)/init.def
	cp $(RESULTS_DIR)/init.def $@
	tapcell -lef $(TECH_DIR)/merged.lef \
	        -def $(RESULTS_DIR)/init.def \
	        -rule $(WELLTTAP_RULE) \
	        -welltap $(WELLTIE_CELL) \
	        -endcap $(ENDCAP_CELL) \
	        -rows \
	        -outdef $@ | tee $(LOG_DIR)/tapcell.log

$(RESULTS_DIR)/floorplan.v: $(RESULTS_DIR)/synth.v
	cp $< $@

$(RESULTS_DIR)/floorplan.sdc: $(RESULTS_DIR)/synth.sdc
	cp $< $@


clean_floorplan:
	rm -rf $(RESULTS_DIR)/init.def
	rm -rf $(RESULTS_DIR)/floorplan.def $(RESULTS_DIR)/floorplan.v $(RESULTS_DIR)/floorplan.sdc
	rm -rf _tmp_yosys-abc-*

# ==============================================================================
#  ____  _        _    ____ _____
# |  _ \| |      / \  / ___| ____|
# | |_) | |     / _ \| |   |  _|
# |  __/| |___ / ___ \ |___| |___
# |_|   |_____/_/   \_\____|_____|
#
place: $(RESULTS_DIR)/place.def \
       $(RESULTS_DIR)/place.v \
       $(RESULTS_DIR)/place.sdc
# ==============================================================================


# STEP 1: IO Placement
#-------------------------------------------------------------------------------
$(RESULTS_DIR)/place_io.def: $(TECH_DIR)/merged.lef $(RESULTS_DIR)/floorplan.def
	@$(FIGLET_CMD) PLACE
	ioPlacer --input-lef $(TECH_DIR)/merged.lef \
	         --input-def $(RESULTS_DIR)/floorplan.def \
	         --output $@ \
	         --hmetal 5 --vmetal 6 2>&1 | tee $(LOG_DIR)/ioPlacer.log


# STEP 2: Global placement
#-------------------------------------------------------------------------------
$(RESULTS_DIR)/place_io_gp.def: $(TECH_DIR)/merged_padded.lef $(RESULTS_DIR)/place_io.def $(RESULTS_DIR)/floorplan.v $(RESULTS_DIR)/floorplan.sdc| ./PORT9.dat ./POST9.dat ./POWV9.dat
	rm -rf $(RESULTS_DIR)/etc/
	RePlAce -bmflag etc \
	        -lef $(TECH_DIR)/merged_padded.lef \
	        -def $(RESULTS_DIR)/place_io.def \
	        -verilog $(RESULTS_DIR)/floorplan.v \
	        $(foreach file,$(LIB_FILES),-lib $(file)) \
	        -sdc $(RESULTS_DIR)/floorplan.sdc \
	        -output $(RESULTS_DIR) \
	        -onlyGP \
	        -t 8 \
	        -den 0.7 \
	        -plot \
	        -skipIP \
	        -timing \
	        -capPerMicron $(CAP_PER_MICRON) \
	        -resPerMicron $(RES_PER_MICRON) \
	        2>&1 | tee $(LOG_DIR)/RePlAce.log
	cp $(RESULTS_DIR)/etc/place_io/experiment000/place_io_final.def $@

# STEP 3: Resizing & Buffering
#-------------------------------------------------------------------------------
$(RESULTS_DIR)/place_io_gp_resized.def: $(TECH_DIR)/merged.lef $(RESULTS_DIR)/place_io_gp.def $(RESULTS_DIR)/floorplan.sdc | ../etc/PORT9.dat ../etc/POST9.dat ../etc/POWV9.dat
	resizer -no_init \
	        $(SCRIPTS_DIR)/resize.tcl \
	        2>&1 | tee $(LOG_DIR)/resizer.log
	@! grep --color "Error:" $(LOG_DIR)/resizer.log

$(RESULTS_DIR)/place.v: $(RESULTS_DIR)/place_io_gp_resized.def


# STEP 3: Global placement
#-------------------------------------------------------------------------------
$(RESULTS_DIR)/place.def: $(TECH_DIR)/merged_padded.lef $(RESULTS_DIR)/place_io_gp_resized.def
	opendp -lef $(TECH_DIR)/merged_padded.lef \
	       -def $(RESULTS_DIR)/place_io_gp_resized.def \
	       -output_def $@


$(RESULTS_DIR)/place.sdc: $(RESULTS_DIR)/floorplan.sdc
	cp $< $@

# Clean Targets
#-------------------------------------------------------------------------------
clean_place:
	rm -rf $(RESULTS_DIR)/place_io.def $(RESULTS_DIR)/place_io_gp.def $(RESULTS_DIR)/place_io_gp_resized.def
	rm -rf $(RESULTS_DIR)/placed.v $(RESULTS_DIR)/placed.def $(RESULTS_DIR)/placed.sdc


# ==============================================================================
#   ____ _____ ____
#  / ___|_   _/ ___|
# | |     | | \___ \
# | |___  | |  ___) |
#  \____| |_| |____/
#
cts: $(RESULTS_DIR)/cts.def \
     $(RESULTS_DIR)/cts.v \
     $(RESULTS_DIR)/cts.sdc
# ==============================================================================

# Prepare tritonCTS config
# ------------------------------------------------------------------------------
SKEW  = 50
TOLER = 1000
$(OBJECTS_DIR)/tritonCts.config: $(TECH_DIR)/merged_padded_dummy.lef $(RESULTS_DIR)/place.def
	mkdir -p $(OBJECTS_DIR)
	echo "lef $(TECH_DIR)/merged_padded_dummy.lef" >> $@
	echo "path $(RESULTS_DIR)/place.def" >> $@
	echo "verilog $(RESULTS_DIR)/place.v" >> $@
	echo "design $(DESIGN_NAME)" >> $@
	echo "target_skew $(SKEW)" >> $@
	echo "width $(CORE_WIDTH)" >> $@
	echo "height $(CORE_HEIGHT)" >> $@
	echo "tech $(PROCESS)" >> $@
	echo "ck_port $(CLOCK_PORT)" >> $@
	echo "db_units 2000" >> $@
	echo "root_buff $(CTS_BUF_CELL)" >> $@
	echo "toler $(TOLER)" >> $@


# Run TritonCTS
# ------------------------------------------------------------------------------
$(RESULTS_DIR)/cts.v: $(OBJECTS_DIR)/tritonCts.config | ./PORT9.dat ./POST9.dat ./POWV9.dat
	@$(FIGLET_CMD) CTS
	$(OPENROAD)/TritonCTS/runTritonCTS.tcl \
	  -configFilePath=$< \
	  -scriptsPath=$(OPENROAD)/TritonCTS/scripts \
	  -techFilesPath=$(CTS_TECH_DIR) \
	  -lefDefParserPath=$(OPENROAD)/TritonCTS/bin/lefdef2cts \
	  -executablePath=$(OPENROAD)/TritonCTS/bin/genHtree \
	  -legalizerPath=$(OPENROAD)/bin/opendp \
	  -outputPath=$(RESULTS_DIR)/run 2>&1 | tee $(LOG_DIR)/tritonCTS.log
	cp $(RESULTS_DIR)/run/final.v $@

$(RESULTS_DIR)/cts.def: $(RESULTS_DIR)/cts.v
	cp $(RESULTS_DIR)/run/cts_final.def $@

$(RESULTS_DIR)/cts.sdc: $(RESULTS_DIR)/place.sdc
	cp $< $@

clean_cts:
	rm -rf $(RESULTS_DIR)/cts.def $(RESULTS_DIR)/cts.v $(RESULTS_DIR)/cts.sdc


# ==============================================================================
#  ____   ___  _   _ _____ ___ _   _  ____
# |  _ \ / _ \| | | |_   _|_ _| \ | |/ ___|
# | |_) | | | | | | | | |  | ||  \| | |  _
# |  _ <| |_| | |_| | | |  | || |\  | |_| |
# |_| \_\\___/ \___/  |_| |___|_| \_|\____|
#
route: $(RESULTS_DIR)/route.def \
       $(RESULTS_DIR)/route.v \
       $(RESULTS_DIR)/route.sdc
# ==============================================================================


# STEP 1: Run global route
#-------------------------------------------------------------------------------
$(RESULTS_DIR)/route.guide: $(TECH_DIR)/merged_padded_dummy.lef $(RESULTS_DIR)/cts.def
	@$(FIGLET_CMD) ROUTING
	rm -rf ./output ./$(DESIGN_NAME).*
	utdBoxRouter -do $(SCRIPTS_DIR)/boxRouter.tcl $(DESIGN_NAME) 2>&1 | tee $(LOG_DIR)/utdBoxRouter.log
	mv ./output/* $(RESULTS_DIR)
	mv ./$(DESIGN_NAME).* $(RESULTS_DIR)
	sed '1d' $(RESULTS_DIR)/$(DESIGN_NAME).guide > $@



# STEP 2: Run detail route
#-------------------------------------------------------------------------------

# Generate param file for TritonRoute
#-------------------------------------------------------------------------------
$(OBJECTS_DIR)/TritonRoute.param: $(TECH_DIR)/merged_padded_dummy_spacing.lef $(RESULTS_DIR)/cts.def $(RESULTS_DIR)/route.guide
	echo "lef:$(TECH_DIR)/merged_padded_dummy_spacing.lef" > $@
	echo "def:$(RESULTS_DIR)/cts.def" >> $@
	echo "guide:$(RESULTS_DIR)/route.guide" >> $@
	echo "output:$(RESULTS_DIR)/route.def" >> $@
	echo "outputTA:$(RESULTS_DIR)/route_TA.def" >> $@
	echo "outputguide:$(RESULTS_DIR)/output_guide.mod" >> $@
	echo "outputMaze:$(RESULTS_DIR)/maze.log" >> $@
	echo "threads:$(NPROC)" >> $@
	echo "cpxthreads:1" >> $@
	echo "verbose:1" >> $@
	echo "gap:0" >> $@
	echo "timeout:2400" >> $@

# Run TritonRoute
#-------------------------------------------------------------------------------
$(RESULTS_DIR)/route.def: $(OBJECTS_DIR)/TritonRoute.param
	TritonRoute $< 2>&1 | tee $(LOG_DIR)/TritonRoute.log

$(RESULTS_DIR)/route.v: $(RESULTS_DIR)/cts.v
	cp $< $@

$(RESULTS_DIR)/route.sdc: $(RESULTS_DIR)/cts.sdc
	cp $< $@

clean_route:
	rm -rf output*/ results*.out.dmp layer_*.mps
	rm -rf *.gdid *.log *.met *.sav *.res.dmp


# ==============================================================================
#  _____ ___ _   _ ___ ____  _   _ ___ _   _  ____
# |  ___|_ _| \ | |_ _/ ___|| | | |_ _| \ | |/ ___|
# | |_   | ||  \| || |\___ \| |_| || ||  \| | |  _
# |  _|  | || |\  || | ___) |  _  || || |\  | |_| |
# |_|   |___|_| \_|___|____/|_| |_|___|_| \_|\____|
#
finish: $(RESULTS_DIR)/finish.gds
# ==============================================================================

# Run magic
#-------------------------------------------------------------------------------
$(RESULTS_DIR)/finish.gds: $(MAGIC_TECH_FILE) $(GDS_FILES) $(RESULTS_DIR)/route.def
	@$(FIGLET_CMD) FINISHING
	magic -dnull -noconsole -T $(MAGIC_TECH_FILE) \
	      $(SCRIPTS_DIR)/magic.tcl | tee $(LOG_DIR)/magic.log


# ==============================================================================
clean_finish:
	rm -rf $(RESULTS_DIR)/finish.gds


# This cleans all designs + tech
clean_all: clean_synth clean_floorplan clean_place clean_cts clean_route clean_finish
	rm -rf ./results ./logs ./reports ./objects ./tech
	rm -rf POST9.dat PORT9.dat POWV9.dat
	rm -rf ../etc/POST9.dat ../etc/PORT9.dat ../etc/POWV9.dat

