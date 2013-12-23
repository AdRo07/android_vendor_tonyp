# tonyp version
TONYP_VERSION = 27

PRODUCT_PROPERTY_OVERRIDES += \
  ro.tonyp.version=$(TONYP_VERSION)

# prebuilts
PRODUCT_COPY_FILES +=  \
    vendor/tonyp/prebuilt/BarcodeScanner.apk:system/app/BarcodeScanner.apk \
    vendor/tonyp/prebuilt/KernelControl.apk:system/app/KernelControl.apk

# enable pipe
TARGET_USE_PIPE := true

# hybrid engine
PRODUCT_COPY_FILES += \
    vendor/tonyp/prebuilt/55-tonyp.sh:system/addon.d/55-tonyp.sh \
    vendor/tonyp/prebuilt/pa_hdpi.conf:system/etc/beerbong/properties.conf

# Enable mini gapps
MINI_GAPPS := true
$(call inherit-product, vendor/google/tiny_gapps_nonneon_tonyp.mk)
