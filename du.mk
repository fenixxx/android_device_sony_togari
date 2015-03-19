# Get the long list of APNs
PRODUCT_COPY_FILES := vendor/du/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/du/config/common.mk)
$(call inherit-product, vendor/du/config/gsm.mk)

$(call inherit-product, device/sony/togari/full_togari.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6833 BUILD_FINGERPRINT=Sony/C6833/C6833:4.4.4/14.4.A.0.133/ev__jQ:user/release-keys PRIVATE_BUILD_DESC="C6833-user 4.4.4 14.4.A.0.133 ev__jQ release-keys"

PRODUCT_NAME := du_togari
PRODUCT_DEVICE := togari
