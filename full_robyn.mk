# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/semc/robyn/device_robyn_eu.mk)

# HAL libs and other system binaries
PRODUCT_PACKAGES += \
    gps.robyn \
    gralloc.robyn \
    copybit.robyn \
#    sensors.robyn \
#    lights.robyn \
    libOmxCore \
    libmm-omxcore

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni
#    LiveWallpapers \
#    MagicSmokeWallpapers \
#    VisualizationWallpapers 

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml


# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

PRODUCT_COPY_FILES += \
    device/semc/robyn/placeholder:system/sd/placeholder
    

PRODUCT_PROPERTY_OVERRIDES := \
    ro.ril.hsxpa=2 \
    ro.ril.hsupa.category=5 \
    ro.media.dec.jpeg.memcap=10000000
    
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d /dev/smd0 \
    wifi.interface=tiwlan0
    
# Time between scans in seconds. Keep it high to minimize battery drain.
# This only affects the case in which there are remembered access points,
# but none are in range.
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.supplicant_scan_interval=45

# Configure agps cell location.

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.def.agps.mode=2 \
    ro.ril.def.agps.feature=1

# Some more stuff:

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.ril.enable.a52=1 \
    ro.ril.enable.a53=1 \
    ro.media.enc.file.format       = 3gp,mp4 \
    ro.media.enc.vid.codec         = m4v,h263 \
    ro.media.enc.vid.h263.width    = 176,640 \
    ro.media.enc.vid.h263.height   = 144,480 \
    ro.media.enc.vid.h263.bps      = 64000,1600000 \
    ro.media.enc.vid.h263.fps      = 1,30 \
    ro.media.enc.vid.m4v.width     = 176,640 \
    ro.media.enc.vid.m4v.height    = 144,480 \
    ro.media.enc.vid.m4v.bps       = 64000,1600000 \
    ro.media.enc.vid.m4v.fps       = 1,30 \
    ro.media.dec.aud.wma.enabled=1 \
    ro.media.dec.vid.wmv.enabled=1 \
    settings.display.autobacklight=1 \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=true \
    media.stagefright.enable-scan=true \
    media.stagefright.enable-http=true \
    keyguard.no_require_sim=true

# density in DPI of the LCD of this board. This is used to scale the UI
# appropriately. If this property is not defined, the default value is 160 dpi. 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=120

# Increase dalvik heap size to prevent excessive GC with lots of apps installed.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=32m \
    ro.compcache.default=0

# Enable ti hotspot
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.hotspot.ti=1

# Use the semc-msm7x27 RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=semc-msm7x27

# media configuration xml file
PRODUCT_COPY_FILES += \
    device/semc/robyn/media_profiles.xml:/system/etc/media_profiles.xml

$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_robyn
PRODUCT_DEVICE := robyn
PRODUCT_MODEL := Full Android on X10 mini
PRODUCT_DEFAULT_WIFI_CHANNELS := 14

#CYANOGEN_WITH_GOOGLE := true
