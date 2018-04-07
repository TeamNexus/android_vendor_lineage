package android
type Product_variables struct {
	Needs_text_relocations struct {
		Cppflags []string
	}
	Uses_generic_camera_parameter_library struct {
		Srcs []string
	}
	Uses_qcom_bsp_legacy struct {
		Cppflags []string
	}
	Uses_samsung_cameraformat_nv21 struct {
		Cflags []string
	}
	Target_shim_libs struct {
		Cppflags []string
	}
	Uses_qti_camera_device struct {
		Cppflags []string
		Shared_libs []string
	}
}

type ProductVariables struct {
	Uses_generic_camera_parameter_library  *bool `json:",omitempty"`
	Specific_camera_parameter_library  *string `json:",omitempty"`
	Needs_text_relocations  *bool `json:",omitempty"`
	Uses_qcom_bsp_legacy  *bool `json:",omitempty"`
	Uses_samsung_cameraformat_nv21  *bool `json:",omitempty"`
	Target_shim_libs *string `json:",omitempty"`
	Uses_qti_camera_device  *bool `json:",omitempty"`
}
