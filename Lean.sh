#!/bin/bash
#=================================================
# Description: Build OpenWrt using GitHub Actions
# Author: kenzo
# https://github.com/kenzok8
#=================================================
cp -f package/litte/default-settings package/*/*/default-settings/files/zzz-default-settings
cp -f package/litte/banner package/base-files/files/etc/banner
#cp -f package/litte/Leandiffconfig diffconfig && cp diffconfig .config && make defconfig
./scripts/feeds update -a && ./scripts/feeds install -a && ./scripts/feeds install -a


