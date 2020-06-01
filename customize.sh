#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: kenzo
#=================================================
echo '修改机器名称'
sed -i 's/OpenWrt/Kenzo/g' package/base-files/files/bin/config_generate

echo '修改网关地址'
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate

echo '修改默认主题'
sed -i 's/config internal themes/config internal themes\n    option Argon  \"\/luci-static\/argon\"/g' feeds/luci/modules/luci-base/root/etc/config/luci

echo '去除默认bootstrap主题'
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

echo '删除旧版argon,链接新版'
rm -rf ./package/lean/luci-theme-argon
ln -s ../../../luci-theme-argon ./package/lean/

#echo '修改wifi名称'
#sed -i 's/OpenWrt/G-DOCK/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#echo '下载自定义插件'
#git clone https://github.com/tty228/luci-app-serverchan ../diy/luci-app-serverchan
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-passwall

#echo '集成diy目录'
#ln -s ../../diy ./package/openwrt-packages