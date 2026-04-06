# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "RECIVE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SEND" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WAIT" -parent ${Page_0}


}

proc update_PARAM_VALUE.RECIVE { PARAM_VALUE.RECIVE } {
	# Procedure called to update RECIVE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RECIVE { PARAM_VALUE.RECIVE } {
	# Procedure called to validate RECIVE
	return true
}

proc update_PARAM_VALUE.SEND { PARAM_VALUE.SEND } {
	# Procedure called to update SEND when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SEND { PARAM_VALUE.SEND } {
	# Procedure called to validate SEND
	return true
}

proc update_PARAM_VALUE.WAIT { PARAM_VALUE.WAIT } {
	# Procedure called to update WAIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WAIT { PARAM_VALUE.WAIT } {
	# Procedure called to validate WAIT
	return true
}


proc update_MODELPARAM_VALUE.RECIVE { MODELPARAM_VALUE.RECIVE PARAM_VALUE.RECIVE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RECIVE}] ${MODELPARAM_VALUE.RECIVE}
}

proc update_MODELPARAM_VALUE.SEND { MODELPARAM_VALUE.SEND PARAM_VALUE.SEND } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SEND}] ${MODELPARAM_VALUE.SEND}
}

proc update_MODELPARAM_VALUE.WAIT { MODELPARAM_VALUE.WAIT PARAM_VALUE.WAIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WAIT}] ${MODELPARAM_VALUE.WAIT}
}

