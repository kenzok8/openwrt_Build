#!/bin/bash
#=================================================
# Description: Build OpenWrt using GitHub Actions
# Lisence: MIT
# Author: kenzo
# https://github.com/kenzok8
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
cd lede/package
git clone https://github.com/kenzok8/litte.git
git clone https://github.com/kenzok8/small.git
date=`date +%m.%d.%Y`
sed -i "s/DISTRIB_DESCRIPTION.*/DISTRIB_DESCRIPTION='%D %V %C by GaryPang'/g" package/base-files/files/etc/openwrt_release
sed -i "s/# REVISION:=x/REVISION:= $date/g" include/version.mkootstrap
./scripts/feeds update -a
./scripts/feeds install -a
cd lede
