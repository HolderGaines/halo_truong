proc length_net {threshold} {
	set nets [dbget top.nets]
	set count 0
	foreach net $nets {
		set lengths [dbget $net.wires.length]
		set total_len 0.0

		foreach l $lengths {
			set total_len [expr {$total_len + $l}]
		}

		if {$total_len > $threshold} {
			incr count
			puts "$count [dbget $net.name] length = $total_len"
		}
	}
}
