#!/bin/bash
# psplibraries.sh by Takeshi Watanabe (takechi101010@gmail.com)

 ## clear CC and CXX
 unset CC
 unset CXX

 ## Exit on errors
 set -e

 ## Download the source code.
 ## Clone from my own fork which disabled openTRI (which i don't care and also fails to build as of 2017).
 clone_git_repo github.com kahdo psplibraries 

 ## Enter the source directory.
 cd psplibraries

 ## Configure the build.
 ./libraries.sh
