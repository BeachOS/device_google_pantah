# Inherit some common stuff.
$(call inherit-product, vendor/beach/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs201/beach_common.mk)
$(call inherit-product, device/google/pantah/device-beach.mk)
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := beach_cheetah
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ1A.230105.002 9325679 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ1A.230105.002/9325679:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
