#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

-include device/motorola/msm8960-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/vanquish/BoardConfigVendor.mk

LOCAL_PATH := device/motorola/vanquish

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/motorola/vanquish/init/init_vanquish.c

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# TWRP for HD devices/ Needs to be changed for M
DEVICE_RESOLUTION := 720x1280
#DEVICE_RESOLUTION := 540x960

# Userdata size is double for maxx
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12884901888

# Custom relese tools for unified devices
TARGET_RELEASETOOLS_EXTENSIONS := device/motorola/vanquish
