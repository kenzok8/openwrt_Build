#!/bin/bash
#=================================================
# Description: Build OpenWrt using GitHub Actions
# Author: kenzo
# https://github.com/kenzok8
#=================================================
rm -rf package/litte/microsocks && rm -rf package/litte/redsocks2 && rm -rf package/litte/tcpping
cp -f package/litte/default-settings package/lean/default-settings/files/zzz-default-settings
cp -f package/litte/banner package/base-files/files/etc/banner
cp -f package/litte/Leandiffconfig .config && make defconfig
./scripts/feeds update -a
./scripts/feeds install -a


