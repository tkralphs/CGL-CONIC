#!/bin/bash

# get blas
svn co https://projects.coin-or.org/svn/BuildTools/ThirdParty/Blas/stable/1.4 ThirdParty/Blas
# get lapack
svn co https://projects.coin-or.org/svn/BuildTools/ThirdParty/Lapack/stable/1.5 ThirdParty/Lapack
# get coin-or coinutils
svn co https://projects.coin-or.org/svn/CoinUtils/stable/2.10/CoinUtils
# get coin-or osi
svn co https://projects.coin-or.org/svn/Osi/stable/0.107/Osi
# get coin-or cgl
svn co https://projects.coin-or.org/svn/Cgl/releases/0.59.5/Cgl
# get coin-or clp
svn co https://projects.coin-or.org/svn/Clp/stable/1.16/Clp
# get cola
git clone https://github.com/aykutbulut/COLA
# get osiconic
git clone https://github.com/aykutbulut/OSI-CONIC OsiConic