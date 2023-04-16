# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
x { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
weight { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
bias { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
width { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
height { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
in_channels { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
out_channels { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
ksize { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
y { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 80
	offset_end 87
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


