## 搭建教程

[esir 仓库地址](https://github.com/esirplayground/AutoBuild-OpenWrt.git)

*   四合一固件编译，若fork本人仓库，进入你仓库地址按右上角Star,触发编译
*   四合一固件编译，一次性编译
*   Lean  的源码(4.19.1**) 更换内核
*   Lienol的源码(4.14.20*) 
*   ctc te的源码(4.19.16*)
*   NanoPi_R2S源码
##### 固件下载链接

- [Lienol4.14内核固件](https://github.com/kenzok8/LEDE-x86_64/actions?query=workflow%3ALienol_x86_64)
- [Lean5.4内核固件地址](https://github.com/kenzok8/LEDE-x86_64/actions?query=workflow%3ALean_5.4.7.%2A)
- [Lean4.19内核固件地址](https://github.com/kenzok8/LEDE-x86_64/actions?query=workflow%3ALean_x86_64)
- [ctc4.19内核固件下载](https://github.com/kenzok8/LEDE-x86_64/actions?query=workflow%3Actc_x86_64)
- [NanoPi_R2S固件下载](https://github.com/kenzok8/LEDE-x86_64/actions?query=workflow%3ANanoPi_R2S)

### 默认插件包含:

+ SSR Plus 
+ passwall
+ clash
+ openclash
+ AdguardHome DNS+恶意网址过滤 （打包在ipk文件里）
+ 动态DDNS
+ 京东签到
+ SmartDNS 域名解析加速+抗污染 （打包在ipk文件里）
+ UPNP 自动端口转发
+ Netdata 全能性能监控
+ Turbo ACC 网络加速
+ Mwan3 负载均衡
+ 默认多个主题
+ 默认管理 IP: 192.168.3.1, 用户名 root，密码 password

* 修改默认ip

```bash
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
```
* 删除原主题	
```bash
rm -rf package/lean/luci-theme-argon
```

* 添加新的主题
```bash
git clone https://github.com/kenzok8/luci-theme-atmaterial.git package/lean/luci-theme-atmaterial
```
* 添加常用软件包
```bash
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
```
* 删除默认密码
```bash
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings
```

* 取消bootstrap为默认主题	
```bash
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
```


