$(call inherit-product, device/htc/pyramid/full_pyramid.mk)

PRODUCT_RELEASE_NAME := pyramid
# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_pyramid BUILD_ID=IML74K BUILD_FINGERPRINT=htc_wwe/htc_pyramid/pyramid:4.0.3/IML74K/275847.101:user/release-keys PRIVATE_BUILD_DESC="3.25.401.101 CL275847 release-keys" BUILD_NUMBER=275847

PRODUCT_NAME := cm_pyramid
PRODUCT_DEVICE := pyramid
