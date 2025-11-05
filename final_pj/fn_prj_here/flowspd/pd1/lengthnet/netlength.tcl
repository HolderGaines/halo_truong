proc net_lengtht {threshold} {
	set a 0
	set b 0
	foreach net [dbget top.nets.name] {
		
			set total_length 0
			selectNet $net
			set net_length [dbget selected.wires.length]
			foreach  length $net_length {
				set total_length [expr $total_length + $length]
			}
			if {$total_length > $threshold} {
				incr a 
				puts "#Info: $a $net Length= $total_length"
			}
			deselectAll
			incr b
	
	
	}
}
