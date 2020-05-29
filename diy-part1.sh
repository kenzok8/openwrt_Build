#!/bin/bash
#=============================================================
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (更新Feed之前)
# Lisence: kenzo
#=============================================================

# 取消注释源
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加自定义源
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git litte https://github.com/kenzok8/litte' feeds.conf.default
