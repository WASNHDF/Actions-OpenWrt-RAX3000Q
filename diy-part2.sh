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
# 1. 移除不必要的诊断和系统监控工具
sed -i '/luci-app-diag-core/d' .config
sed -i '/luci-app-statistics/d' .config

# 2. 移除多余的复杂功能（如网速限制、访问控制等）
sed -i '/luci-app-accesscontrol/d' .config
sed -i '/luci-app-nlbwmon/d' .config

# 3. 移除多余的主题（仅保留 argon 主题，你可以按需调整）
sed -i '/luci-theme-bootstrap/d' .config
sed -i '/luci-theme-material/d' .config
sed -i '/luci-theme-openwrt/d' .config

# 4. 移除所有语言包，仅保留中文
sed -i '/LUCI_LANG_en/d' .config
