DEVICE_PATH := device/allwinner/ML_SO0R_M7_WIFI

# Arquitetura
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

# Kernel Pré-compilado (Extraído do Boot Original)
TARGET_NO_KERNEL := false
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_PREBUILT_DTBIMAGE := $(DEVICE_PATH)/prebuilt/dtb
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# Hardware & Plataforma
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_BOARD_PLATFORM := ceres

# Configurações de Boot e Arquitetura Virtual A/B (Recovery as Boot)
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_USES_RECOVERY_AS_BOOT := true
AB_OTA_UPDATER := true

# Partições Dinâmicas / EROFS / F2FS
BOARD_SUPER_PARTITION_GROUPS := allwinner_dynamic_partitions
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_EROFS_COMPRESSOR := lz4

# TWRP UI & Touch
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
