#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:15213472:0f5c9f67e1c0e5182e2e6f642ec50f811a6b5cc8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:11021216:8a5066c46211a8b34c357f25a3c21ab93cf5c110 EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 0f5c9f67e1c0e5182e2e6f642ec50f811a6b5cc8 15213472 8a5066c46211a8b34c357f25a3c21ab93cf5c110:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
