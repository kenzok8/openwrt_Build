#!/bin/bash
#=================================================
# Description: Build OpenWrt using GitHub Actions
# Lisence: MIT
# Author: kenzo
# https://github.com/kenzok8
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/kenzok8/litte.git package/litte
git clone https://github.com/kenzok8/small.git package/small
rm -rf package/litte/microsocks && rm -rf package/litte/redsocks2 && rm -rf package/litte/tcpping
date=`date +%m.%d.%Y`
sed -i "s/DISTRIB_DESCRIPTION.*/DISTRIB_DESCRIPTION='%D %V %C by kenzo'/g" package/base-files/files/etc/openwrt_release
sed -i "s/# REVISION:=x/REVISION:= $date/g" include/version.mk
cp -f default-settings package/*/*/default-settings/files/zzz-default-settings
./scripts/feeds update -a
./scripts/feeds install
