#!/bin/sh

VENDOR=semc
DEVICE=robyn
rm -rf ../../../vendor/$VENDOR/$DEVICE/
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary
if [ $# -ne 1 ]
then
    echo "Pulling from device..."
    ACTION="${ACTION}"
else
    LOCAL_PROPR_DIR=$1
    echo "Copying from $LOCAL_PROPR_DIR ..."
    ACTION="cp -pr $LOCAL_PROPR_DIR/"
fi
    ${ACTION}/system/bin/akmd2 ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/bin/mm-venc-omx-test ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/etc/01_qcomm_omx.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/bin/hciattach ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libZiEngine.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libZiEngine.so

## RIL related stuff 
    ${ACTION}/system/lib/libril.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/bin/port-bridge ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/bin/qmuxd ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libauth.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libcm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libdiag.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libdll.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libdsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libdss.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libgsdi_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libgstk_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libmmgsdilib.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libnv.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/liboem_rapi.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/liboncrpc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libpbmlib.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libqmi.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libqueue.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libuim.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libril-qc-1.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libwms.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libwmsts.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    
## Firmware
    ${ACTION}/system/etc/firmware/yamato_pfp.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/etc/firmware/yamato_pm4.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/etc/firmware/fm_rx_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/etc/firmware/fm_rx_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/etc/firmware/fm_tx_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/etc/firmware/fm_tx_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/etc/firmware/fmc_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/etc/firmware/fmc_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/etc/firmware/TIInit_7.2.31.bts ../../../vendor/$VENDOR/$DEVICE/proprietary

## Offline charging
    ${ACTION}/system/bin/chargemon ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/bin/semc_chargalg ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/bin/updatemiscta ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libmiscta.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/etc/semc/chargemon/anim1.rle ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/etc/semc/chargemon/anim2.rle ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/etc/semc/chargemon/anim3.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim3.rle
    ${ACTION}/system/etc/semc/chargemon/anim4.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim4.rle
    ${ACTION}/system/etc/semc/chargemon/anim5.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim5.rle
    ${ACTION}/system/etc/semc/chargemon/anim6.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim6.rle
    ${ACTION}/system/etc/semc/chargemon/anim7.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim7.rle
    ${ACTION}/system/etc/semc/chargemon/anim8.rle ../../../vendor/$VENDOR/$DEVICE/proprietary/anim8.rle

## FM Radio and ANT
    ${ACTION}/system/etc/permissions/com.dsi.ant.antradio_library.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/com.dsi.ant.antradio_library.xml
    ${ACTION}/system/etc/permissions/com.sonyericsson.smfmf.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/com.sonyericsson.smfmf.xml
    ${ACTION}/system/etc/permissions/com.sonyericsson.suquashi.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/com.sonyericsson.suquashi.xml
    ${ACTION}/system/etc/permissions/com.ti.fm.fmreceiverif.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/com.ti.fm.fmreceiverif.xml
    ${ACTION}/system/lib/libfm_stack.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libfm_stack.so
    ${ACTION}/system/lib/libfmrx.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libfmrx.so
    
## HW and sensors
    ${ACTION}/system/etc/sensors.conf ../../../vendor/$VENDOR/$DEVICE/proprietary/sensors.conf
    ${ACTION}/system/lib/hw/lights.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lights.default.so
    ${ACTION}/system/lib/hw/gralloc.msm7k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/gralloc.msm7k.so
    ${ACTION}/system/lib/hw/gralloc.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/gralloc.default.so
    ${ACTION}/system/lib/hw/copybit.msm7k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/copybit.msm7k.so
    ${ACTION}/system/lib/hw/sensors.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/sensors.default.so
    ${ACTION}/system/lib/hw/hal_seport.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/hal_seport.default.so
    ${ACTION}/system/lib/libsystemconnector/libuinputdevicejni.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libsystemconnector_hal_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    
## Adreno 200 files
    ${ACTION}/system/lib/libgsl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libgsl.so
    ${ACTION}/system/lib/egl/libEGL_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libEGL_adreno200.so
    ${ACTION}/system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libGLESv1_CM_adreno200.so
    ${ACTION}/system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libGLESv2_adreno200.so
    ${ACTION}/system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libq3dtools_adreno200.so

## Camera
    ${ACTION}/system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libcamera.so
    ${ACTION}/system/lib/liboemcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/liboemcamera.so
    ${ACTION}/system/lib/libmmipl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libmmipl.so
    ${ACTION}/system/lib/libmmjpeg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libmmjpeg.so
    ${ACTION}/system/lib/libfacedetect.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libfacedetect.so
    ${ACTION}/system/lib/libvdmfumo.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libvdmfumo.so
    ${ACTION}/system/lib/libfacedetectjnitest.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libfacedetectjnitest.so
    ${ACTION}/system/lib/libcommondefs.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libcommondefs.so
    ${ACTION}/system/lib/libopencore_common.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    
## Audio
    ${ACTION}/system/etc/AudioFilterPlatform.csv ../../../vendor/$VENDOR/$DEVICE/proprietary/AudioFilterPlatform.csv
    ${ACTION}/system/etc/AudioFilterProduct.csv ../../../vendor/$VENDOR/$DEVICE/proprietary/AudioFilterProduct.csv
    ${ACTION}/system/lib/libaudioeq.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libaudioeq.so
    ${ACTION}/system/lib/libaudio.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libaudio.so

## OMX proprietaries
    ${ACTION}/system/lib/libmm-adspsvc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxAacDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxAmrRtpDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxH264Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxQcelpDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxAacEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxAmrwbDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxMp3Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxVidEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxAmrDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxEvrcDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxMpeg4Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxWmaDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxAmrEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxEvrcEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxQcelp13Enc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
    ${ACTION}/system/lib/libOmxWmvDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary

(cat << EOF) | sed -e s/__DEVICE__/$DEVICE/g -e s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/device_$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/$VENDOR/__DEVICE__/extract-files.sh

PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/akmd2:system/bin/akmd2 \\
    vendor/__VENDOR__/__DEVICE__/proprietary/mm-venc-omx-test:system/bin/mm-venc-omx-test \\
    vendor/__VENDOR__/__DEVICE__/proprietary/hciattach:system/bin/hciattach \\
    vendor/__VENDOR__/__DEVICE__/proprietary/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg
    
## RIL related stuff 
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libril.so:system/lib/libril.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/port-bridge:system/bin/port-bridge \\
    vendor/__VENDOR__/__DEVICE__/proprietary/qmuxd:system/bin/qmuxd \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libauth.so:system/lib/libauth.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libcm.so:system/lib/libcm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libdiag.so:system/lib/libdiag.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libdll.so:system/lib/libdll.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libdsm.so:system/lib/libdsm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libdss.so:system/lib/libdss.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnv.so:system/lib/libnv.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/liboem_rapi.so:system/lib/liboem_rapi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libqmi.so:system/lib/libqmi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libqueue.so:system/lib/libqueue.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libuim.so:system/lib/libuim.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libwms.so:system/lib/libwms.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libwmsts.so:system/lib/libwmsts.so
    
## Firmware
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/__VENDOR__/__DEVICE__/proprietary/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/__VENDOR__/__DEVICE__/proprietary/fm_rx_init_1273.1.bts:system/etc/firmware/fm_rx_init_1273.1.bts \\
    vendor/__VENDOR__/__DEVICE__/proprietary/fm_rx_init_1273.2.bts:system/etc/firmware/fm_rx_init_1273.2.bts \\
    vendor/__VENDOR__/__DEVICE__/proprietary/fm_tx_init_1273.1.bts:system/etc/firmware/fm_tx_init_1273.1.bts \\
    vendor/__VENDOR__/__DEVICE__/proprietary/fm_tx_init_1273.2.bts:system/etc/firmware/fm_tx_init_1273.2.bts \\
    vendor/__VENDOR__/__DEVICE__/proprietary/fmc_init_1273.1.bts:system/etc/firmware/fmc_init_1273.1.bts \\
    vendor/__VENDOR__/__DEVICE__/proprietary/fmc_init_1273.2.bts:system/etc/firmware/fmc_init_1273.2.bts \\
    vendor/__VENDOR__/__DEVICE__/proprietary/TIInit_7.2.31.bts:system/etc/firmware/TIInit_7.2.31.bts 

## Offline charging
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/chargemon:system/bin/charger \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libmiscta.so:system/lib/libmiscta.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/semc_chargalg:system/bin/semc_chargalg \\
    vendor/__VENDOR__/__DEVICE__/proprietary/updatemiscta:system/bin/updatemiscta \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim1.rle:system/etc/semc/chargemon/anim1.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim2.rle:system/etc/semc/chargemon/anim2.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim3.rle:system/etc/semc/chargemon/anim3.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim4.rle:system/etc/semc/chargemon/anim4.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim5.rle:system/etc/semc/chargemon/anim5.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim6.rle:system/etc/semc/chargemon/anim6.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim7.rle:system/etc/semc/chargemon/anim7.rle \\
    vendor/__VENDOR__/__DEVICE__/proprietary/anim8.rle:system/etc/semc/chargemon/anim8.rle
      
## FM Radio and ANT
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \\
    vendor/__VENDOR__/__DEVICE__/proprietary/com.sonyericsson.smfmf.xml:system/etc/permissions/com.sonyericsson.smfmf.xml \\
    vendor/__VENDOR__/__DEVICE__/proprietary/com.sonyericsson.suquashi.xml:system/etc/permissions/com.sonyericsson.suquashi.xml \\
    vendor/__VENDOR__/__DEVICE__/proprietary/com.ti.fm.fmreceiverif.xml:system/etc/permissions/com.ti.fm.fmreceiverif.xml \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libfm_stack.so:system/lib/libfm_stack.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libfmrx.so:system/lib/libfmrx.so
  
## HW and sensors
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/sensors.conf:system/etc/sensors.conf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lights.default.so:system/lib/hw/lights.default.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/gralloc.default.so:system/lib/hw/gralloc.default.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/copybit.msm7k.so:system/lib/hw/copybit.msm7k.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/sensors.default.so:system/lib/hw/sensors.default.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/hal_seport.default.so:system/lib/hw/hal_seport.default.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libuinputdevicejni.so:system/lib/libsystemconnector/libuinputdevicejni.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libsystemconnector_hal_jni.so:system/lib/libsystemconnector_hal_jni.so

## Adreno 200 files
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libgsl.so:system/lib/libgsl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so
    
## Camera    
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libfacedetect.so:system/lib/libfacedetect.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libvdmfumo.so:system/lib/libvdmfumo.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libfacedetectjnitest.so:system/lib/libfacedetectjnitest.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libcommondefs.so:system/lib/libcommondefs.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libopencore_common.so:system/lib/libopencore_common.so

## Audio
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/AudioFilterPlatform.csv:system/etc/AudioFilterPlatform.csv \\
    vendor/__VENDOR__/__DEVICE__/proprietary/AudioFilterProduct.csv:system/etc/AudioFilterProduct.csv \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libaudioeq.so:system/lib/libaudioeq.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libaudio.so:system/lib/libaudio.so

## Kernel modules
PRODUCT_COPY_FILES += \\
    device/__VENDOR__/__DEVICE__/modules/jbd.ko:system/lib/modules/jbd.ko \\
    device/__VENDOR__/__DEVICE__/modules/ext3.ko:system/lib/modules/ext3.ko \\
    device/__VENDOR__/__DEVICE__/modules/jbd2.ko:system/lib/modules/jbd2.ko \\
    device/__VENDOR__/__DEVICE__/modules/ext4.ko:system/lib/modules/ext4.ko \\
    device/__VENDOR__/__DEVICE__/modules/dm-crypt.ko:system/lib/modules/dm-crypt.ko \\
    device/__VENDOR__/__DEVICE__/modules/dm-mod.ko:system/lib/modules/dm-mod.ko \\
    device/__VENDOR__/__DEVICE__/modules/tun.ko:system/lib/modules/tun.ko \\
    device/__VENDOR__/__DEVICE__/modules/twofish.ko:system/lib/modules/twofish.ko \\
    device/__VENDOR__/__DEVICE__/modules/twofish_common.ko:system/lib/modules/twofish_common.ko \\
    device/__VENDOR__/__DEVICE__/modules/x8gesture.ko:system/lib/modules/x8gesture.ko \\
    device/__VENDOR__/__DEVICE__/modules/x10minioc.ko:system/lib/modules/x10minioc.ko \\
    device/__VENDOR__/__DEVICE__/modules/x10miniuv.ko:system/lib/modules/x10miniuv.ko \\
    device/__VENDOR__/__DEVICE__/modules/ax8_smartass.ko:system/lib/modules/ax8_smartass.ko \\
    device/__VENDOR__/__DEVICE__/modules/mddi.ko:system/lib/modules/mddi.ko \\
    device/__VENDOR__/__DEVICE__/prebuilt/04modules:system/etc/init.d/04modules

## Hotspot
PRODUCT_COPY_FILES += \
    device/__VENDOR__/__DEVICE__/modules/sdio.ko:system/lib/modules/sdio.ko \\
    device/__VENDOR__/__DEVICE__/modules/tiwlan_drv.ko:system/lib/modules/tiwlan_drv.ko \\
    device/__VENDOR__/__DEVICE__/modules/tiap_drv.ko:system/lib/modules/tiap_drv.ko \\
    device/__VENDOR__/__DEVICE__/prebuilt/tiap_loader.sh:system/bin/tiap_loader.sh \\
    device/__VENDOR__/__DEVICE__/prebuilt/10dnsconf:system/etc/init.d/10dnsconf \\
    device/__VENDOR__/__DEVICE__/prebuilt/10hostapconf:system/etc/init.d/10hostapconf \\
    device/__VENDOR__/__DEVICE__/prebuilt/hostapd.conf:system/etc/wifi/softap/hostapd.conf \\
    device/__VENDOR__/__DEVICE__/prebuilt/dnsmasq.conf:system/etc/wifi/dnsmasq.conf \\
    device/__VENDOR__/__DEVICE__/prebuilt/tiwlan.ini:system/etc/wifi/tiwlan.ini \\
    device/__VENDOR__/__DEVICE__/prebuilt/tiwlan_ap.ini:system/etc/wifi/softap/tiwlan_ap.ini \\
    device/__VENDOR__/__DEVICE__/prebuilt/tiwlan_firmware.bin:system/etc/wifi/tiwlan_firmware.bin \\
    device/__VENDOR__/__DEVICE__/prebuilt/tiwlan_firmware_ap.bin:system/etc/wifi/softap/tiwlan_firmware_ap.bin 

## OMX proprietaries
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxAacDec.so:system/lib/libOmxAacDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libOmxWmvDec.so:system/lib/libOmxWmvDec.so

## Extra prebuilt binaries
PRODUCT_COPY_FILES += \\
    device/__VENDOR__/__DEVICE__/prebuilt/hw_config.sh:system/etc/hw_config.sh \\
    device/__VENDOR__/__DEVICE__/prebuilt/FmRxService.apk:system/app/FmRxService.apk \\
    device/__VENDOR__/__DEVICE__/prebuilt/Radio.apk:system/app/Radio.apk \\
    device/__VENDOR__/__DEVICE__/prebuilt/SuquashiInputMethod.apk:system/app/SuquashiInputMethod.apk \\
    device/__VENDOR__/__DEVICE__/prebuilt/SystemConnector.apk:system/app/SystemConnector.apk \\
    device/__VENDOR__/__DEVICE__/prebuilt/chargemon:system/bin/chargemon \\
    device/__VENDOR__/__DEVICE__/prebuilt/property.tar:system/bin/property.tar \\
    device/__VENDOR__/__DEVICE__/prebuilt/ramdisk.tar:system/bin/ramdisk.tar \\
    device/__VENDOR__/__DEVICE__/prebuilt/xrecovery.tar:system/bin/xrecovery.tar \\
    device/__VENDOR__/__DEVICE__/prebuilt/recovery.tar:system/bin/recovery.tar \\
    device/__VENDOR__/__DEVICE__/prebuilt/com.dsi.ant.antradio_library.jar:system/framework/com.dsi.ant.antradio_library.jar \\
    device/__VENDOR__/__DEVICE__/prebuilt/com.sonyericsson.suquashi.jar:system/framework/com.sonyericsson.suquashi.jar \\
    device/__VENDOR__/__DEVICE__/prebuilt/fmreceiverif.jar:system/framework/fmreceiverif.jar \\
    device/__VENDOR__/__DEVICE__/prebuilt/SemcSmfmf.jar:system/framework/SemcSmfmf.jar \\
    device/__VENDOR__/__DEVICE__/prebuilt/vold.fstab:system/etc/vold.fstab

## Keyboard layouts and T9
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libZiEngine.so:system/lib/libZiEngine.so \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Basque/Zi8DatEUs.z8d:system/usr/zi/Basque/Zi8DatEUs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Danish/Zi8DatDAs.z8d:system/usr/zi/Danish/Zi8DatDAs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Estonian/Zi8DatETs.z8d:system/usr/zi/Estonian/Zi8DatETs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/German/Zi8DatDEs.z8d:system/usr/zi/German/Zi8DatDEs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Czech/Zi8DatCSs.z8d:system/usr/zi/Czech/Zi8DatCSs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Dutch/Zi8DatNLs.z8d:system/usr/zi/Dutch/Zi8DatNLs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Greek/Zi8DatELs.z8d:system/usr/zi/Greek/Zi8DatELs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Malay/Zi8DatMSs.z8d:system/usr/zi/Malay/Zi8DatMSs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Catalan/Zi8DatCAs.z8d:system/usr/zi/Catalan/Zi8DatCAs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Romanian/Zi8DatROs.z8d:system/usr/zi/Romanian/Zi8DatROs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Polish/Zi8DatPLs.z8d:system/usr/zi/Polish/Zi8DatPLs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/French_CA/Zi8DatFRCAs.z8d:system/usr/zi/French_CA/Zi8DatFRCAs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/French_EU/Zi8DatFREUs.z8d:system/usr/zi/French_EU/Zi8DatFREUs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Slovak/Zi8DatSKs.z8d:system/usr/zi/Slovak/Zi8DatSKs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Lithuanian/Zi8DatLTs.z8d:system/usr/zi/Lithuanian/Zi8DatLTs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Italian/Zi8DatITs.z8d:system/usr/zi/Italian/Zi8DatITs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Ukrainian/Zi8DatUKs.z8d:system/usr/zi/Ukrainian/Zi8DatUKs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Hungarian/Zi8DatHUs.z8d:system/usr/zi/Hungarian/Zi8DatHUs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Spanish_EU/Zi8DatESEUs.z8d:system/usr/zi/Spanish_EU/Zi8DatESEUs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Spanish_SA/Zi8DatESSAs.z8d:system/usr/zi/Spanish_SA/Zi8DatESSAs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Galician/Zi8DatGLs.z8d:system/usr/zi/Galician/Zi8DatGLs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Latvian/Zi8DatLVs.z8d:system/usr/zi/Latvian/Zi8DatLVs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Serbian/Zi8DatSRLAs.z8d:system/usr/zi/Serbian/Zi8DatSRLAs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Slovenian/Zi8DatSLs.z8d:system/usr/zi/Slovenian/Zi8DatSLs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Croatian/Zi8DatHRs.z8d:system/usr/zi/Croatian/Zi8DatHRs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Indonesian/Zi8DatINs.z8d:system/usr/zi/Indonesian/Zi8DatINs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Russian/Zi8DatRU.z8d:system/usr/zi/Russian/Zi8DatRU.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Tagalog/Zi8DatTLs.z8d:system/usr/zi/Tagalog/Zi8DatTLs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Bulgarian/Zi8DatBGs.z8d:system/usr/zi/Bulgarian/Zi8DatBGs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Finnish/Zi8DatFIs.z8d:system/usr/zi/Finnish/Zi8DatFIs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Swedish/Zi8DatSVs.z8d:system/usr/zi/Swedish/Zi8DatSVs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Norwegian/Zi8DatNOs.z8d:system/usr/zi/Norwegian/Zi8DatNOs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/English_AM/Zi8DatENAMs.z8d:system/usr/zi/English_AM/Zi8DatENAMs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/English_UK/Zi8DatENUKs.z8d:system/usr/zi/English_UK/Zi8DatENUKs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Turkish/Zi8DatTRs.z8d:system/usr/zi/Turkish/Zi8DatTRs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Portuguese_BZ/Zi8DatPTBZs.z8d:system/usr/zi/Portuguese_BZ/Zi8DatPTBZs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/zi/Portuguese_EU/Zi8DatPTEUs.z8d:system/usr/zi/Portuguese_EU/Zi8DatPTEUs.z8d \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keylayout/robyn_keypad.kl:system/usr/keylayout/robyn_keypad.kl \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keylayout/systemconnector.kl:system/usr/keylayout/systemconnector.kl \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/kaz.xml:system/usr/keyboard-config/languages/kaz.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/deu.xml:system/usr/keyboard-config/languages/deu.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/fra_ca.xml:system/usr/keyboard-config/languages/fra_ca.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/por_br.xml:system/usr/keyboard-config/languages/por_br.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/lav.xml:system/usr/keyboard-config/languages/lav.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/ron.xml:system/usr/keyboard-config/languages/ron.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/lit.xml:system/usr/keyboard-config/languages/lit.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/ell.xml:system/usr/keyboard-config/languages/ell.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/eng.xml:system/usr/keyboard-config/languages/eng.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/rus.xml:system/usr/keyboard-config/languages/rus.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/eng_us.xml:system/usr/keyboard-config/languages/eng_us.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/slk.xml:system/usr/keyboard-config/languages/slk.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/numberDecimal.xml:system/usr/keyboard-config/languages/numberDecimal.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/slv.xml:system/usr/keyboard-config/languages/slv.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/spa.xml:system/usr/keyboard-config/languages/spa.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/spa_la.xml:system/usr/keyboard-config/languages/spa_la.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/est.xml:system/usr/keyboard-config/languages/est.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/sqi.xml:system/usr/keyboard-config/languages/sqi.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/fin.xml:system/usr/keyboard-config/languages/fin.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/tgl.xml:system/usr/keyboard-config/languages/tgl.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/srp.xml:system/usr/keyboard-config/languages/srp.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/eus.xml:system/usr/keyboard-config/languages/eus.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/sun.xml:system/usr/keyboard-config/languages/sun.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/numberNatural.xml:system/usr/keyboard-config/languages/numberNatural.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/swe.xml:system/usr/keyboard-config/languages/swe.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/fra.xml:system/usr/keyboard-config/languages/fra.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/msa.xml:system/usr/keyboard-config/languages/msa.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/glg.xml:system/usr/keyboard-config/languages/glg.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/nld.xml:system/usr/keyboard-config/languages/nld.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/tur.xml:system/usr/keyboard-config/languages/tur.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/ukr.xml:system/usr/keyboard-config/languages/ukr.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/nor.xml:system/usr/keyboard-config/languages/nor.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/phone.xml:system/usr/keyboard-config/languages/phone.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/numberInteger.xml:system/usr/keyboard-config/languages/numberInteger.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/hrv.xml:system/usr/keyboard-config/languages/hrv.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/hun.xml:system/usr/keyboard-config/languages/hun.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/cat.xml:system/usr/keyboard-config/languages/cat.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/jav.xml:system/usr/keyboard-config/languages/jav.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/ind.xml:system/usr/keyboard-config/languages/ind.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/bos.xml:system/usr/keyboard-config/languages/bos.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/ces.xml:system/usr/keyboard-config/languages/ces.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/pol.xml:system/usr/keyboard-config/languages/pol.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/por.xml:system/usr/keyboard-config/languages/por.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/ita.xml:system/usr/keyboard-config/languages/ita.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/isl.xml:system/usr/keyboard-config/languages/isl.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/bul.xml:system/usr/keyboard-config/languages/bul.xml \\
    device/__VENDOR__/__DEVICE__/prebuilt/usr/keyboard-config/languages/dan.xml:system/usr/keyboard-config/languages/dan.xml

## sh compatible with chargemon
PRODUCT_COPY_FILES += \\
    device/__VENDOR__/__DEVICE__/prebuilt/sh:system/xbin/sh

## Extra Cyanogen vendor files
PRODUCT_COPY_FILES += \\
    vendor/cyanogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

EOF

./setup-makefiles.sh
