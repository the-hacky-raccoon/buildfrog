#!/bin/bash
set -x

BUILDROOT_VER="2015.08"
TARGET_BOARD_DEFCONFIG="arty-z7_defconfig"

INIT_DIR=$(pwd)
WORKDIR=$(pwd)/work
DEFCONFIGS_DIR=$(pwd)/defconfigs

rm -rf ${WORKDIR} && mkdir -p ${WORKDIR}
cd ${WORKDIR}

wget http://buildroot.uclibc.org/downloads/buildroot-${BUILDROOT_VER}.tar.gz
tar xzvf buildroot-${BUILDROOT_VER}.tar.gz
make BR2_EXTERNAL=$(pwd)/configs ${TARGET_BOARD_DEFCONFIG}

cd ${INIT_DIR}
