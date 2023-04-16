set SynModuleInfo {
  {SRCNAME conv2d_Pipeline_in_channels_kh_kw MODELNAME conv2d_Pipeline_in_channels_kh_kw RTLNAME conv2d_conv2d_Pipeline_in_channels_kh_kw
    SUBMODULES {
      {MODELNAME conv2d_flow_control_loop_pipe_sequential_init RTLNAME conv2d_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME conv2d_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME conv2d MODELNAME conv2d RTLNAME conv2d IS_TOP 1
    SUBMODULES {
      {MODELNAME conv2d_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME conv2d_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME conv2d_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME conv2d_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME conv2d_mul_32ns_32ns_64_2_1 RTLNAME conv2d_mul_32ns_32ns_64_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME conv2d_mul_32ns_64ns_96_5_1 RTLNAME conv2d_mul_32ns_64ns_96_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
}
