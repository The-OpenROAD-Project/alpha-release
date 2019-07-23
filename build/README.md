# Builds

## Creating Builds
:warning: At this time, we are currently recommending the use of precompiled binaries for Centos 6. See [README on installing builds](#installing-builds)

The build framework has a dependency on docker. You will need docker Docker 18.09 (or later) installed. It is also necessary to setup an ssh-agent. You can run `ssh-add -L` to check if the agent is setup or `eval $(ssh-agent -s)` to start the agent

Run the following commands to build an export
```bash
git clone git@github.com:The-OpenROAD-Project/alpha-release.git
cd build
make build-tools
make export-tools
```

Once the export is built (in the exports directory), it can be uploaded to the github [releases](https://github.com/The-OpenROAD-Project/alpha-release/releases).

Other interesting make targets

- `make build-%` This will build the specified tool (e.g. yosys, utd, replace, etc)
- `make run-%` This will run the specified tool image with a `$USER` session inside the image
- `make runasroot-%` This will run the specified tool image with a root session inside the image
- `make export-tools` This will create a tar.gz export of all tools

## Builds test
To ease use, we support a simple docker image.
```bash
git clone git@github.com:The-OpenROAD-Project/alpha-release.git
cd build
make build-tools
make export-tools-docker
```
- `make export-tools-docker` This will build a docker image for test and generate a new docker container to test the compiled binaries.

The `make export-tools-docker` will generate a new bash shell that a user can test.
Type below commands to test your compiled binaries in a docker shell.
```scl enable rh-python35 bash
source /openroad/setenv.sh
cd /flow/
make clean_all
make
```


## Installing Builds
The builds can be installed to any Redhad 6 based machine. We recommend using CentOS 6.10-minimal to run a build.
Download a build (`OpenROAD-XXXX-XX-XX_XX-XX.tar.gz`) from the [release](https://github.com/The-OpenROAD-Project/alpha-release/releases) tab and perform the following steps to install.

### Prerequisites on run system
1. Python3 (and the following libraries: queuelib, matplotlib)
1. tcl8.5 & tk8.5
1. libreadline6 for yosys
1. libffi.so.5 for yosys

### Install procedure
```
tar -xzf Openroad{version}.tar.gz
cd openroad
source setup.sh
```
Once installed, all OpenROAD binaries should now be in your system path.
