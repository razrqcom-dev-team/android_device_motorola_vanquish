## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

$(call inherit-product, device/motorola/msm8960-common/cm.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Release name
PRODUCT_RELEASE_NAME := xt926
PRODUCT_NAME := cm_xt926

$(call inherit-product, device/motorola/xt926/full_xt926.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND=motorola PRODUCT_NAME=xt926 BUILD_PRODUCT=xt926 BUILD_FINGERPRINT=motorola/XT926_verizon/vanquish:4.1.1/9.8.1Q_37/39:user/release-keys
