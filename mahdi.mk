# Get the long list of APNs
$(call inherit-product, vendor/mahdi/config/telephony.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/mahdi/config/common_full_phone.mk)
$(call inherit-product, vendor/mahdi/configs/common.mk)

# Enhanced NFC
#$(call inherit-product, vendor/mahdi/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geeb/mahdi_geeb.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geeb
PRODUCT_NAME := mahdi_geeb
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-E970
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
