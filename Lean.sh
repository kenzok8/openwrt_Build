#!/bin/bash
#=================================================
# Description: Build OpenWrt using GitHub Actions
# Author: kenzo
# https://github.com/kenzok8
#=================================================
#取消注释提供源
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
#添加自定义源Lean运行下列命令
#sed -i '$a src-git litte https://github.com/kenzok8/litte' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
rm -rf package/lean/luci-app-ssr-plus && rm -rf package/litte/luci-app-ssr-plus
rm -rf package/litte/microsocks && rm -rf package/litte/redsocks2 && rm -rf package/litte/tcpping
date=`date +%m.%d.%Y`
cp -f package/litte/default-settings package/*/*/default-settings/files/zzz-default-settings
cp -f package/litte/banner package/*/*/base-files/files/etc/banner
cp -f package/litte/Leandiffconfig diffconfig
./scripts/feeds update -a
./scripts/feeds install -a

