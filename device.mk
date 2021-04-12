$(call inherit-product-if-exists, $(LOCAL_PATH)/modules/modules.mk)

#EGL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/egl/egl.cfg:system/lib64/egl/egl.cfg \
    $(LOCAL_PATH)/egl/lib/gralloc.default.so:system/lib/hw/gralloc.default.so \
    $(LOCAL_PATH)/egl/lib/libGLES_mali.so:system/lib/egl/libGLES_mali.so \
    $(LOCAL_PATH)/egl/lib64/gralloc.default.so:system/lib64/hw/gralloc.default.so \
    $(LOCAL_PATH)/egl/lib64/gralloc.default.so:system/lib64/egl/libGLES_mali.so \

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0
    
PRODUCT_PROPERTY_OVERRIDES += \
    service.adb.tcp.port=5555
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/kernel:kernel \
    $(LOCAL_PATH)/recovery/root/etc/recovery.fstab:recovery.fstab \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/modules/modules,root) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir,root)
    
   
