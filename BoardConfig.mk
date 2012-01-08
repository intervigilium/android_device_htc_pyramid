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

TARGET_SPECIFIC_HEADER_PATH := device/htc/pyramid/include

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := pyramid

# Platform
TARGET_BOARD_PLATFORM := msm8x60
#TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

#TARGET_PROVIDES_INIT_TARGET_RC := true

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

# Insecure boot
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1

# QCOM hardware
BOARD_PROVIDES_LIBRIL := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := pyramid
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

# Audio
#BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_AUDIO_LEGACY := true
#TARGET_PROVIDES_LIBAUDIO := false

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Camera
USE_CAMERA_STUB := true
# ifeq ($(USE_CAMERA_STUB),false)
# BOARD_CAMERA_LIBRARIES := libcamera
# endif

# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
BOARD_USES_GENLOCK := true
TARGET_USES_ION : false
BOARD_EGL_CFG := device/htc/pyramid/egl.cfg
#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
#DEFAULT_FB_NUM := 2

# Wi-Fi
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE           := bcm4329
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/proc/calibration"

# Kernel
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_PAGE_SIZE := 2048
BOARD_KERNEL_CMDLINE := no_console_suspend=1

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_UI_LIB := librecovery_ui_pyramid

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072
#BOARD_NAND_PAGE_SIZE := 4096
#BOARD_NAND_SPARE_SIZE := 128
