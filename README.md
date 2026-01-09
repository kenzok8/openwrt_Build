#### AutoBuild-OpenWrt

##### [docker镜像下载](https://hub.docker.com/r/kenzok8/openwrt-6p/tags)

#### 源码来源

[![immortalwrt](https://img.shields.io/badge/immortalwrt-openwrt-orange.svg?style=flat&logo=appveyor)](https://github.com/immortalwrt/immortalwrt)

##### 固件下载链接

- [immortalwrt-24.10固件](https://op.dllkids.xyz/op/firmware/ctc_25.12/)

### 默认插件包含

- Mosdns
- openclash
- Nikki
- lucky
- KMS 服务器
- UPNP 自动端口转发
- 默认多个主题
- 默认管理 IP: 192.168.1.251, 用户名 root，密码 password
- 修改默认ip

### r2s 包含openlist

```bash
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
```

- 替换终端为bash

```bash
sed -i 's/\/bin\/ash/\/bin\/bash/' package/base-files/files/etc/passwd
```

- 添加新的主题

```bash
git clone https://github.com/kenzok8/luci-theme-ifit.git package/lean/luci-theme-ifit
```

- 添加常用软件包

```bash
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
```

- 删除默认密码

```bash
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings
```

- 取消bootstrap为默认主题

```bash
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
```
