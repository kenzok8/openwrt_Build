#!/bin/bash
#=============================================================
#取消注释提供源
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

添加自定义源
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default