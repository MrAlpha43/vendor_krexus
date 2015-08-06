# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/icarus/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := icarus_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:5.1.1/LMY48I/2074855:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 5.1.1 LMY48I 2074855 release-keys"

# Inherit media effect blobs
-include vendor/icarus/products/common_media_effects.mk
