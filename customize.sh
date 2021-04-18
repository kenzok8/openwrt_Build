#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Custom settings
#cp -f package/litte/default-settings package/lean/default-settings/files/zzz-default-settings
#cp -f package/litte/banner package/base-files/files/etc/banner
#cp -f package/litte/Leandiffconfig diffconfig && cp diffconfig .config && make defconfig
#./scripts/feeds update -a && ./scripts/feeds install -a && ./scripts/feeds install -a

