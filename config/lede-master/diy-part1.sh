#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt for Amlogic s9xxx tv box
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/coolsnowwolf/lede / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '2s/^#//;6s/^#//' feeds.conf.default
sed -i '3s/^/#/' feeds.conf.default
# sed -i '6s/^#//' feeds.conf.default
# other
rm -rf package/lean/{luci-app-frpc,luci-app-frps,luci-app-openvpn}

