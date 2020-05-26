#!/bin/bash
#=================================================
# Description: Build OpenWrt using GitHub Actions
# Author: kenzo
# https://github.com/kenzok8
#=================================================
取消注释提供源
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
添加自定义源
sed -i '$a src-git litte https://github.com/kenzok8/litte' feeds.conf.default
rm -rf package/lienol/luci-app-passwall && rm -rf package/lean/luci-app-ssr-plus && rm -rf package/litte/luci-app-ssr-plus
rm -rf package/litte/microsocks && rm -rf package/litte/redsocks2 && rm -rf package/litte/tcpping
rm -rf package/litte/adguardhome && rm -rf package/litte/luci-app-adguardhome
rm -rf package/litte/luci-app-advancedsetting && rm -rf package/litte/luci-app-aliddns && rm -rf package/litte/luci-app-clash
rm -rf package/litte/gost && rm -rf package/litte/luci-app-gost && rm -rf package/litte/luci-app-eqos
rm -rf package/ctcgfw/luci-app-openclash && rm -rf package/litte/luci-app-smartdns && rm -rf package/litte/smartdns
rm -rf package/ctcgfw/luci-theme-atmaterial && rm -rf package/ctcgfw/luci-theme-opentomato && rm -rf package/ctcgfw/luci-theme-opentomcat
date=`date +%m.%d.%Y`
sed -i "s/DISTRIB_DESCRIPTION.*/DISTRIB_DESCRIPTION='%D by kenzo'/g" package/base-files/files/etc/openwrt_release
sed -i "s/# REVISION:=x/REVISION:= $date/g" include/version.mk
cp -f default-settings package/*/*/default-settings/files/zzz-default-settings
./scripts/feeds update -a
./scripts/feeds install -a
