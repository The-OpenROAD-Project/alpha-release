
# Builds

## Building and Exporting Tools
:warning: At this time, we are currently recommending the use of precompiled binaries for Centos 6.  See [README on installing builds](#installing-builds).We plan to address some immediate build/install issues and are working to overhaul the tools to make them more cohesive. Support for newer linux distributions is also planned. We welcome any patches to improve support for other Linux distributions and operating systems as long as they do not overly complicate the build process.

The build framework has a dependency on docker.  Run the following commands to build an export which will bundle all the tool binaries into a single archive:
```bash
git clone git@github.com:The-OpenROAD-Project/alpha-release.git
cd build
make build-tools
make export-tools
```
The export and archive will be placed in the `exports` directory. The final archive will be named OpenROAD-XXXX-XX-XX_XX-XX.tar.gz indicating the build timestamp.
It can optionally be uploaded to the github [releases](https://github.com/The-OpenROAD-Project/alpha-release/releases) of the alpha-release.

Other interesting make targets:

- `make build-%` This will build the specified tool (e.g. yosys, utd, replace, etc)
- `make run-%` This will run the specified tool image with a `$USER` session inside the image
- `make runasroot-%` This will run the specified tool image with a root session inside the image
- `make export-tools` This will create a tar.gz export of all tools

## Building Runtime Docker image
To ease deployment of the tools, we also support the creation of a single docker image with all the tools setup. This is a clean docker image with the tar package installed. To build this image (after building/exporting the tools above), run the following commands form the `build` directory:
```bash
make build-final
```
The docker image can be uploaded to docker hub. A local login and permisisons to dockerhub is required. The images should already be tagged appropriately. Push the image by running `docker push openroad/alpha-release`


## Installing Builds
The builds can be installed to any Redhad 6/7 based machine. We recommend using CentOS 6.10-minimal to run a build.
Download a build (`OpenROAD-XXXX-XX-XX_XX-XX.tar.gz`) from the [release](https://github.com/The-OpenROAD-Project/alpha-release/releases) tab and perform the following steps to install.

### Prerequisites on run system
1. Python3 (and the following packages: queuelib, matplotlib)
1. tcl8.5 & tk8.5
1. libreadline6 for yosys
1. libffi.so.5 for yosys

### Install procedure
```bash
tar -xzf Openroad{version}.tar.gz
cd openroad
source setup.sh
```
Once installed, all OpenROAD binaries should now be in your system path. You can add the `source` command to your shell startup script (e.g. `~/.bashrc`).

## Running From Docker
You can pull a docker image which will have the tools and all dependencies pre-installed. To do this, you will need docker installed and have rights to run docker images. The docker image is versioned aligned with the releases.

Follow these instructions to get started
1. **Pull the latest docker image**
```bash
docker pull openroad/alpha-release
```
2. **Run the docker image** The following command will run the image as root:
```bash
docker run -i -t  openroad/alpha-release
```
3. You should now be able to clone the flow (this repository) or map to it and run the tools from the docker image. See instructions in the flow directory for this.
