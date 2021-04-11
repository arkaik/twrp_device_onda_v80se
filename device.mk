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
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir,root)
    
   
