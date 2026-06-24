#!/bin/bash

# 1. 移除冗余插件 (清理 .config)
sed -i '/luci-app-diag-core/d' .config
sed -i '/luci-app-statistics/d' .config
sed -i '/luci-app-accesscontrol/d' .config
sed -i '/luci-app-nlbwmon/d' .config
sed -i '/luci-theme-bootstrap/d' .config
sed -i '/luci-theme-material/d' .config
sed -i '/luci-theme-openwrt/d' .config
sed -i '/LUCI_LANG_en/d' .config

# 2. 强制添加 PassWall 核心组件
echo 'CONFIG_PACKAGE_luci-app-passwall=y' >> .config
echo 'CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks=y' >> .config
echo 'CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Xray=y' >> .config

# 3. 确保基础功能不被剔除
echo 'CONFIG_PACKAGE_dnsmasq-full=y' >> .config
echo 'CONFIG_PACKAGE_firewall=y' >> .config
