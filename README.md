# OpenROAD Alpha Release
[![Gitter](https://badges.gitter.im/The-OpenROAD-Project/community.svg)](https://gitter.im/The-OpenROAD-Project/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)


## Introduction
The OpenROAD ("Foundations and Realization of Open, Accessible Design") project was launched in June 2018 within the DARPA IDEA program. OpenROAD aims to bring down the barriers of cost, expertise and unpredictability that currently block designers' access to hardware implementation in advanced technologies. The project team (Qualcomm, Arm and multiple universities and partners, led by UC San Diego) is developing a fully autonomous, open-source tool chain for digital layout generation across die, package and board, with initial focus on the RTL-to-GDSII phase of system-on-chip design. Thus, OpenROAD holistically attacks the multiple facets of today's design cost crisis:  engineering resources, design tool licenses, project schedule, and risk.

The IDEA program targets no-human-in-loop (NHIL) design, with 24-hour turnaround time and eventual zero loss of power-performance-area (PPA) design quality. No humans means that tools must adapt and self-tune, and never get stuck: thus, machine intelligence must replace today's human intelligence within the layout generation process. 24 hours means that problems must be aggressively decomposed into bite-sized subproblems for the design process to remain within the schedule constraint. Eventual zero loss of PPA quality requires parallel and distributed search to recoup the solution quality lost by problem decomposition.

For a technical description of the OpenROAD flow, please refer to our DAC paper: [Toward an Open-Source Digital Flow: First Learnings from the OpenROAD Project](https://vlsicad.ucsd.edu/Publications/Conferences/371/c371.pdf). Also, available from ACM Digital Library ([doi:10.1145/3316781.3326334](https://dl.acm.org/citation.cfm?id=3326334))

## Code Organization
This repository serves 2 purposes:
1. **Build**: It builds all tools that contribute to the flow in independent docker images. The tools are then combined into a single bundle and made available in the ["releases"](https://github.com/The-OpenROAD-Project/alpha-release/releases) section of the repository

2. **Flow**: It contains reference recipes and scripts to run designs through the flow. It also contains platforms and test designs.

The actual tools can be found in their respective repositories in [The OpenROAD Project](https://github.com/The-OpenROAD-Project) organization.

## Setup
:warning: At this time, we are currently recommending the use of pre-compiled binaries for CentOS 6/7. We plan to address some immediate build/install issues while we overhaul the tools to make them more cohesive. Support for newer unix distributions is also planned.

- See instructions in the build [README](build) on building and assembling all of the OpenROAD tools into a package.

- See instructions in the build [README](build#installing-builds) on how to install a pre-compiled package unto a Linux system

## Getting Started
See the flow [README](flow#running-the-flow) for details about the flow and how to run designs through the flow


## Useful resources
Your feedback is very welcome.
- **Website**: Visit our [website](https://theopenroadproject.org/) for more informaiton on the project, participants and objectives.
- **GitHub Issues**: Please submit GitHub issues for any bugs, improvements, or new feature requests. Feedback can be directed at this repository or the repositry for the tool, component or design as appropriate. This [link](https://github.com/issues?utf8=%E2%9C%93&q=is%3Aopen+archived%3Afalse+user%3AThe-OpenROAD-Project+) is an aggregate of all OpenROAD related issues
- **Community**: Find us on the public [Gitter community](https://gitter.im/The-OpenROAD-Project/community) where you can ask quick questions or discuss anything OpenROAD related.


## Contributing
We welcome any comments, patches and designs to help us improve the tool.
At this time we are focused on overhauling the build process, build testing, and the continous integration framework. This will set us up for better integration with contributers. Please stay tuned.

## License
The alpha-release repository (build and run scripts) has a BSD 3-Clause License. The flow relies on several tools, platforms and designs that each have their own licenses:
- Find the tool license at: `build/docker/{tool}/`
- Find the platform license at: `flow/platforms/{platform}/`
- Find the design license at: `flow/designs/src/{platform}/`

