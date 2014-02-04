"""Custom OTA commands for Motorola msm8960 devices"""

def FullOTA_InstallEnd(info):
	info.script.AppendExtra('ifelse(is_substring("XT90", getprop("ro.boot.modelno")), run_program("/sbin/sh", "-c", "busybox mv /system/etc/media_profiles_xt90x.xml /system/etc/media_profiles.xml"));')
	info.script.AppendExtra('ifelse(is_substring("MB886", getprop("ro.boot.modelno")), run_program("/sbin/sh", "-c", "busybox rm /system/etc/nfc* /system/etc/permissoins/*nfc* /system/etc/permissions/*nxp* /system/lib/libnfc* /system/lib/hw/nfc* /system/framework/com.android.nfc_extras.jar /system/app/Nfc.apk /system/priv-app/Tag.apk"));')
	info.script.AppendExtra('delete("/system/bin/media_profiles_xt9xx.xml");')
