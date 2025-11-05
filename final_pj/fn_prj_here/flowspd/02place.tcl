###############################
# Setup
###############################
#global STAGE 02_place_opt
set STAGE 02_place_opt

#set central_path /ictc/teacher_data/ictc_mynguyen/ictc_lab/pd/data


set report_dir rpt
set stage_rpt ${report_dir}/${STAGE}
#
#
source /ictc/student_data/vantruong/final_pj/fn_prj_here/data/scripts/common/update_names_format.tcl

#if {![info exist $report_dir]} {exec mkdir $report_dir}
if {[glob -nocomplain $stage_rpt] == ""} {exec mkdir $stage_rpt}


source /ictc/student_data/vantruong/final_pj/fn_prj_here/data/scripts/common/common_settings.tcl ;
source /ictc/student_data/vantruong/final_pj/fn_prj_here/data/scripts/common/user_settings.tcl ;
source /ictc/student_data/vantruong/final_pj/fn_prj_here/data/scripts/common/config.tcl
###############################
set_dont_use sg13g2_buf_16 false
set_dont_use sg13g2_inv_16 false


###############################

#####################
## Placement
#####################

place_opt_design

otpDesign -preCTS

source /ictc/student_data/vantruong/final_pj/fn_prj_here/data/scripts/common/report_timing_format.tcl
# check legality
checkPlace

setTieHiLoMode -reset
setTieHiLoMode -cell {sg13g2_tiehi sg13g2_tielo} -maxFanOut 10 -honorDontTouch false -createHierPort false
addTieHiLo -cell {sg13g2_tiehi sg13g2_tielo} -prefix TIE

saveDesign SAVED/${STAGE}.invs
timeDesign -preCTS -pathReports -slackReports -numPaths 1000 -prefix croc_place -outDir ./rpt/${STAGE}/${STAGE}_setup

