
## Testing Layout
![alt text](docs/flow.png "flow")

## Running the Flow
1. Clone the repository
```
git clone https://github.com/The-OpenROAD-Project/alpha-release
cd flow
```
2. An OpenROAD release must be setup to run the tests. More info in the build [README](../build/README.md)
3. Update the top of the Makefile to point to a design configuration file. Sample desgin configurations are available in the `designs` directory.
4. Run `make` to peform verilog to gds


## Customizing for designs
The flow runs all of the steps sequentially to achieve Verilog to GDS. There is an initial platform/kit  (e.g. FreePDK45, TSMC65) setup required in order to use the OpenROAD flow. See sample kit setup in the `kits` directory.

Once the platform is setup. Create a new design configuration with information about the design.  See sample configurations in the `design` directory