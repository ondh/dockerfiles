#!/usr/bin/env bash
set -x
print_section() {
  printf "\n# $1\n"
}

print_status () {
  printf "\n## $1\n\n"
}

DIR_INPUT="/input"
DIR_OUTPUT="/output"
DIR_TOOLS="/wow/bin"

# Ensure directories exist
mkdir ${DIR_INPUT} ${DIR_OUTPUT}
cd ${DIR_INPUT}
print_section "- Building Tools"
  print_status "1.mapextractor"
    ${DIR_TOOLS}/mapextractor
  print_status "2.vmaps"
    ${DIR_TOOLS}/vmap4extractor
    mkdir vmaps
    ${DIR_TOOLS}/vmap4assembler Buildings vmaps
  print_status "3.mmaps"
    mkdir mmaps
    ${DIR_TOOLS}/mmaps_generator
  print_status "4.clean"
    mv dbc ${DIR_OUTPUT}
    mv maps ${DIR_OUTPUT}
    mv vmaps ${DIR_OUTPUT}
    mv mmaps ${DIR_OUTPUT}
    rm -rf Buildings
    rm -rf Cameras