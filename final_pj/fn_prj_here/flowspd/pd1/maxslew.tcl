proc maxslew {rpt_file} {
	if {![file exists $rpt_file]} {
		puts "ERROR"
		return
	}
	
	set fp [open $rpt_file r]
	set data [read $fp]
	close $fp

	set max_slew 0.0
	foreach line [split $data "\n"] {
		if {[regexp {^\s*Pin|^-+$} $line]} {
			continue
		}

		set toks [split $line]
		if {[llength $toks] >=6} {
			set slew_tok [lindex $toks end-3]
			set sval 0.0
			if {[scan $slew_tok %f sval] == 1} {
				if {$sval > $max_slew} {
				set max_slew $sval 
				}
			}
		}
	}
	puts "Max slew = $max_slew"
}
		
	

