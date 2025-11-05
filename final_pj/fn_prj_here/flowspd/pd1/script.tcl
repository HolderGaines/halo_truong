proc summary_timing {rpt_file} {
	set fp [open $rpt_file r] 
	set data [read $fp]
	close $fp 

	set path_id 0
	set lines [split $data "\n"]

	set start_point ""
	set end_point ""
	set total_level 0
	set buf_inv 0
	set logic 0
	set max_slew 0.0
	set max_delay 0.0
	set slack 0.0

	foreach line $lines {
		# capture startpoint
		if {[regexp {Startpoint: ([^ ]+)} $line -> ep]} {
			set end_point $ep 
		}
		# Count levels 
		if {[regexp {([A-Za-z0-9_/]+)\s+\(.*\)\s+([0-9.]+)} $line -> cell delay]} {
			incr total_level 
				if {[regexp {BUF|INV} $cell]} {
				       incr buf_inv 
			       } else {
					incr logic 
				}
				if {$delay > $max_delay} {
				set max_delay $delay 
			}
		}
		# Max slew 
		if {[regexp {\s+([0-9.]+)\s+(\(SLEW\))} $line -> slew tag]} {
			if {$slew > $max_slew} {
				set max_slew $slew 
			}
		}
		# Slack
		if {[regexp {slack\s+([-0-9.]+)} $line -> sl]} {
			set slack $sl 
			incr path_id 
			puts [format "#%d %s %s %d %d %.3f %.3f %.3f" \
				$path_id $start_point $end_point $total_level $buf_inv $logic $max_slew $max_delay $slack]

			# Reset
			set start_point ""
			set end_point ""
		        set total_level 0
		        set buf_inv 0
		        set logic 0
		        set max_slew 0.0
		        set max_delay 0.0
		        set slack 0.0
		}
	}
}






