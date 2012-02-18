#
# Copyright (C) 2011 Xboarder56
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

# This file is the device-specific product definition file for pyramid.
# It lists all the overlays, files, modules and properties that are specific
# to this hardware: i.e. those are device-specific drivers, configuration
# files, settings, etc...

# GPS config
PRODUCT_COPY_FILES += \
    device/htc/pyramid/gps.conf:system/etc/gps.conf

# This is wthe other half of the device-specific product definition
# file that takes care of the aspects that require proprietary drivers that
# aren't commonly available is.
$(call inherit-product-if-exists, vendor/htc/pyramid/pyramid-vendor.mk)

# This is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/htc/pyramid/overlay

# These are the hardware-specific configuration files.
PRODUCT_COPY_FILES += \
    device/htc/pyramid/vold.fstab:system/etc/vold.fstab \
    device/htc/pyramid/egl.cfg:system/lib/egl/egl.cfg

# Init files
PRODUCT_COPY_FILES += \
    device/htc/pyramid/init:root/init \
    device/htc/pyramid/init.rc:root/init.rc \
    device/htc/pyramid/init.pyramid.rc:root/init.pyramid.rc \
    device/htc/pyramid/init.usb.rc:root/init.usb.rc \
    device/htc/pyramid/ueventd.rc:root/ueventd.rc \
    device/htc/pyramid/ueventd.pyramid.rc:root/ueventd.pyramid.rc

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
    device/htc/pyramid/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Bluetooth setup
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Display
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# Hardware
# TODO: build our own gps, lights, sensors eventually
#PRODUCT_PACKAGES += \
#    gps.pyramid \
#    lights.pyramid \
#    sensors.pyramid \
#    camera.pyramid

# Camera
PRODUCT_PACKAGES += \
    libcamera

# Audio
# TODO: build audio_policy, audio.primary eventually
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaudioutils
#    audio_policy.pyramid \
#    audio.primary.pyramid \

# Media
# TODO: build libOmxVenc, libOmxVdec eventually
PRODUCT_PACKAGES += \
    libstagefrighthw \
    librs_jni
#    libOmxVenc \
#    libOmxVdec

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mass_storage

# These are the OpenMAX IL configuration files
PRODUCT_COPY_FILES += \
    device/htc/pyramid/media_profiles.xml:system/etc/media_profiles.xml

# Input device calibration files
PRODUCT_COPY_FILES += \
    device/htc/pyramid/idc/cy8c-touchscreen.idc:system/usr/idc/cy8c-touchscreen.idc \
    device/htc/pyramid/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/htc/pyramid/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/htc/pyramid/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# for bugmailer
PRODUCT_PACKAGES += send_bug
PRODUCT_COPY_FILES += \
    system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
    system/extras/bugmailer/send_bug:system/bin/send_bug

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version=131072

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=45

include frameworks/base/build/phone-hdpi-512-dalvik-heap.mk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# device uses high-density artwork where available
PRODUCT_LOCALES += hdpi

PRODUCT_AAPT_CONFIG := normal hdpi

ifeq ($(TARGET_PREBUILT_WIFI_MODULE),)
LOCAL_WIFI_MODULE := device/htc/pyramid/bcm4329.ko
else
LOCAL_WIFI_MODULE := $(TARGET_PREBUILT_WIFI_MODULE)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_WIFI_MODULE):system/lib/modules/bcm4329.ko

PRODUCT_COPY_FILES += \
    device/htc/pyramid/kineto_gan.ko:system/lib/modules/kineto_gan.ko

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/pyramid/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# media profiles and capabilities spec
$(call inherit-product, device/htc/pyramid/media_a1026.mk)

# htc audio settings
$(call inherit-product, device/htc/pyramid/media_htcaudio.mk)
