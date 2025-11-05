
proc maxslew3 {rpt_file} {
        set fp [open $rpt_file r]

        set max_slew 0.0
	set in_path 0

	while {[gets $fp line] >= 0} {
		if {[regexp {^Path\s+\d+:} $line]} {
			set in_path 1
			continue
		}

		if {$in_path} {
			if {[regexp {\s+([\d\.]+)\s+([\d\.]+)\s+([\d\.]+)\s*$} $line match load slew delay]} {
				if {$slew > $max_slew} {
					set max_slew $slew
				}
			}

			if {[regexp {^ *Slack Time} $line]} {
				set in_path 0
			}
		}
	}
	        close $fp
return $max_slew
}

