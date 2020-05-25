#!/bin/bash
#=================================================
# Description: Build OpenWrt using GitHub Actions
# Author: kenzo
# https://github.com/kenzok8
#=================================================
取消注释提供源
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
添加自定义源Lean运行下列命令
sed -i '$a src-git litte https://github.com/kenzok8/litte' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
rm -rf package/lean/luci-app-ssr-plus && rm -rf package/litte/luci-app-ssr-plus
rm -rf package/litte/microsocks && rm -rf package/litte/redsocks2 && rm -rf package/litte/tcpping
date=`date +%m.%d.%Y`
sed -i "s/DISTRIB_DESCRIPTION.*/DISTRIB_DESCRIPTION='%D by kenzo'/g" package/base-files/files/etc/openwrt_release
sed -i "s/# REVISION:=x/REVISION:= $date/g" include/version.mk
./scripts/feeds update -a
./scripts/feeds install -a
