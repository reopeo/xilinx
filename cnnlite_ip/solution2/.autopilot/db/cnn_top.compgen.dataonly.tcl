# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
y { 
	dir O
	width 32
	depth 10
	mode ap_memory
	offset 64
	offset_end 127
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
x { 
	dir I
	width 32
	depth 784
	mode ap_memory
	offset 4096
	offset_end 8191
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


