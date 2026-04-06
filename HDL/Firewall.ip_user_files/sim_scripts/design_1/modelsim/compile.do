vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_21
vlib modelsim_lib/msim/processing_system7_vip_v1_0_23
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_datamover_v5_1_37
vlib modelsim_lib/msim/axi_sg_v4_1_21
vlib modelsim_lib/msim/axi_dma_v7_1_36
vlib modelsim_lib/msim/xlconstant_v1_1_10
vlib modelsim_lib/msim/proc_sys_reset_v5_0_17
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_35
vlib modelsim_lib/msim/axi_bram_ctrl_v4_1_13
vlib modelsim_lib/msim/blk_mem_gen_v8_4_11
vlib modelsim_lib/msim/axis_infrastructure_v1_1_1
vlib modelsim_lib/msim/axis_data_fifo_v2_0_17

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 modelsim_lib/msim/axi_vip_v1_1_21
vmap processing_system7_vip_v1_0_23 modelsim_lib/msim/processing_system7_vip_v1_0_23
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_datamover_v5_1_37 modelsim_lib/msim/axi_datamover_v5_1_37
vmap axi_sg_v4_1_21 modelsim_lib/msim/axi_sg_v4_1_21
vmap axi_dma_v7_1_36 modelsim_lib/msim/axi_dma_v7_1_36
vmap xlconstant_v1_1_10 modelsim_lib/msim/xlconstant_v1_1_10
vmap proc_sys_reset_v5_0_17 modelsim_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_35 modelsim_lib/msim/axi_register_slice_v2_1_35
vmap axi_bram_ctrl_v4_1_13 modelsim_lib/msim/axi_bram_ctrl_v4_1_13
vmap blk_mem_gen_v8_4_11 modelsim_lib/msim/blk_mem_gen_v8_4_11
vmap axis_infrastructure_v1_1_1 modelsim_lib/msim/axis_infrastructure_v1_1_1
vmap axis_data_fifo_v2_0_17 modelsim_lib/msim/axis_data_fifo_v2_0_17

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/paxl/InstalledTools/Vivado/2025.1/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_23 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work axi_datamover_v5_1_37 -64 -93  \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/d44a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_21 -64 -93  \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/b193/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_36 -64 -93  \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/cb19/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work xlconstant_v1_1_10 -64 -incr -mfcu  "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work proc_sys_reset_v5_0_17 -64 -93  \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m01e_0.sv" \

vlog -work axi_register_slice_v2_1_35 -64 -incr -mfcu  "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.sv" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_48ac_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_48ac_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_48ac_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_48ac_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_48ac_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_48ac_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_48ac_bsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_48ac_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_48ac_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_48ac_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_48ac_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_48ac_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_48ac_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_48ac_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_48ac_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_48ac_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_48ac_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_48ac_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_48ac_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_48ac_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_48ac_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_48ac_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_48ac_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_48ac_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_48ac_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_48ac_m00bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_48ac_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_48ac_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_48ac_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_48ac_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_48ac_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_48ac_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_48ac_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_48ac_m01e_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/sim/bd_48ac.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/sim/design_1_smartconnect_0_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_AXI_Slave_ReciveData_0_0/sim/design_1_AXI_Slave_ReciveData_0_0.v" \
"../../../bd/design_1/ip/design_1_RuleChecker_0_0/sim/design_1_RuleChecker_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_13 -64 -93  \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/2f03/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_11 -64 -incr -mfcu  "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a32c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vlog -work axis_infrastructure_v1_1_1 -64 -incr -mfcu  "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_17 -64 -incr -mfcu  "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/e1e3/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../AXI_DMA_TEST.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+../../../../../../../../../InstalledTools/Vivado/2025.1/2025.1/data/rsb/busdef" "+incdir+/home/paxl/InstalledTools/Vivado/2025.1/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_0_0/sim/design_1_axis_data_fifo_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_1_0/sim/design_1_axis_data_fifo_1_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

