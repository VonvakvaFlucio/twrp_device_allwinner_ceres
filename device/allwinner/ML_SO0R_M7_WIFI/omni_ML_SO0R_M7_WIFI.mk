# Herda configurações padrões do AOSP/TWRP
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := ML_SO0R_M7_WIFI
PRODUCT_NAME := omni_ML_SO0R_M7_WIFI
PRODUCT_BRAND := Allwinner
PRODUCT_MODEL := ML_SO0R_M7_WIFI
PRODUCT_MANUFACTURER := Allwinner

# Propriedades do Android Go Edition / Display
PRODUCT_MINIMAL_MODE := true
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800
