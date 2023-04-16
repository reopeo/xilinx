set SynModuleInfo {
  {SRCNAME muladd MODELNAME muladd RTLNAME muladd IS_TOP 1
    SUBMODULES {
      {MODELNAME muladd_mul_32s_32s_32_2_1 RTLNAME muladd_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME muladd_flow_control_loop_pipe RTLNAME muladd_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME muladd_flow_control_loop_pipe_U}
    }
  }
}
