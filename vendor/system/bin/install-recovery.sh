#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 13932544 17ee1f825f9c88e2ee23b18394d7487e50970d6e 9797632 285ca6ee3d25bb2c7e64a332e017e1103f935a94
fi
if ! applypatch -c EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS:13932544:17ee1f825f9c88e2ee23b18394d7487e50970d6e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdhci-tegra.3/by-name/LNX:9797632:285ca6ee3d25bb2c7e64a332e017e1103f935a94 EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS 17ee1f825f9c88e2ee23b18394d7487e50970d6e 13932544 285ca6ee3d25bb2c7e64a332e017e1103f935a94:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
