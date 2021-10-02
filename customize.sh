#!/bin/bash
#=================================================
shopt -s extglob
sed -i '/	refresh_config();/d' scripts/feeds

#1. Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Custom settings
