proc zum {num_path} {
	 set_table_style -nosplit -no_frame_fix_width
	 report_timing -path_group reg2reg -max_paths $num_path > report_timing
	 set count 0
	 set h 0
	 set fh [open "report_timing" r]
	 set data [read $fh]

	 set begin_point ""
	 set end_point ""
	 set total_level ""
	 set buf_inv_num ""
	 set slew {}
	 set delay {}
	 set slack ""
	 close $fh

	 foreach line [split $data "\n"] {

		   if {[regexp {Beginpoint:\s+(\S+)} $line -> bp]} {
			   set begin_point $bp
		   }

		   if {[regexp {Endpoint:\s+(\S+)} $line -> ep]} {
                           set end_point $ep
		   }
 
		   set cols [regexp -all -inline {\S+} $line]
		   set cols_4 [lindex $cols 4]
		   set cols_5 [lindex $cols 5]

 		   foreach item_slew $cols_4 {
			   if {[regexp {^0\.\d+} $item_slew]} {
			      	   lappend slew $item_slew
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
 
		   foreach item_delay $cols_5 {
			   if {[regexp {^0\.\d+} $item_delay]} {
			       	   lappend delay $item_delay
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
                           incr count
                           if {$count != 1} {
                                   puts "#[expr $count - 1] $begin_point $end_point $total_level $buf_inv_num [expr $total_level - $buf_inv_num] $max_slew $max_delay $slack"
                                   set slew {}
                                   set delay {}
				   # Reset
                        set start_point ""
                        set end_point ""
                        set total_level 0
                        set buf_inv_num 0
                        set logic 0
                        set max_slew 0.0
                        set max_delay 0.0
                        set slack 0.0

                           }

                      

                   }

	   }
	 #  puts "#$count $begin_point $end_point $total_level $buf_inv_num [expr $total_level - $buf_inv_num] $max_slew $max_delay $slack"
			set begin_point ""
                           set end_point ""
                           set total_level 0
                           set buf_inv_num 0
                           set buf_inv 0
                           set cell 0

   }
