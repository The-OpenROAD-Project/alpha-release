DOCKER_BUILD_OPTS ?= --rm
# DOCKER_BUILD_OPTS ?= --rm --ssh default
DOCKER_BUILD_OPTS += --no-cache

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
# Build Tools
# ==============================================================================
TOOLS = yosys tapcell replace magic cts ioplacer pdn opendp resizer route macroplacer fastroute

TOOL_BUILD_TARGETS = $(foreach tool,$(TOOLS),build-$(tool))
TOOL_RUN_TARGETS = $(foreach tool,$(TOOLS),run-$(tool)) run-final
TOOL_RUNASROOT_TARGETS = $(foreach tool,$(TOOLS),runasroot-$(tool)) runasroot-final
TOOL_EXPORT_TARGETS = $(foreach tool,$(TOOLS),export-$(tool))


$(TOOL_BUILD_TARGETS): build-% : ./docker/%/Dockerfile
	mkdir -p logs/docker
	export DOCKER_BUILDKIT=1; docker build $(DOCKER_BUILD_OPTS) -t $* docker/$* | tee logs/docker/$*.build.txt


build-final: build-% : ./export/Dockerfile
	mkdir -p logs/docker
	export DOCKER_BUILDKIT=1; \
	  VERSION=$(subst .tar.gz,,$(subst export/OpenROAD-,,$(wildcard export/OpenROAD-*.tar.gz))); \
	  docker build $(DOCKER_BUILD_OPTS) --build-arg VERSION=$$VERSION -t openroad/alpha-release:$$VERSION ./export | tee logs/docker/$*.build.txt
	  docker tag openroad/alpha-release openroad/alpha-release:latest

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
export-tools: $(TOOL_EXPORT_TARGETS)
	rm -rf export/openroad export/build export/OpenROAD*.tar.gz
	mkdir -p export/openroad/modules/openroad
	for tarFile in $(foreach tool,$(TOOLS),export/$(tool).tar.gz); do \
	  tar -xzf $$tarFile -C export; \
	done
	mv export/build export/openroad/OpenROAD-$(TIMESTAMP)
	sed 's/@TIMESTAMP@/$(TIMESTAMP)/g' ./modulefile > export/openroad/modules/openroad/$(TIMESTAMP)
	sed 's/@TIMESTAMP@/$(TIMESTAMP)/g' ./versionfile > export/openroad/modules/openroad/.version
	sed 's/@TIMESTAMP@/$(TIMESTAMP)/g' ./setup.sh > export/openroad/setup.sh
	chmod +x export/openroad/setup.sh
	tar -C export -czf export/OpenROAD-$(TIMESTAMP).tar.gz ./openroad


# NOTE: This does not clean the docker images
clean:
	rm -rf export

docker_prune:
	docker system prune -a -f
