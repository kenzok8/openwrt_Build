#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/kenzok8/litte.git package/litte
Git clone https://github.com/Lienol/openwrt-package.git package/openwrt-package
rm -rf package/litte/luci-app-passwall
rm -rf package/litte/lluci-app-ssr-plus
rm -rf package/litte/microsocks
rm -rf package/litte/redsocks2
rm -rf package/openwrt-package/lienol/luci-theme-bootstrap-mod
sed -i 's/DISTRIB_DESCRIPTION='OpenWrt '/DISTRIB_DESCRIPTION='Lean '/g' package/base-files/files/etc/openwrt_release
sed -i 's/DISTRIB_REVISION='R20.3.11'/DISTRIB_REVISION='small'/g' package/base-files/files/etc/openwrt_release
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
./scripts/feeds update -a
./scripts/feeds install
