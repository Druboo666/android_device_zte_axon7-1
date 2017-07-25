#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

  LOCAL_PATH := device/zte/axon7

  TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# ANT
  BOARD_ANT_WIRELESS_DEVICE := "qualcomm-uart"

# Architecture
  TARGET_BOARD_PLATFORM := msm8996
  TARGET_ARCH := arm64
  TARGET_ARCH_VARIANT := armv8-a
  TARGET_CPU_ABI := arm64-v8a
  TARGET_CPU_ABI2 :=
  TARGET_CPU_VARIANT := kryo

  TARGET_2ND_ARCH := arm
  TARGET_2ND_ARCH_VARIANT := armv7-a-neon
  TARGET_2ND_CPU_ABI := armeabi-v7a
  TARGET_2ND_CPU_ABI2 := armeabi
  TARGET_2ND_CPU_VARIANT := kryo

  CLANG_FAST := true
  ENABLE_CPUSETS := true
  TARGET_USES_64_BIT_BINDER := true

# Assertions
  TARGET_OTA_ASSERT_DEVICE := ailsa_ii,axon7

# Audio Flags
  AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
  AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
  AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
  AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
  AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
  AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
  AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
  AUDIO_FEATURE_ENABLED_DEV_ARBI := true
  AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
  AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
  AUDIO_FEATURE_ENABLED_FLUENCE := true
  AUDIO_FEATURE_ENABLED_HFP := true
  AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
  AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
  AUDIO_FEATURE_ENABLED_NT_PAUSE_TIMEOUT := true
  AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
  AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
  AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
  AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
  AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
  AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true
  AUDIO_USE_LL_AS_PRIMARY_OUTPUT := false
  BOARD_SUPPORTS_SOUND_TRIGGER := true
  BOARD_USES_ALSA_AUDIO := true
  USE_CUSTOM_AUDIO_POLICY := 1
  BOARD_USE_64BITMEDIA := false

# Some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := true
BOARD_USES_WIPOWER := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/axon7/bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_HAS_QCA_BT_ROME := true
WCNSS_FILTER_USES_SIBS := true

# Boot animation
  TARGET_BOOTANIMATION_HALF_RES := true

# BootLoader
  TARGET_BOOTLOADER_BOARD_NAME := ailsa_ii
  TARGET_NO_BOOTLOADER := true

# Camera
  TARGET_USES_MEDIA_EXTENSIONS := true
  TARGET_CAMERASERVICE_CLOSES_NATIVE_HANDLES := true

# Charger
  BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# CNE
  BOARD_USES_QCNE := true

# Crypto
  TARGET_HW_DISK_ENCRYPTION := true

# Dexopt
  ifeq ($(HOST_OS),linux)
    ifeq ($(TARGET_BUILD_VARIANT),user)
      ifeq ($(WITH_DEXPREOPT),)
        WITH_DEXPREOPT := true
        WITH_DEXPREOPT_BOOT_IMG_ONLY ?= true
      endif
    endif
  endif

# Display
  MAX_EGL_CACHE_KEY_SIZE := 12*1024
  MAX_EGL_CACHE_SIZE := 2048*1024
  MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
  NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
  OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
  TARGET_CONTINUOUS_SPLASH_ENABLED := true
  TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
  TARGET_USES_C2D_COMPOSITION := true
  TARGET_USES_ION := true
  USE_OPENGL_RENDERER := true
  SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000
  VSYNC_EVENT_PHASE_OFFSET_NS := 2000000

# GPS
  TARGET_NO_RPC := true
  USE_DEVICE_SPECIFIC_GPS := true

# Init
  TARGET_INIT_VENDOR_LIB := libinit_axon7
  TARGET_RECOVERY_DEVICE_MODULES := libinit_axon7

