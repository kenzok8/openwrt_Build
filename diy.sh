#!/bin/bash
#=================================================
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
#取消注释提供源
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
添加自定义源
sed -i '$a src-git small https://github.com/kenzok8/small.git' feeds.conf.default
sed -i '$a src-git litte https://github.com/kenzok8/litte.git' feeds.conf.default
date=`date +%m.%d.%Y`
sed -i "s/DISTRIB_DESCRIPTION.*/DISTRIB_DESCRIPTION='%D by kenzo'/g" package/base-files/files/etc/openwrt_release
sed -i "s/# REVISION:=x/REVISION:= $date/g" include/version.mk
cp -f default-settings package/*/*/default-settings/files/zzz-default-settings
./scripts/feeds update -a
./scripts/feeds install

