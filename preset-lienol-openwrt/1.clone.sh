#!/bin/sh

# download base code
CODE_DIR=_firmware_code
CODE_URL=https://github.com/Lienol/openwrt
CODE_BRANCH=23.05
git clone --depth 1 -b $CODE_BRANCH $CODE_URL $CODE_DIR
mv ./$CODE_DIR/* ./

# download app codes
mkdir -p package/_supply_packages && cd package/_supply_packages
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config.git
git clone --depth 1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth 1 https://github.com/Ausaci/luci-app-nat6-helper.git
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git pw-dependencies
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git && mv openwrt-passwall/luci-app-passwall ./ && rm -rf openwrt-passwall
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2.git && mv openwrt-passwall2/luci-app-passwall2 ./ && rm -rf openwrt-passwall2
git clone --depth 1 https://github.com/vernesong/OpenClash.git && mv OpenClash/luci-app-openclash ./ && rm -rf OpenClash
