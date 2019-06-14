#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := I01WD

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#PRODUCT_COPY_FILES += device/asus/I01WD/kernel:kernel

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/asus/I01WD/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := I01WD
PRODUCT_NAME := lineage_I01WD
PRODUCT_BRAND := Asus
PRODUCT_MODEL := Asus Zenfone 6
PRODUCT_MANUFACTURER := Asus
