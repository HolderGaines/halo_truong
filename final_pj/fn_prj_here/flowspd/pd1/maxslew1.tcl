proc maxslew1 {rpt_file} {
        set fp [open $rpt_file r]
        set data [read $fp]
        close $fp

	        set max_slew 0.0
        foreach line [split $data "\n"] {
	if {[regexp {^(Pin|[-]+Endpoint:|Beginpoint:|Path |Analysis View|Other End Arrival|Clock Rise)} $line]} continue
	if {[string trim $line] eq ""} continue

	regsub -all {\([^)]*\)} $line "" clean 
	set toks  [split  $clean]

	if {[llength $toks] < 6 } continue
	set slew_tok [lindex $toks end-3] 
	set sval 0.0
	if {[scan $slew_tok $f sval] == 1} { 
		if {$sval > $max_slew} { set max_slew $sval }
	} 
}
puts "Max slew = $max_slew"
}
