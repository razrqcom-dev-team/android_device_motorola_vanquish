$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/motorola/msm8960-common/msm8960.mk)

LOCAL_PATH := device/motorola/vanquish

# vanquish specific overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi

# Use common media profile
TARGET_USES_MOTOROLA_MSM8960_COMMON_MEDIA_PROFILES := true

# Nfc
PRODUCT_PACKAGES += \
    nfc.msm8960

#sqlite3
PRODUCT_PACKAGES += \
    sqlite3

# Stk
PRODUCT_PACKAGES += \
    Stk

# Copy over the media_profiles for xt90x
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/media_profiles_xt90x.xml:system/etc/media_profiles_xt90x.xml

# XT90x recovery
PRODUCT_COPY_FILES += \
    device/motorola/qcom-common/idc/atmxt-i2c.idc:recovery/root/vendor/firmware/atmxt-i2c.idc \
    vendor/motorola/vanquish/proprietary/etc/firmware/atmxt-r2.tdat:recovery/root/vendor/firmware/atmxt-r2.tdat

# LTE, CDMA, GSM/WCDMA
PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=1 \
	persist.radio.dfr_mode_set=1 \
	persist.radio.eons.enabled= true \
	ro.telephony.default_network=10 \
	persist.radio.mode_pref_nv10=1 \
	persist.radio.no_wait_for_card=1 \
	persist.radio.call_type=1 \
	persist.radio.apm_sim_not_pwdn=1 \
	persist.timed.enable=true

$(call inherit-product, device/motorola/qcom-common/idc/idc.mk)
$(call inherit-product, device/motorola/qcom-common/keychars/keychars.mk)
$(call inherit-product, device/motorola/qcom-common/keylayout/keylayout.mk)
$(call inherit-product, device/motorola/qcom-common/modules/nfc/nfc.mk)
$(call inherit-product, vendor/motorola/vanquish/vanquish-vendor.mk)
