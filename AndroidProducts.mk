#
# Copyright (C) 2017-2019 The LineageOS Project
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

# Finds the device name from the current folder name
PRODUCT_RELEASE_NAME := $(shell basename $(LOCAL_DIR))

# Finds the product makefile in current dir, and extracts the vendor name
CUSTOM_VENDOR := $(shell find $(LOCAL_DIR) -name *_*.mk -printf '%f' | cut -d_ -f1)

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/$(CUSTOM_VENDOR)_$(PRODUCT_RELEASE_NAME).mk

COMMON_LUNCH_CHOICES := \
    $(CUSTOM_VENDOR)_$(PRODUCT_RELEASE_NAME)-userdebug \
    $(CUSTOM_VENDOR)_$(PRODUCT_RELEASE_NAME)-user \
    $(CUSTOM_VENDOR)_$(PRODUCT_RELEASE_NAME)-eng
