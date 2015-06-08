#!/bin/bash
mkdir build
cd build
build_dir=$PWD
inc_dir=${build_dir%%/}/include
lib_dir=${build_dir%%/}/lib
pkg_dir=${lib_dir%%/}/pkgconfig
PKG_CONFIG_PATH=${pkg_dir}:$PKG_CONFIG_PATH
# export CXXFLAGS=-std=c++11
# configure and install CoinUtils
mkdir CoinUtils
cd CoinUtils
../../CoinUtils/configure --prefix=$build_dir
make -j 10 install
cd ..
# configure and install Osi
mkdir Osi
cd Osi
../../Osi/configure --prefix=$build_dir
make -j 10 install
cd ..
# configure and install Clp
mkdir Clp
cd Clp
../../Clp/configure --prefix=$build_dir
make -j 10 install
cd ..
#configure and install OsiConic
mkdir OsiConic
cd OsiConic
../../OsiConic/configure --prefix=$build_dir
make -j 10 install
cd ..
#configure and install Coin-OR Cgl
mkdir Cgl
cd Cgl
../../Cgl/configure --prefix=$build_dir
make -j 10 install
cd ..
# configure and install CglConic
mkdir CglConic
cd CglConic
../../configure --prefix=$build_dir
make -j 10 install
cd ..
