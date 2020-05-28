#!/bin/bash
#=================================================
# Description: Build OpenWrt using GitHub Actions
# Author: kenzo
# https://github.com/kenzok8
#=================================================
rm -rf package/litte/adguardhome && rm -rf package/litte/luci-app-adguardhome
cp -f package/litte/zzz-default-settings package/default-settings/files/zzz-default-settings
cp -f package/litte/banner package/base-files/files/etc/banner
cp -f package/litte/Lienoldiffconfig .config && make defconfig
./scripts/feeds update -a
./scripts/feeds install -a



