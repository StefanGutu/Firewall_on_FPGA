#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vitis/bin:/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/ids_lite/ISE/bin/lin64:/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/bin
else
  PATH=/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vitis/bin:/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/ids_lite/ISE/bin/lin64:/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/paxl/Projects/Licenta/Vivado/AXI_DMA_AND_BRAM/AXI_DMA_TEST/AXI_DMA_TEST.runs/design_1_RuleChecker_0_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log design_1_RuleChecker_0_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source design_1_RuleChecker_0_0.tcl
