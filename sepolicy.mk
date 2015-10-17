# Board specific SELinux policy variable definitions
BOARD_SEPOLICY_DIRS += \
       device/qcom/aosp-sepolicy \
       device/qcom/aosp-sepolicy/common \
       device/qcom/aosp-sepolicy/test \
       device/qcom/aosp-sepolicy/$(TARGET_BOARD_PLATFORM)

# Compile sensor pilicy only for SSC targets
SSC_TARGET_LIST := apq8084
SSC_TARGET_LIST += msm8226
SSC_TARGET_LIST += msm8960
SSC_TARGET_LIST += msm8974
SSC_TARGET_LIST += msm8994

#ifeq ($(call is-board-platform-in-list,$(SSC_TARGET_LIST)),true)
BOARD_SEPOLICY_UNION += sensors.te
BOARD_SEPOLICY_UNION += sensors_test.te
#endif
