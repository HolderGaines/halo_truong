proc Summary_report_timing {num_path} {
	 set_table_style -nosplit -no_frame_fix_width
	 report_timing -path_group reg2reg -max_paths $num_path > report_timing
	
	 set count 0
	 set fp [open "report_timing" r]
	 set data [read $fp]

	 set begin_point ""
	 set end_point ""
	 set total_level ""
	 set buf_inv_num ""
	 set slew {}
	 set delay {}
	 set slack ""
	 close $fp

	 foreach line [split $data "\n"] {
		  if {[regexp {Endpoint:\s+(\S+)} $line -> ep]} {
			   incr count
			   if {$count != 1} {
				   puts "#[expr $count - 1] $begin_point $end_point $total_level $buf_inv_num [expr $total_level - $buf_inv_num] $max_slew $max_delay $slack"
				   set slew {}
    				   set delay {}
			   }

			   set begin_point ""
			   set end_point ""			   
			   set total_level ""
			   set buf_inv_num ""
			   set buf_inv 0
                           set cell 0			  
		   }

		   if {[regexp {Beginpoint:\s+(\S+)} $line -> bp]} {
			   set begin_point $bp
		   }

		   if {[regexp {Endpoint:\s+(\S+)} $line -> ep]} {
                           set end_point $ep
		   }
 
		   set column [regexp -all -inline {\S+} $line]
		   set column_4 [lindex $column 4]
		   set column_5 [lindex $column 5]

 		   foreach inst_slew $column_4 {
			   if {[regexp {^0\.\d+} $inst_slew]} {
			      	   lappend slew $inst_slew
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
 
		   foreach inst_delay $column_5 {
			   if {[regexp {^0\.\d+} $inst_delay]} {
			       	   lappend delay $inst_delay
			   }
		   }
		   set delay_info [string trim $delay]
		   set delay_list [split $delay_info " "]
		   set max_delay [lindex $delay_list 0]
		   foreach dl $delay_list {
			   if {$dl > $max_delay} {
			       	   set max_delay $dl
			   }
		   }
 
		   if {[regexp {sg13g2_(buf|inv)} $line]} {
			   incr buf_inv
			   set buf_inv_num $buf_inv
		   }

		   if {[regexp {sg13g2_} $line]} {
			   incr cell
			   set total_level $cell
		   }

		   if {[regexp {Slack Time\s+(\S+)} $line -> Slack]} {
                           set slack $Slack
                   }
	   }
	  puts "#$count $begin_point $end_point $total_level $buf_inv_num [expr $total_level - $buf_inv_num] $max_slew $max_delay $slack"
}
