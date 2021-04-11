#Inherit from those products. Most specifics first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

#Inherit from our custom product configuration 
$(call inherit-product, vendor/omni/config/common.mk)

#Inherit from hardware specific part of the product configuration
$(call inherit-product, device/onda/v80se/device.mk)

PRODUCT_DEVICE := v80se
PRODUCT_NAME := omni_v80se
PRODUCT_MANUFRACTURER := Allwinner
PRODUCT_BRAND := ONDA
PRODUCT_MODEL := V80SE
PRODUCT_RELEASE_NAME := ONDA V80SE
