proc zum {rpt_file} {
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
		# Start/End point
		if {[regexp {Beginpoint:\s+(\S+)} $line -> sp]} {
			set start_point $sp 
		}
		if {[regexp {Endpoint:\s+(\S+)} $line -> ep]} {
			set end_point $ep 
		}

	# Cell + delay
	if {[regexp {^\s+\S+\s(\S+)\s+\S+\s+\S+\s+(\S+)\s+\S+} $line -> cell delay ]} {
		incr total_level
		if {[regexp -nocase {buf|inv} $cell]} {
			incr buf_inv 
		} else {
			incr logic
		}
		if {$delay > $max_delay} {
			set max_delay $delay
		}
	}

	# Slew 
	if {[regexp {^\s+\S+\s+\S+\s+(\S+)\s+\S+\s+\S+} $line -> slew]} {
		if {$slew > $max_slew} {
			set max_slew $slew
		}
	}

	# Slack 
	if {[regexp {Slack Time\s+([-0-9.]+)} $line -> sl]} {
		set slack $sl
		incr path_id 
		  puts [format "#%d %s %s %d %d %d %.3f %.3f %.3f" \
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

