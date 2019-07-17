# OpenROAD Release
## Introduction
The OpenROAD (“Foundations and Realization of Open, Accessible Design”) project was launched in June 2018 within the DARPA IDEA program. OpenROAD aims to bring down the barriers of cost, expertise and unpredictability that currently block designers’ access to hardware implementation in advanced technologies. The project team (Qualcomm, Arm and multiple universities and partners, led by UC San Diego) is developing a fully autonomous, open-source tool chain for digital layout generation across die, package and board, with initial focus on the RTL-to-GDSII phase of system-on-chip design. Thus, OpenROAD holistically attacks the multiple facets of today’s design cost crisis:  engineering resources, design tool licenses, project schedule, and risk.

The IDEA program targets no-human-in-loop (NHIL) design, with 24-hour turnaround time and eventual zero loss of power-performance-area (PPA) design quality. No humans means that tools must adapt and self-tune, and never get stuck: thus, machine intelligence must replace today’s human intelligence within the layout generation process. 24 hours means that problems must be aggressively decomposed into bite-sized subproblems for the design process to remain within the schedule constraint. Eventual zero loss of PPA quality requires parallel and distributed search to recoup the solution quality lost by problem decomposition. 


## Build
:warning: At this time, we are currently recommending the use of precompiled binaries for Centos 6/7. See [README on installing builds](build#installing-builds)

See the build [README](build#creating-builds) on how to build and assembling all of the OpenROAD tools into a package.

## Install
See instructions in the build [README](build#installing-builds) on how to install a pre-compiled package unto a Linux system

## Running
See instructions in the flow [README](flow#running-the-flow) on how to run/test the flow
