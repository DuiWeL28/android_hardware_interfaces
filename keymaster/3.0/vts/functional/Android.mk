# Copyright (C) 2017 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := VtsHalKeymasterV3_0TargetTest
LOCAL_SRC_FILES := \
        authorization_set.cpp \
        attestation_record.cpp \
        key_param_output.cpp \
        keymaster_hidl_hal_test.cpp \
        keystore_tags_utils.cpp \

LOCAL_SHARED_LIBRARIES := \
        android.hardware.keymaster@3.0 \
        libcrypto \
        libhidlbase \
        liblog \
        libsoftkeymasterdevice \
        libutils \

LOCAL_STATIC_LIBRARIES := \
        VtsHalHidlTargetTestBase \

LOCAL_CFLAGS := -Wall -Werror

include $(BUILD_NATIVE_TEST)
