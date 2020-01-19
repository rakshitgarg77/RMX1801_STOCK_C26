#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:35833112:e702efbedb2df1a8876522b94396ff59b2c948e6; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:12793108:61da238522173eeef7b51c5de5d233d841e297ca EMMC:/dev/block/bootdevice/by-name/recovery e702efbedb2df1a8876522b94396ff59b2c948e6 35833112 61da238522173eeef7b51c5de5d233d841e297ca:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
