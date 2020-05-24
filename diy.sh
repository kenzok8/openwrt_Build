#!/bin/bash
#=================================================
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
cd package/lean
svn co https://github.com/kenzok8/litte/trunk/luci-app-passwall
svn co https://github.com/kenzok8/litte/trunk/luci-app-openclash
svn co https://github.com/kenzok8/litte/trunk/luci-app-smartdns
svn co https://github.com/kenzok8/litte/trunk/luci-app-ssr-plus
svn co https://github.com/kenzok8/litte/trunk/luci-theme-argon-dark-new
svn co https://github.com/kenzok8/litte/trunk/luci-theme-argon_new
svn co https://github.com/kenzok8/litte/trunk/luci-theme-atmaterial
svn co https://github.com/kenzok8/litte/trunk/luci-theme-opentomato
svn co https://github.com/kenzok8/litte/trunk/luci-theme-opentomcat
svn co https://github.com/kenzok8/litte/trunk/luci-app-clash
svn co https://github.com/kenzok8/litte/trunk/luci-app-aliddns
svn co https://github.com/kenzok8/litte/trunk/luci-app-advancedsetting
svn co https://github.com/kenzok8/litte/trunk/luci-app-adguardhome
svn co https://github.com/kenzok8/litte/trunk/adguardhome
svn co https://github.com/kenzok8/litte/trunk/gost
svn co https://github.com/kenzok8/litte/trunk/luci-app-eqos
svn co https://github.com/kenzok8/litte/trunk/luci-app-gost
svn co https://github.com/kenzok8/litte/trunk/default-settings
svn co https://github.com/kenzok8/small/trunk/chinadns-ng
svn co https://github.com/kenzok8/small/trunk/dns2socks
svn co https://github.com/kenzok8/small/trunk/ipt2socks
svn co https://github.com/kenzok8/small/trunk/kcptun
svn co https://github.com/kenzok8/small/trunk/pdnsd-alt
svn co https://github.com/kenzok8/small/trunk/simple-obfs
svn co https://github.com/kenzok8/small/trunk/tcping
svn co https://github.com/kenzok8/small/trunk/v2ray-plugin
svn co https://github.com/kenzok8/small/trunk/brook
date=`date +%m.%d.%Y`
sed -i "s/DISTRIB_DESCRIPTION.*/DISTRIB_DESCRIPTION='%D %V %C by kenzo'/g" package/base-files/files/etc/openwrt_release
sed -i "s/# REVISION:=x/REVISION:= $date/g" include/version.mk
cp -f default-settings package/*/*/default-settings/files/zzz-default-settings
./scripts/feeds update -a
./scripts/feeds install

