DOCKER_BUILD_OPTS ?= --rm --ssh default
# DOCKER_BUILD_OPTS += --no-cache

DOCKER_RUN_OPTS ?= -it \
	-v $(HOME):$(HOME) \
	-v /afs:/afs \
	-e HOME=$(HOME) \
	-e DISPLAY=$(DISPLAY) \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v /etc/passwd:/etc/passwd:ro \
	-v /etc/group:/etc/group:ro \
	-u `id  -u`:`id -g` \
	-w ~


# ==============================================================================
# Download Tools
# ==============================================================================
DOWNLOAD_DIR = export/downloads

downloads: $(DOWNLOAD_DIR)/grChecker $(DOWNLOAD_DIR)/rtGuideGen

FORCE:

$(DOWNLOAD_DIR)/grChecker: FORCE
	mkdir -p $(DOWNLOAD_DIR)
	wget https://vlsicad.ucsd.edu/~bangqixu/toDaeyeon/FlexRoute -O $@
	chmod +x $@

$(DOWNLOAD_DIR)/rtGuideGen: FORCE
	mkdir -p $(DOWNLOAD_DIR)
	wget https://vlsicad.ucsd.edu/~bangqixu/toTutu/routeguide_gen/FlexRoute -O $@
	chmod +x $@


# ==============================================================================
# Build Tools
# ==============================================================================
TOOLS = yosys tapcell replace magic cts ioplacer pdn opendp resizer route macroplacer

TOOL_BUILD_TARGETS = $(foreach tool,$(TOOLS),build-$(tool))
TOOL_RUN_TARGETS = $(foreach tool,$(TOOLS),run-$(tool))
TOOL_RUNASROOT_TARGETS = $(foreach tool,$(TOOLS),runasroot-$(tool))
TOOL_EXPORT_TARGETS = $(foreach tool,$(TOOLS),export-$(tool))


$(TOOL_BUILD_TARGETS): build-% : ./docker/%/Dockerfile
	mkdir -p logs/docker
	export DOCKER_BUILDKIT=1; docker build $(DOCKER_BUILD_OPTS) -t $* docker/$* | tee logs/docker/$*.build.txt

$(TOOL_RUN_TARGETS): run-% :
	docker run $(DOCKER_RUN_OPTS) $*

$(TOOL_RUNASROOT_TARGETS): runasroot-% :
	docker run -it $*

$(TOOL_EXPORT_TARGETS): export-% :
	mkdir -p export
	rm -rf export/$*.tar.gz
	id=$$(docker create $*) ; \
	  docker cp $$id:\build.tar.gz export/$*.tar.gz ; \
	  docker rm -v $$id

build-tools: $(TOOL_BUILD_TARGETS)

# ==============================================================================
# Export openroad tools to a an archive
# ==============================================================================

TIMESTAMP=$(shell date +"%Y-%m-%d_%H-%M")
export-tools: $(TOOL_EXPORT_TARGETS) downloads
	rm -rf export/openroad
	mkdir -p export/openroad/modules/openroad
	for tarFile in $(foreach tool,$(TOOLS),export/$(tool).tar.gz); do \
	  tar -xzf $$tarFile -C export; \
	done
	tar -xzf ../../CI/build/export/utd.tar.gz -C export; \
	mv export/build export/openroad/OpenROAD-$(TIMESTAMP)
	cp $(DOWNLOAD_DIR)/* export/openroad/OpenROAD-$(TIMESTAMP)/bin
	sed 's/@TIMESTAMP@/$(TIMESTAMP)/g' ./modulefile > export/openroad/modules/openroad/$(TIMESTAMP)
	sed 's/@TIMESTAMP@/$(TIMESTAMP)/g' ./versionfile > export/openroad/modules/openroad/.version
	sed 's/@TIMESTAMP@/$(TIMESTAMP)/g' ./setup.sh > export/openroad/setup.sh
	chmod +x export/openroad/setup.sh
	tar -C export -czf export/OpenROAD-$(TIMESTAMP).tar.gz ./openroad


run-image: run/Dockerfile
	export DOCKER_BUILDKIT=1; docker build $(DOCKER_BUILD_OPTS) -t $@ run | tee logs/docker/$@.build.txt

export-tools-docker: export-tools run-image
	docker run \
		-it \
		--mount type=bind,source=$(CURDIR)/export/openroad,target=/openroad \
		--mount type=bind,source=$(CURDIR)/../flow,target=/flow \
		run-image


# NOTE: This does not clean the docker images
clean:
	rm -rf export

docker_prune:
	docker system prune -a -f
