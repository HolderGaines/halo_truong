proc getInfoTimingPath {path_name num_path} {
 report_timing -path_group $path_name -max_paths $num_path > report_timing_path.rpt
 set_table_style -nosplit -no_frame_fix_width
 set n 0
 set h 0
 set fh [open "report_timing_path.rpt" r]
 set content [read $fh]
 set beginpoint_name ""
 set endpoint_name ""
 set slack ""
 set buf_num ""
 set total_level ""
 set list_output {}
 set slew {}
 set delay {}
 close $fh
 puts "#INFO: Output format: #ordinal numbers start_point_inst end_point_inst total_level buff/inv_num logic_num max_slew max_delay slack"
 foreach line [split $content "\n"] {
  if {[regexp {Endpoint:\s+(\S+)} $line -> Endpoint_name]} {
   incr n
   if {$n != 1} {
    puts "#[expr $n - 1] $beginpoint_name $endpoint_name $total_level $buf_num [expr $total_level - $buf_num] $max_slew $max_delay $slack"
    set slew {}
    set delay {}
   }
   set m 0
   set j 0
   set beginpoint_name ""
   set endpoint_name ""
   set buf_num ""
   set total_level ""
   set endpoint_name $Endpoint_name
  }
  if {[regexp {Beginpoint:\s+(\S+)} $line -> Beginpoint_name]} {
   set beginpoint_name $Beginpoint_name
  }
  if {[regexp {Slack Time\s+(\S+)} $line -> Slack]} {
   set slack $Slack
  }
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
   incr m
   set buf_num $m
  }
  if {[regexp {sg13g2_} $line]} {
   incr j
   set total_level $j
  }
 }
 puts "#$n $beginpoint_name $endpoint_name $total_level $buf_num [expr $total_level - $buf_num] $max_slew $max_delay $slack"
}
                                                                                                                                                                                         192,1         Bot


