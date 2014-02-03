"""Custom OTA commands for Motorola msm8960 devices"""

def FullOTA_InstallEnd(info):
	info.script.AppendExtra('ifelse(is_substring("XT90", getprop("ro.boot.modelno")), run_program("/sbin/sh", "-c", "busybox mv /system/etc/media_profiles_xt9xx.xml /system/etc/media_profiles.xml"));')
	info.script.AppendExtra('delete("/system/bin/media_profiles_xt9xx.xml");')
