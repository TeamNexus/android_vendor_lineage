# Insert new variables inside the Lineage structure
$(call add_json_bool, Has_legacy_camera_hal1,                $(filter true,$(TARGET_HAS_LEGACY_CAMERA_HAL1)))
$(call add_json_bool, Needs_text_relocations,                $(filter true,$(TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS)))
$(call add_json_str,  Specific_camera_parameter_library,     $(TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY))
$(call add_json_str,  Target_shim_libs,                      $(subst $(space),:,$(TARGET_LD_SHIM_LIBS)))
$(call add_json_bool, Uses_generic_camera_parameter_library, $(if $(TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY),false,true))
$(call add_json_bool, Uses_nvidia_enhancements,              $(filter TRUE,$(NV_ANDROID_FRAMEWORK_ENHANCEMENTS)))
$(call add_json_bool, Uses_qcom_bsp_legacy,                  $(filter true,$(TARGET_USES_QCOM_BSP_LEGACY)))
$(call add_json_bool, Uses_qti_camera_device,                $(filter true,$(TARGET_USES_QTI_CAMERA_DEVICE)))
