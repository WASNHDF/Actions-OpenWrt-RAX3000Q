#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# 删除服务菜单多余插件
sed -i '/CONFIG_PACKAGE_luci-app-watchcat/d' .config
sed -i '/CONFIG_PACKAGE_luci-app-wol/d' .config
sed -i '/CONFIG_PACKAGE_luci-app-kms/d' .config
sed -i '/CONFIG_PACKAGE_luci-app-frpc/d' .config
sed -i '/CONFIG_PACKAGE_luci-app-natmap/d' .config
sed -i '/CONFIG_PACKAGE_luci-app-upnp/d' .config
sed -i '/CONFIG_PACKAGE_luci-app-xunlei/d' .config
sed -i '/CONFIG_PACKAGE_luci-app-ddns-go/d' .config
# 加速克隆Passwall核心
git clone https://mirror.ghproxy.com/https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
git clone https://mirror.ghproxy.com/https://github.com/xiaorouji/openwrt-passwall2 package/openwrt-passwall2
