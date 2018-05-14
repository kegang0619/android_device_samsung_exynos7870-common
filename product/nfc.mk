#
# Copyright (C) 2018 The LineageOS Project
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
#
LOCAL_PATH := $(call my-dir)
# NFC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/vendor/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/vendor/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/vendor/etc/permissions/com.android.nfc_extras.xml \
    $(LOCAL_PATH)/configs/nfc/etc/permissions/android.hardware.nfc.hcef.xml:system/vendor/etc/permissions/android.hardware.nfc.hcef.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/permissions/com.gsma.services.nfc.xml:system/etc/permissions/com.gsma.services.nfc.xml \
    $(LOCAL_PATH)/configs/nfc/permissions/com.samsung.android.nfc.mpos.xml:system/etc/permissions/com.samsung.android.nfc.mpos.xml \
    $(LOCAL_PATH)/configs/nfc/permissions/com.sec.feature.cover.nfc_authentication.xml:system/etc/permissions/com.sec.feature.cover.nfc_authentication.xml \
    $(LOCAL_PATH)/configs/nfc/permissions/com.sec.feature.nfc_authentication.xml:com.sec.feature.nfc_authentication.xml \
    $(LOCAL_PATH)/configs/nfc/nfc_key:system/etc/nfc_key	

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-sec.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:system/vendor/etc/libnfc-brcm.conf
	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/vendor/nfc/sec_s3nrn81_rfreg.bin:system/etc/nfc/sec_s3nrn81_rfreg.bin \	
    $(LOCAL_PATH)/configs/nfc/vendor/lib/hw/nfc_nci.universal7870.so:system/lib/hw/nfc_nci.universal7870.so \
    $(LOCAL_PATH)/configs/nfc/vendor/firmware/nfc/sec_s3nrn81_firmware.bin:system/vendor/firmware/nfc/sec_s3nrn81_firmware.bin
	
	
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl \
    libnfc-nci \
    libnfc_nci_jni \
    com.android.nfc_extras \
    NfcNci \
    Tag
