#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
sed -i 's/"DISTRIB_DESCRIPTION='OpenWrt '"/"DISTRIB_DESCRIPTION='small '"/g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/"DISTRIB_REVISION='R20.1.24'"/"DISTRIB_REVISION='litte'"/g' package/lean/default-settings/files/zzz-default-settings
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
./scripts/feeds clean
./scripts/feeds update -a
rm -rf feeds/lienol/package/v2ray
rm -rf feeds/lienol/package/openssl1.1
rm -rf feeds/lienol/package/trojan
rm -rf feeds/lienol/package/ipt2socks
rm -rf feeds/lienol/package/shadowsocksr-libev
rm -rf feeds/lienol/package/pdnsd-alt
rm -rf package/lean/kcptun
rm -rf package/lean/verysync
rm -rf package/lean/luci-app-kodexplorer
rm -rf package/lean/luci-app-pppoe-relay
rm -rf package/lean/luci-app-pptp-server
rm -rf package/lean/luci-app-v2ray-server
rm -rf package/lean/luci-app-verysync
./scripts/feeds install