# Kernel
  BOARD_KERNEL_BASE := 0x80000000
  BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=32M@0-0xffffffff 
  # BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
  BOARD_KERNEL_PAGESIZE := 4096
  BOARD_KERNEL_TAGS_OFFSET := 0x00000100
  BOARD_RAMDISK_OFFSET     := 0x01000000
  BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
  TARGET_KERNEL_APPEND_DTB := true
  TARGET_KERNEL_ARCH := arm64
  TARGET_KERNEL_HEADER_ARCH := arm64
  TARGET_KERNEL_SOURCE := kernel/zte/msm8996
  TARGET_KERNEL_CONFIG := lineageos_axon7_defconfig
  TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

# Keystore
  TARGET_PROVIDES_KEYMASTER := true

# Lights
  TARGET_PROVIDES_LIBLIGHT := true

# NFC
  BOARD_NFC_CHIPSET := pn548
  TARGET_USES_NQ_NFC := true

# Partitions
  BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
  BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
  BOARD_CACHEIMAGE_PARTITION_SIZE := 838860800
  BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
  BOARD_SYSTEMIMAGE_PARTITION_SIZE := 6442450944
  BOARD_USERDATAIMAGE_PARTITION_SIZE := 56276234240
  BOARD_FLASH_BLOCK_SIZE := 262144
  TARGET_USERIMAGES_USE_EXT4 := true
  TARGET_USERIMAGES_USE_F2FS := true
  BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
  BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs

# PowerHAL
TARGET_POWERHAL_VARIANT := voxpopuli
TARGET_USES_INTERACTION_BOOST := true
-include device/voxpopuli/sepolicy/sepolicy.mk

# Properties
  TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Qualcomm support
  BOARD_USES_QCOM_HARDWARE := true
  BOARD_USES_QC_TIME_SERVICES := true
#  TARGET_RIL_VARIANT := caf
   PROTOBUF_SUPPORTED := true
   TARGET_USE_SDCLANG := true

# Recovery
  TARGET_RECOVERY_FSTAB := device/zte/axon7/rootdir/etc/fstab.qcom
  TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_axon7
  TARGET_RELEASETOOLS_EXTENSIONS := device/zte/axon7

# Sensors
  USE_SENSOR_MULTI_HAL := true

# Sepolicy (SeLinux)
  BOARD_SEPOLICY_DIRS += \
      device/zte/axon7/sepolicy
  include device/qcom/sepolicy/sepolicy.mk

# TWRP
  TW_THEME := portrait_hdpi
  BOARD_HAS_NO_REAL_SDCARD := true
  RECOVERY_SDCARD_ON_DATA := true
  TARGET_RECOVERY_QCOM_RTC_FIX := true
  TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
  TW_DEFAULT_BRIGHTNESS := 80
  TW_EXCLUDE_SUPERSU := true
  TW_EXTRA_LANGUAGES := true
  TW_INCLUDE_CRYPTO := true
  TW_INCLUDE_NTFS_3G := true
  TW_INPUT_BLACKLIST := "hbtp_vm"
  TW_NO_USB_STORAGE := true

# Wlan
  BOARD_HAS_QCOM_WLAN := true
  BOARD_HAS_QCOM_WLAN_SDK := true
  BOARD_HOSTAPD_DRIVER := NL80211
  BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
  BOARD_WLAN_DEVICE := qcwcn
  BOARD_WPA_SUPPLICANT_DRIVER := NL80211
  BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
  TARGET_USES_QCOM_WCNSS_QMI := true
  WIFI_DRIVER_FW_PATH_AP := "ap"
  WIFI_DRIVER_FW_PATH_STA := "sta"
  WIFI_DRIVER_FW_PATH_P2P := "p2p"
  WPA_SUPPLICANT_VERSION := VER_0_8_X

  # EAS 
  ENABLE_CPUSETS := true
  ENABLE_SCHEDBOOST := true

# inherit from the proprietary version
  -include vendor/zte/axon7/BoardConfigVendor.mk
