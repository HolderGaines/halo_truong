report_timing -early  -path_group reg2reg -path_type full_clock

 report_timing -path_group reg2reg -path_type full_clock


timeDesign -hold  -postcTS -slackReports

timeDesign  -postcTS -slackReports

source /ictc/student_data/vantruong/scripts/utility/report_timing_format.tcl 



optDesign -postcTS  -incr

source /ictc/student_data/vantruong/07_ss7/pr/scripts/00_init_design.tcl
source /ictc/student_data/vantruong/07_ss7/pr/scripts/02_place_opt.tcl
source /ictc/student_data/vantruong/10_ss10/pr/scripts/03_cts.tcl
source /ictc/student_data/vantruong/10_ss10/pr/scripts/04_cts_opt.tcl
source /ictc/student_data/vantruong/12_ss12/pr/scripts/05_route.tcl
source /ictc/student_data/vantruong/12_ss12/pr/scripts/06_route_opt.tcl

