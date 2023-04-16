dict set slaves control {ports {bias0 {type i_ap_memory width 32} bias1 {type i_ap_memory width 32} bias3 {type i_ap_memory width 32} bias2 {type i_ap_memory width 32} weight0 {type i_ap_memory width 32} y {type o_ap_memory width 32} weight1 {type i_ap_memory width 32} x {type i_ap_memory width 32} weight3 {type i_ap_memory width 32} weight2 {type i_ap_memory width 32} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {bias0 {width 32} bias1 {width 32} bias3 {width 32} bias2 {width 32} weight0 {width 32} y {width 32} weight1 {width 32} x {width 32} weight3 {width 32} weight2 {width 32}} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
