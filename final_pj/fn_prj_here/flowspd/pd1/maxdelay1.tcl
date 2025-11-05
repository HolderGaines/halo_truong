proc maxdelay1 {rpt_file} {
	set max -1 
        set fh [open $rpt_file r]
	while {[gets $fh line] >= 0} {
		if {[regexp {^-} $line]} continue ;#
		set f [regexp -all -inline {\S+} $line]
		if {[llength $f] >=7 && [string is double -strict [lindex $f 5]]} {
			set d [lindex $f 5]
			if {$d > $max} {set max $d}
		}
	}
	close $fh
	puts "max delay: $max"
}


