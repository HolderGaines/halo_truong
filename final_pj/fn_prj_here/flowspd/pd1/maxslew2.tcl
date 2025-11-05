proc maxslew5 {rpt_file} {
        if {![file exists $rpt_file]} {
                puts "ERROR"
                return
        }
	set_table_style -nosplit -no_frame_fix_width

	set slew {}
        set fp [open $rpt_file r]
        set data [read $fp]
        close $fp
        foreach line [split data "\n"] {

  	set cols [regexp -all -inline {\S+} $line]
	set cols_4 [lindex $cols 4]
	set cols_5 [lindex $cols 5]
	foreach item $cols_4 {
		if {[regexp {^0\.\d+} $item]} {
			lappend slew $item
		}
	}

	set slew_info [string trim $slew]
	set slew_list [split $slew_info " "]
	set max_slew [lindex $slew_list 0]
	foreach sl $slew_list {
		if {$sl > $max_slew} {
			set max_slew $sl
		}
	}
}
	        puts "Max slew = $max_slew"
}

