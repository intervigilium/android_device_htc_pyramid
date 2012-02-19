# Copyright (C) 2011 The Android Open-Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions
#

# Use the non-open-source parts if they are present
-include vendor/htc/pyramid/BoardConfigVendor.mk

# Extra kernel headers not present in bionic
TARGET_SPECIFIC_HEADER_PATH := device/htc/pyramid/include

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := pyramid
#TARGET_PROVIDES_INIT_RC := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=59 -DQCOM_HARDWARE

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

# Insecure boot
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := pyramid
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# RIL
BOARD_PROVIDES_LIBRIL := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

# Audio
BOARD_USES_AUDIO_LEGACY := true
BOARD_USES_GENERIC_AUDIO := false
#TARGET_PROVIDES_LIBAUDIO := false

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Camera
#USE_CAMERA_STUB := true
# ifeq ($(USE_CAMERA_STUB),false)
# BOARD_CAMERA_LIBRARIES := libcamera
# endif

# Memory allocation
#TARGET_GRALLOC_USES_ASHMEM := false
#TARGET_USES_ION := false

# Graphics
#TARGET_QCOM_HDMI_OUT := true
TARGET_HAVE_BYPASS := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_OVERLAY := true
TARGET_USES_GENLOCK := true
TARGET_USES_C2D_COMPOSITION := true
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/htc/pyramid/egl.cfg

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file

# Wi-Fi
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE           := bcm4329
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcm4329/parameters/fwpath"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/proc/calibration iface_name=wlan"

# Kernel
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_PAGE_SIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=pyramid no_console_suspend=1

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_UI_LIB := librecovery_ui_pyramid

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072

# Extra
BOARD_HAS_NO_SELECT_BUTTON := true
