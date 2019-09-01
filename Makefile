# ==============================================================================
# TOOLS DIRECTORIES
# ==============================================================================
TOOLS = yosys Resizer ioPlacer TritonMacroPlace RePlAce pdn tapcell OpenDP TritonCTS TritonRoute FastRoute4-lefdef magic       

# ==============================================================================
# BUILD TOOLS
# ==============================================================================
TOOL_BUILD_TARGETS = $(foreach tool,$(TOOLS),build-$(tool))
$(TOOL_BUILD_TARGETS): build-% : ./module/%/Dockerfile
	mkdir -p logs/docker
	docker build -t openroad/$(shell echo $* | tr A-Z a-z) module/$*

build-tools: $(TOOL_BUILD_TARGETS)

# ==============================================================================
# EXPORT TOOLS
# ==============================================================================
TOOL_EXPORT_TARGETS = $(foreach tool,$(TOOLS),export-$(tool))
$(TOOL_EXPORT_TARGETS): export-% :
	mkdir -p export
	rm -rf export/$*
	mkdir -p export/$*
	id=$$(docker create openroad/$(shell echo $* | tr A-Z a-z)) ; \
	  docker cp $$id:build/ export/$*/ ; \
	  docker rm -v $$id

export-tools: $(TOOL_EXPORT_TARGETS)

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
