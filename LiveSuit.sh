#!/bin/bash

# if [ ]
# then
# sudo dpkg -i ./libpng12-0_1.2.49-1+deb7u2_amd64.deb
# fi

APP=LiveSuit
TOP_DIR=`pwd`

MACHINE=$(uname -m)
if [ ${MACHINE} == 'x86_64' ]; then
	BIN_DIR="x86-64"	
elif [ ${MACHINE} == 'i686' ]; then
	BIN_DIR="x86"
else
	echo "Error: unknown architecture ${MACHINE}"
	exit
fi

echo "Starting ${BIN_DIR}/${APP}."
echo ""

LD_LIBRARY_PATH=${TOP_DIR}/${BIN_DIR}/ ${BIN_DIR}/${APP}
