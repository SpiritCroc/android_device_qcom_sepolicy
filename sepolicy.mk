# Board specific SELinux policy variable definitions
BOARD_SEPOLICY_DIRS := \
       device/qcom/aosp-sepolicy \
       device/qcom/aosp-sepolicy/common \
       device/qcom/aosp-sepolicy/test \
       device/qcom/aosp-sepolicy/$(TARGET_BOARD_PLATFORM)
