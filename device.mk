#
# Copyright (C) 2011 Android Open Source Project
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

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/htc/pyramid/overlay

# These are the hardware-specific configuration files.
PRODUCT_COPY_FILES += \
    device/htc/pyramid/vold.fstab:system/etc/vold.fstab \
    device/htc/pyramid/gps.conf:system/etc/gps.conf

# Init files
PRODUCT_COPY_FILES += \
    device/htc/pyramid/prebuilt/init:root/init \
    device/htc/pyramid/init.pyramid.rc:root/init.pyramid.rc \
    device/htc/pyramid/ueventd.pyramid.rc:root/ueventd.pyramid.rc

# misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# kcm keymaps
PRODUCT_COPY_FILES += \
    device/htc/pyramid/keychars/Generic.kcm:system/usr/keylayout/Generic.kcm \
    device/htc/pyramid/keychars/pyramid-keypad.kcm:system/usr/keylayout/pyramid-keypad.kcm \
    device/htc/pyramid/keychars/qwerty2.kcm:system/usr/keylayout/qwerty2.kcm \
    device/htc/pyramid/keychars/qwerty2.kcm.bin:system/usr/keylayout/qwerty2.kcm.bin \
    device/htc/pyramid/keychars/qwerty.kcm:system/usr/keylayout/qwerty.kcm \
    device/htc/pyramid/keychars/qwerty.kcm.bin:system/usr/keylayout/qwerty.kcm.bin \
    device/htc/pyramid/keychars/Virtual.kcm:system/usr/keylayout/Virtual.kcm

# kl keylayouts
PRODUCT_COPY_FILES += \
    device/htc/pyramid/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/pyramid/keylayout/cy8c-touchscreen.kl:system/usr/keylayout/cy8c-touchscreen.kl \
    device/htc/pyramid/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/htc/pyramid/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/pyramid/keylayout/pyramid-keypad.kl:system/usr/keylayout/pyramid-keypad.kl \
    device/htc/pyramid/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/pyramid/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    device/htc/pyramid/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    device/htc/pyramid/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/htc/pyramid/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    device/htc/pyramid/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    device/htc/pyramid/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
    device/htc/pyramid/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/htc/pyramid/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl

# Input device calibration files
PRODUCT_COPY_FILES += \
    device/htc/pyramid/idc/cy8c-touchscreen.idc:system/usr/idc/cy8c-touchscreen.idc \
    device/htc/pyramid/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/htc/pyramid/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/htc/pyramid/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Hardware
PRODUCT_PACKAGES += \
    gps.pyramid \
    lights.pyramid

# Kernel and modules
PRODUCT_COPY_FILES += \
    device/htc/pyramid/prebuilt/kernel:kernel \
    device/htc/pyramid/modules/bcm4329.ko:system/lib/modules/bcm4329.ko \
    device/htc/pyramid/modules/kineto_gan.ko:system/lib/modules/kineto_gan.ko
    
# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mass_storage

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

# media profiles and capabilities spec
$(call inherit-product, device/htc/pyramid/media_a1026.mk)

# htc audio settings
$(call inherit-product, device/htc/pyramid/media_htcaudio.mk)

# dalvik heap settings
$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)

# proprietary blobs
$(call inherit-product-if-exists, vendor/htc/pyramid/pyramid-vendor.mk)
