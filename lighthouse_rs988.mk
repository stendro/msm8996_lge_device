#
# Copyright 2016 The CyanogenMod Project
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

# Release name (automatically taken from this file's suffix)
PRODUCT_RELEASE_NAME := $(lastword $(subst /, ,$(lastword $(subst _, ,$(firstword $(subst ., ,$(MAKEFILE_LIST)))))))

# Custom vendor used in build tree (automatically taken from this file's prefix)
CUSTOM_VENDOR := $(lastword $(subst /, ,$(firstword $(subst _, ,$(firstword $(MAKEFILE_LIST))))))

# OEM Info (automatically taken from device tree path)
BOARD_VENDOR := $(or $(word 2,$(subst /, ,$(firstword $(MAKEFILE_LIST)))),$(value 2))

# Inherit from common board
$(call inherit-product, device/$(BOARD_VENDOR)/msm8996-common/msm8996.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="h1" \
    PRODUCT_DEVICE="h1" \
    PRODUCT_NAME="h1_lra_us" \
    PRIVATE_BUILD_DESC="h1_lra_us-user 7.0 NRD90U 1707917149a1b release-keys"

BUILD_FINGERPRINT := "lge/h1_lra_us/h1:7.0/NRD90U/1707917149a1b:user/release-keys"
