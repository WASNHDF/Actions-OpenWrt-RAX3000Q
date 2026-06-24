#!/bin/bash
# 1. 移除不必要的模块，保持固件轻量
sed -i '/luci-app-diag-core/d' .config
sed -i '/luci-app-statistics/d' .config
sed -i '/luci-app-accesscontrol/d' .config
sed -i '/luci-app-nlbwmon/d' .config

# 2. 仅保留 Argon 主题，移除其它臃肿的主题
sed -i '/luci-theme-bootstrap/d' .config
sed -i '/luci-theme-material/d' .config
sed -i '/luci-theme-openwrt/d' .config

# 3. 确保系统核心功能完好
echo 'CONFIG_PACKAGE_dnsmasq-full=y' >> .config
echo 'CONFIG_PACKAGE_firewall=y' >> .config
