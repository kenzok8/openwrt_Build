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
rm -rf package/lean/luci-theme-argon
sed -i 's/LuCI Master/by kenzo/g' /usr/lib/lua/luci/version.lua
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
./scripts/feeds update -a
./scripts/feeds install
