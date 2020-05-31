#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 12537856 2fc3f8359a8f507847e300cf294e4ed878fe4032 8404992 e772edba43808d874b4c0b1f2d5ac15c2bb55fa6
fi
if ! applypatch -c EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS:12537856:2fc3f8359a8f507847e300cf294e4ed878fe4032; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdhci-tegra.3/by-name/LNX:8404992:e772edba43808d874b4c0b1f2d5ac15c2bb55fa6 EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS 2fc3f8359a8f507847e300cf294e4ed878fe4032 12537856 e772edba43808d874b4c0b1f2d5ac15c2bb55fa6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
