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

# Use the non-open-source parts if they are present
-include vendor/htc/pyramid/BoardConfigVendor.mk

# Use HTC msm8660 common parts
-include device/htc/msm8660-common/BoardConfigCommon.mk

# Bootloader board name
TARGET_BOOTLOADER_BOARD_NAME := pyramid

# Insecure boot
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := pyramid

# Graphics
TARGET_USES_OVERLAY := false

# RIL
BOARD_PROVIDES_LIBRIL := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

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
