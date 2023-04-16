set SynModuleInfo {
  {SRCNAME conv2d.1 MODELNAME conv2d_1 RTLNAME cnn_top_conv2d_1
    SUBMODULES {
      {MODELNAME cnn_top_flow_control_loop_pipe_sequential_init RTLNAME cnn_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cnn_top_Pipeline_VITIS_LOOP_110_1 MODELNAME cnn_top_Pipeline_VITIS_LOOP_110_1 RTLNAME cnn_top_cnn_top_Pipeline_VITIS_LOOP_110_1}
  {SRCNAME maxpool2d.1 MODELNAME maxpool2d_1 RTLNAME cnn_top_maxpool2d_1}
  {SRCNAME conv2d.2 MODELNAME conv2d_2 RTLNAME cnn_top_conv2d_2}
  {SRCNAME cnn_top_Pipeline_VITIS_LOOP_110_14 MODELNAME cnn_top_Pipeline_VITIS_LOOP_110_14 RTLNAME cnn_top_cnn_top_Pipeline_VITIS_LOOP_110_14}
  {SRCNAME maxpool2d MODELNAME maxpool2d RTLNAME cnn_top_maxpool2d}
  {SRCNAME cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2 MODELNAME cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2 RTLNAME cnn_top_cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2
    SUBMODULES {
      {MODELNAME cnn_top_mac_muladd_6ns_9ns_9ns_14_4_1 RTLNAME cnn_top_mac_muladd_6ns_9ns_9ns_14_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME cnn_top_Pipeline_VITIS_LOOP_110_15 MODELNAME cnn_top_Pipeline_VITIS_LOOP_110_15 RTLNAME cnn_top_cnn_top_Pipeline_VITIS_LOOP_110_15}
  {SRCNAME cnn_top_Pipeline_VITIS_LOOP_73_1 MODELNAME cnn_top_Pipeline_VITIS_LOOP_73_1 RTLNAME cnn_top_cnn_top_Pipeline_VITIS_LOOP_73_1}
  {SRCNAME cnn_top MODELNAME cnn_top RTLNAME cnn_top IS_TOP 1
    SUBMODULES {
      {MODELNAME cnn_top_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME cnn_top_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME cnn_top_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME cnn_top_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_vla1_i_RAM_AUTO_1R1W RTLNAME cnn_top_vla1_i_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_vla42_i_RAM_1WNR_AUTO_1R1W RTLNAME cnn_top_vla42_i_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_vla73_i_RAM_1WNR_AUTO_1R1W RTLNAME cnn_top_vla73_i_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_vla104_i_RAM_AUTO_1R1W RTLNAME cnn_top_vla104_i_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_vla135_i_RAM_1WNR_AUTO_1R1W RTLNAME cnn_top_vla135_i_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_vla166_i_RAM_AUTO_1R1W RTLNAME cnn_top_vla166_i_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_x_assign_RAM_AUTO_1R1W RTLNAME cnn_top_x_assign_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_top_x_assign_2_RAM_AUTO_1R1W RTLNAME cnn_top_x_assign_2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
