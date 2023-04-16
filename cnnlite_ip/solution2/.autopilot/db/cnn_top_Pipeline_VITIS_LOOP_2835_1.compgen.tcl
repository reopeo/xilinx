# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_top_cnn_top_Pipeline_VITIS_LOOP_2835_1_weight3_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_top_cnn_top_Pipeline_VITIS_LOOP_2835_1_bias3_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 180 \
    name y \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename y \
    op interface \
    ports { y_address0 { O 4 vector } y_ce0 { O 1 bit } y_we0 { O 1 bit } y_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'y'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name x_assign_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load \
    op interface \
    ports { x_assign_2_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name x_assign_2_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_1 \
    op interface \
    ports { x_assign_2_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name x_assign_2_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_2 \
    op interface \
    ports { x_assign_2_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name x_assign_2_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_3 \
    op interface \
    ports { x_assign_2_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name x_assign_2_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_4 \
    op interface \
    ports { x_assign_2_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name x_assign_2_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_5 \
    op interface \
    ports { x_assign_2_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name x_assign_2_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_6 \
    op interface \
    ports { x_assign_2_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name x_assign_2_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_7 \
    op interface \
    ports { x_assign_2_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name x_assign_2_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_8 \
    op interface \
    ports { x_assign_2_load_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name x_assign_2_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_9 \
    op interface \
    ports { x_assign_2_load_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name x_assign_2_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_10 \
    op interface \
    ports { x_assign_2_load_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name x_assign_2_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_11 \
    op interface \
    ports { x_assign_2_load_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name x_assign_2_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_12 \
    op interface \
    ports { x_assign_2_load_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name x_assign_2_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_13 \
    op interface \
    ports { x_assign_2_load_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name x_assign_2_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_14 \
    op interface \
    ports { x_assign_2_load_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name x_assign_2_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_15 \
    op interface \
    ports { x_assign_2_load_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name x_assign_2_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_16 \
    op interface \
    ports { x_assign_2_load_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name x_assign_2_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_17 \
    op interface \
    ports { x_assign_2_load_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name x_assign_2_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_18 \
    op interface \
    ports { x_assign_2_load_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name x_assign_2_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_19 \
    op interface \
    ports { x_assign_2_load_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name x_assign_2_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_20 \
    op interface \
    ports { x_assign_2_load_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name x_assign_2_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_21 \
    op interface \
    ports { x_assign_2_load_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name x_assign_2_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_22 \
    op interface \
    ports { x_assign_2_load_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name x_assign_2_load_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_23 \
    op interface \
    ports { x_assign_2_load_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name x_assign_2_load_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_24 \
    op interface \
    ports { x_assign_2_load_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name x_assign_2_load_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_25 \
    op interface \
    ports { x_assign_2_load_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name x_assign_2_load_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_26 \
    op interface \
    ports { x_assign_2_load_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name x_assign_2_load_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_27 \
    op interface \
    ports { x_assign_2_load_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name x_assign_2_load_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_28 \
    op interface \
    ports { x_assign_2_load_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name x_assign_2_load_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_29 \
    op interface \
    ports { x_assign_2_load_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name x_assign_2_load_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_30 \
    op interface \
    ports { x_assign_2_load_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name x_assign_2_load_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_assign_2_load_31 \
    op interface \
    ports { x_assign_2_load_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName cnn_top_flow_control_loop_pipe_sequential_init_U
set CompName cnn_top_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix cnn_top_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


