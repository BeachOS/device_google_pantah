# Inherit some common stuff.
$(call inherit-product, vendor/beach/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs201/beach_common.mk)
$(call inherit-product, device/google/pantah/device-beach.mk)
$(call inherit-product, device/google/pantah/aosp_panther.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := beach_panther
PRODUCT_MODEL := Pixel 7
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 13 TQ1A.230105.001.A2 9325585 release-keys"

BUILD_FINGERPRINT := google/panther/panther:13/TQ1A.230105.001.A2/9325585:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/panther/panther-vendor.mk)
