#
# Copyright (C) 2013 The Android Open Source Project
# 
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

# Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x800.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/skomer/skomer.mk)

# Device identifier
PRODUCT_DEVICE := skomer
PRODUCT_NAME := vanir_skomer
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-S7710
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone

# Set build fingerprint and ID
BUILD_ID := TRIANA00$(shell date -u +%Y%m%d)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=vanir_skomer BUILD_FINGERPRINT=vaniraosp/vanir_skomer/skomer:4.4.4/$(BUILD_ID) PRIVATE_BUILD_DESC="GT-S7710 4.4.4"
