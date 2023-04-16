# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
bias0 { 
	dir I
	width 32
	depth 4
	mode ap_memory
	offset 16
	offset_end 31
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
bias1 { 
	dir I
	width 32
	depth 8
	mode ap_memory
	offset 32
	offset_end 63
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
bias3 { 
	dir I
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
bias2 { 
	dir I
	width 32
	depth 32
	mode ap_memory
	offset 128
	offset_end 255
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weight0 { 
	dir I
	width 32
	depth 36
	mode ap_memory
	offset 256
	offset_end 511
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
y { 
	dir O
	width 32
	depth 10
	mode ap_memory
	offset 512
	offset_end 575
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weight1 { 
	dir I
	width 32
	depth 288
	mode ap_memory
	offset 2048
	offset_end 4095
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
weight3 { 
	dir I
	width 32
	depth 320
	mode ap_memory
	offset 8192
	offset_end 10239
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
weight2 { 
	dir I
	width 32
	depth 12544
	mode ap_memory
	offset 65536
	offset_end 131071
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


