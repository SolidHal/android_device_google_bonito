# Boot animation
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

-include device/google/bonito/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_sargo
PRODUCT_MODEL := Pixel 3a
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sargo \
    PRIVATE_BUILD_DESC="sargo-user 11 RQ3A.210905.001 7511028 release-keys"

BUILD_FINGERPRINT := google/sargo/sargo:11/RQ3A.210905.001/7511028:user/release-keys

$(call inherit-product, vendor/google/sargo/sargo-vendor.mk)
