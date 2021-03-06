#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

-include device/samsung/smdk4412-common/BoardCommonConfig.mk

LOCAL_PATH := device/samsung/kona-common

# For KK blobs
MALLOC_SVELTE := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Recovery
TARGET_RECOVERY_DENSITY := mdpi

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
BOARD_GLOBAL_CFLAGS += -DCAMERA_WITH_CITYID_PARAM

TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true
#Old camera hacks
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
#more camera stuff
TARGET_NEEDS_GCC_LIBC := true
BOARD_GLOBAL_CFLAGS += -DDECAY_TIME_DEFAULT=0

# Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Lights
BOARD_EXYNOS4X12_TABLET_HAS_LED_BUTTONS := true

# Charger
NO_CHARGER_LED := true


# Selinux
BOARD_SEPOLICY_DIRS += device/samsung/kona-common/selinux

# Lockscreen real battery display RR
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Device specific headers
TARGET_SPECIFIC_HEADER_PATH += $(LOCAL_PATH)/include
