#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
rm -rf feeds/lienol/lienol/luci-theme-bootstrap-mod
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
sed -i 's/"DISTRIB_DESCRIPTION='OpenWrt '"/"DISTRIB_DESCRIPTION='Lienol '"/g' package/base-files/files/etc/openwrt_release
sed -i 's/"DISTRIB_REVISION='19.07-SNAPSHOT'"/"DISTRIB_REVISION='litte'"/g' package/base-files/files/etc/openwrt_release
