# ==============================================================================
# TOOLS DIRECTORIES
# ==============================================================================
TOOLS = yosys Resizer ioPlacer TritonMacroPlace RePlAce pdn tapcell OpenDP TritonCTS TritonRoute FastRoute4-lefdef magic       

# ==============================================================================
# BUILD TOOLS
# ==============================================================================
TOOL_BUILD_TARGETS = $(foreach tool,$(TOOLS),build-$(tool))
$(TOOL_BUILD_TARGETS): build-% : ./module/%/Dockerfile
	docker build -t openroad/$(shell echo $* | tr A-Z a-z) module/$*

build-tools: $(TOOL_BUILD_TARGETS)

# ==============================================================================
# EXPORT TOOLS
# ==============================================================================
export-tools:
	mkdir -p export
	rm -rf export

	# pdn
	mkdir -p export/pdn
	cp -r ./module/pdn/src/PdnPinDumper/build ./export/pdn/

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
