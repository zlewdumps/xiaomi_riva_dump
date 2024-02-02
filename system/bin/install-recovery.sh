#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:31937870:28c19329eca70d6b05cc121eb4907748bd5e989f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:30496074:a6b2996e95c0dd2e944987776e3b0f86b182a15b EMMC:/dev/block/bootdevice/by-name/recovery 28c19329eca70d6b05cc121eb4907748bd5e989f 31937870 a6b2996e95c0dd2e944987776e3b0f86b182a15b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
