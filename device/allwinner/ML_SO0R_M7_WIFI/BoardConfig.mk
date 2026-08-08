DEVICE_PATH := device/allwinner/ML_SO0R_M7_WIFI

# Arquitetura Hibrida (Kernel 64-bit + Userspace 32-bit)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Desativar suporte a apps 64-bit no Userspace (Android 13 Go Edition)
TARGET_SUPPORTS_64_BIT_APPS := false
TARGET_SUPPORTS_32_BIT_APPS := true

# Kernel Pre-compilado (DTB ja incluso no binario do kernel)
TARGET_NO_KERNEL := false
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel

# Hardware & Plataforma
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_BOARD_PLATFORM := ceres

# Configuraçoes de Boot e Recovery as Boot (Virtual A/B)
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_USES_RECOVERY_AS_BOOT := true
AB_OTA_UPDATER := true

# Previne conflitos de symlink do rsync na estrutura /vendor da ramdisk
BOARD_ROOT_EXTRA_FOLDERS := vendor

# Partiçoes para o sistema A/B
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    init_boot \
    vendor_boot \
    system \
    system_ext \
    product \
    vendor

# Partiçoes Dinamicas / EROFS / F2FS
BOARD_SUPER_PARTITION_GROUPS := allwinner_dynamic_partitions
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_EROFS_COMPRESSOR := lz4

# TWRP UI & Touch (Resoluçao 800x480)
TW_THEME := portrait_mdpi
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACK_LIST := "hisi_onkey"
TW_HAS_EDL_MODE := false

# Mapeamento do FSTAB
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab
