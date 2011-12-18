$(call inherit-product, device/htc/pyramid/full_pyramid.mk)

PRODUCT_RELEASE_NAME := pyramid
# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=pyramid BUILD_ID=ITL41D BUILD_FINGERPRINT=tmous/htc_pyramid/pyramid:2.3.4/GRJ22/125597.1:user/release-keys PRIVATE_BUILD_DESC="pyramid-user 2.3.4 GRJ22 125597.1 release-keys" BUILD_NUMBER=125597

PRODUCT_NAME := cm_pyramid
PRODUCT_DEVICE := pyramid
