#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# 在 diy-part1.sh 文件中添加以下行：
# 拉取Passwall核心插件
git clone https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
# 拉取luci前端面板
git clone https://github.com/xiaorouji/openwrt-passwall2 package/openwrt-passwall2
# 可选：配套smartdns（原仓库也删了，需要就加上）
git clone https://github.com/pymumu/smartdns package/smartdns
