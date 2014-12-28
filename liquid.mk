# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Get the long list of APNs
$(call inherit-product, vendor/liquid/config/telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geeb/full_geeb.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geeb
PRODUCT_NAME := liquid_geeb
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG Optimus G
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:5.0/LRX21T/1576899:user/release-keys PRIVATE_BUILD_DESC="occam-user 5.0 LRX21T 1576899 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
