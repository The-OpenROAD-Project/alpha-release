# ==============================================================================
# TOOLS DIRECTORIES
# ==============================================================================
TOOLS = Resizer ioPlacer TritonMacroPlace RePlAce pdn tapcell OpenDP TritonRoute TritonCTS FastRoute4-lefdef yosys

# ==============================================================================
# BUILD TOOLS
# ==============================================================================
TOOL_BUILD_TARGETS = $(foreach tool,$(TOOLS),build-$(tool))
$(TOOL_BUILD_TARGETS): build-% : ./module/%/Dockerfile
	cd module/$* && \
	./jenkins/build.sh && \
	cd ../..

build-tools: $(TOOL_BUILD_TARGETS)

# ==============================================================================
# EXPORT TOOLS
# ==============================================================================
TIMESTAMP=$(shell date +"%Y.%m.%d")

export-tools:
	rm -rf OpenROAD_$(TIMESTAMP)
	mkdir -p OpenROAD_$(TIMESTAMP)

# ==============================================================================
# PUBLISH TO DOCKER HUB
# ==============================================================================
TOOL_PUBLISH_TARGETS = $(foreach tool,$(TOOLS),publish-$(tool))
$(TOOL_PUBLISH_TARGETS): publish-% :
	docker push openroad/$(shell echo $* | tr A-Z a-z)

publish-tools: $(TOOL_PUBLISH_TARGETS)

# ==============================================================================
# CLEAN
# ==============================================================================
clean:
	rm -rf export
	docker system prune -a -f	
