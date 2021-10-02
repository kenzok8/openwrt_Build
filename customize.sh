#!/bin/bash
#=================================================
shopt -s extglob
sed -i '/	refresh_config();/d' scripts/feeds

sma=$(date "+%Y-%m-%d")
sed -i "s/DISTRIB_DESCRIPTION.*/DISTRIB_DESCRIPTION=\"0penwrt by kenzo'\"/g" package/base-files/files/etc/openwrt_release
sed -i "s/DISTRIB_REVISION.*/DISTRIB_REVISION=\"$sma'\"/g" package/base-files/files/etc/openwrt_release

#Lean设置
sed -i "s/LuCI Master.*/LuCI Master=\"kenzo'\"/g" package/lean/default-settings/files/zzz-default-settings
sed -i "s/luciversion.*/luciversion=\"Sept'\"/g" package/lean/default-settings/files/zzz-default-settings
#ctc设置
sed -i "s/LuCI openwrt-18.06 branch.*LuCI openwrt-18.06 branch=\"kenzo'\"/g" package/emortal/default-settings/files/zzz-default-settings
sed -i "s/LuCI openwrt-21.02 branch.*LuCI openwrt-21.02 branch=\"kenzo'\"/g" package/emortal/default-settings/files/zzz-default-settings
sed -i "s/luciversion.*luciversion=\"Sept'\"/g" package/emortal/default-settings/files/zzz-default-settings
#Lienol设置
sed -i "s/17.01 Lienol.*/17.01 Lienol=\"kenzo'\"/g" package/default-settings/files/zzz-default-settings
sed -i "s/luciversion.*/luciversion=\"Sept'\"/g" package/default-settings/files/zzz-default-settings
