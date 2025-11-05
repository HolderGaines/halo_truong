proc maxdelay {rpt_file} {
        set fp [open $rpt_file r]
        set data [read $fp]
        close $fp

	set max_delay 0.0
	foreach line [split $data "\n"] {
		if {[regexp {\s([-0-9.]+)\s+[-0-9.]+$} $line -> dval]} {
			if {[scan $dval %f val] == 1} {
				if {[$val > $max_delay]} {
					set max_delay $val
				}
			}
		}
	}
	puts "max cell delay = $max_delay"
}

