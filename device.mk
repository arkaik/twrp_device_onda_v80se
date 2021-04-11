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
    $(LOCAL_PATH)/modules/modules/nand.ko:root/nand.ko \
    $(LOCAL_PATH)/modules/modules/sunxi_tr.ko:root/sunxi_tr.ko \
    $(LOCAL_PATH)/modules/modules/disp.ko:root/disp.ko \
    $(LOCAL_PATH)/modules/modules/hdmi.ko:root/hdmi.ko \
    $(LOCAL_PATH)/modules/modules/sw-device.ko:root/sw-device.ko \
    $(LOCAL_PATH)/modules/modules/gslX680new.ko:root/gslX680new.ko \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir,root)
