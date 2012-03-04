$(call inherit-product, device/htc/pyramid/full_pyramid.mk)

PRODUCT_RELEASE_NAME := pyramid
# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_pyramid BUILD_FINGERPRINT=htc_europe/htc_pyramid/pyramid:4.0.3/IML74K/309896.3:user/release-keys PRIVATE_BUILD_DESC="3.32.401.3 CL309896 release-keys" BUILD_NUMBER=309896

PRODUCT_NAME := cm_pyramid
PRODUCT_DEVICE := pyramid
