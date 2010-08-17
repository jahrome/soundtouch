# Copyright (C) 2009 The Android Open Source Project
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
#

ifeq ($(HOST_OS),linux)

LOCAL_PATH := $(call my-dir)

#######################################################################
# gtest lib host

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cpp
# TODO: may need to drag these in a shared variable when we start to
# support target builds.
LOCAL_SRC_FILES := \
	source/SoundTouch/AAFilter.cpp \
	source/SoundTouch/BPMDetect.cpp \
	source/SoundTouch/FIFOSampleBuffer.cpp \
	source/SoundTouch/FIRFilter.cpp \
	source/SoundTouch/PeakFinder.cpp \
	source/SoundTouch/RateTransposer.cpp \
	source/SoundTouch/SoundTouch.cpp \
	source/SoundTouch/TDStretch.cpp \
	source/SoundTouch/cpu_detect_x86_gcc.cpp

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/source/SoundTouch \
    $(LOCAL_PATH)/include


LOCAL_CFLAGS += -O0 -lstdc++

LOCAL_MODULE := libsoundtouch

LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)

endif # HOST_OS == linux
