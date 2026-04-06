# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "COMPARE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GET_BRAM_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GET_BRAM_DST_IP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GET_BRAM_SRC_IP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OFFSET_RULE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RECIVED_BRAM_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RECIVED_BRAM_DST_IP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RECIVED_BRAM_SRC_IP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RESPONSE" -parent ${Page_0}


}

proc update_PARAM_VALUE.COMPARE { PARAM_VALUE.COMPARE } {
	# Procedure called to update COMPARE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COMPARE { PARAM_VALUE.COMPARE } {
	# Procedure called to validate COMPARE
	return true
}

proc update_PARAM_VALUE.GET_BRAM_DATA { PARAM_VALUE.GET_BRAM_DATA } {
	# Procedure called to update GET_BRAM_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GET_BRAM_DATA { PARAM_VALUE.GET_BRAM_DATA } {
	# Procedure called to validate GET_BRAM_DATA
	return true
}

proc update_PARAM_VALUE.GET_BRAM_DST_IP { PARAM_VALUE.GET_BRAM_DST_IP } {
	# Procedure called to update GET_BRAM_DST_IP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GET_BRAM_DST_IP { PARAM_VALUE.GET_BRAM_DST_IP } {
	# Procedure called to validate GET_BRAM_DST_IP
	return true
}

proc update_PARAM_VALUE.GET_BRAM_SRC_IP { PARAM_VALUE.GET_BRAM_SRC_IP } {
	# Procedure called to update GET_BRAM_SRC_IP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GET_BRAM_SRC_IP { PARAM_VALUE.GET_BRAM_SRC_IP } {
	# Procedure called to validate GET_BRAM_SRC_IP
	return true
}

proc update_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to update IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to validate IDLE
	return true
}

proc update_PARAM_VALUE.OFFSET_RULE { PARAM_VALUE.OFFSET_RULE } {
	# Procedure called to update OFFSET_RULE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OFFSET_RULE { PARAM_VALUE.OFFSET_RULE } {
	# Procedure called to validate OFFSET_RULE
	return true
}

proc update_PARAM_VALUE.RECIVED_BRAM_DATA { PARAM_VALUE.RECIVED_BRAM_DATA } {
	# Procedure called to update RECIVED_BRAM_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RECIVED_BRAM_DATA { PARAM_VALUE.RECIVED_BRAM_DATA } {
	# Procedure called to validate RECIVED_BRAM_DATA
	return true
}

proc update_PARAM_VALUE.RECIVED_BRAM_DST_IP { PARAM_VALUE.RECIVED_BRAM_DST_IP } {
	# Procedure called to update RECIVED_BRAM_DST_IP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RECIVED_BRAM_DST_IP { PARAM_VALUE.RECIVED_BRAM_DST_IP } {
	# Procedure called to validate RECIVED_BRAM_DST_IP
	return true
}

proc update_PARAM_VALUE.RECIVED_BRAM_SRC_IP { PARAM_VALUE.RECIVED_BRAM_SRC_IP } {
	# Procedure called to update RECIVED_BRAM_SRC_IP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RECIVED_BRAM_SRC_IP { PARAM_VALUE.RECIVED_BRAM_SRC_IP } {
	# Procedure called to validate RECIVED_BRAM_SRC_IP
	return true
}

proc update_PARAM_VALUE.RESPONSE { PARAM_VALUE.RESPONSE } {
	# Procedure called to update RESPONSE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESPONSE { PARAM_VALUE.RESPONSE } {
	# Procedure called to validate RESPONSE
	return true
}


proc update_MODELPARAM_VALUE.IDLE { MODELPARAM_VALUE.IDLE PARAM_VALUE.IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDLE}] ${MODELPARAM_VALUE.IDLE}
}

proc update_MODELPARAM_VALUE.GET_BRAM_DATA { MODELPARAM_VALUE.GET_BRAM_DATA PARAM_VALUE.GET_BRAM_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GET_BRAM_DATA}] ${MODELPARAM_VALUE.GET_BRAM_DATA}
}

proc update_MODELPARAM_VALUE.GET_BRAM_DST_IP { MODELPARAM_VALUE.GET_BRAM_DST_IP PARAM_VALUE.GET_BRAM_DST_IP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GET_BRAM_DST_IP}] ${MODELPARAM_VALUE.GET_BRAM_DST_IP}
}

proc update_MODELPARAM_VALUE.GET_BRAM_SRC_IP { MODELPARAM_VALUE.GET_BRAM_SRC_IP PARAM_VALUE.GET_BRAM_SRC_IP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GET_BRAM_SRC_IP}] ${MODELPARAM_VALUE.GET_BRAM_SRC_IP}
}

proc update_MODELPARAM_VALUE.RECIVED_BRAM_DATA { MODELPARAM_VALUE.RECIVED_BRAM_DATA PARAM_VALUE.RECIVED_BRAM_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RECIVED_BRAM_DATA}] ${MODELPARAM_VALUE.RECIVED_BRAM_DATA}
}

proc update_MODELPARAM_VALUE.RECIVED_BRAM_DST_IP { MODELPARAM_VALUE.RECIVED_BRAM_DST_IP PARAM_VALUE.RECIVED_BRAM_DST_IP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RECIVED_BRAM_DST_IP}] ${MODELPARAM_VALUE.RECIVED_BRAM_DST_IP}
}

proc update_MODELPARAM_VALUE.RECIVED_BRAM_SRC_IP { MODELPARAM_VALUE.RECIVED_BRAM_SRC_IP PARAM_VALUE.RECIVED_BRAM_SRC_IP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RECIVED_BRAM_SRC_IP}] ${MODELPARAM_VALUE.RECIVED_BRAM_SRC_IP}
}

proc update_MODELPARAM_VALUE.COMPARE { MODELPARAM_VALUE.COMPARE PARAM_VALUE.COMPARE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COMPARE}] ${MODELPARAM_VALUE.COMPARE}
}

proc update_MODELPARAM_VALUE.RESPONSE { MODELPARAM_VALUE.RESPONSE PARAM_VALUE.RESPONSE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESPONSE}] ${MODELPARAM_VALUE.RESPONSE}
}

proc update_MODELPARAM_VALUE.OFFSET_RULE { MODELPARAM_VALUE.OFFSET_RULE PARAM_VALUE.OFFSET_RULE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OFFSET_RULE}] ${MODELPARAM_VALUE.OFFSET_RULE}
}

