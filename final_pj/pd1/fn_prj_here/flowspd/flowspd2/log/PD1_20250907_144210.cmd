#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Sep  7 14:42:29 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.10-p004_1 (64bit) 05/07/2020 20:02 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.10-p004_1 NR200413-0234/20_10-UB (database version 18.20.505) {superthreading v1.69}
#@(#)CDS: AAE 20.10-p005 (64bit) 05/07/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.10-p005_1 () Apr 14 2020 09:14:28 ( )
#@(#)CDS: SYNTECH 20.10-b004_1 () Mar 12 2020 22:18:21 ( )
#@(#)CDS: CPE v20.10-p006
#@(#)CDS: IQuantus/TQuantus 19.1.3-s155 (64bit) Sun Nov 3 18:26:52 PST 2019 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
setMultiCpuUsage -localCpu 4
setPreference ConstraintUserXGrid 0.1
setPreference ConstraintUserXOffset 0.1
setPreference ConstraintUserYGrid 0.1
setPreference ConstraintUserYOffset 0.1
setPreference SnapAllCorners 1
set init_verilog /ictc/student_data/vantruong/final_pj/fn_prj_here/input_data/netlist/croc_chip_yosys.v
set init_design_uniquify 1
set init_design_settop 1
set init_top_cell croc_chip
set init_lef_file { /ictc/student_data/share/pd/data/user_setting/sg13g2_tech.lef  /ictc/student_data/share/pd/data/user_setting/sg13g2_stdcell_weltap.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_2048x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_4096x8_c3_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_4096x16_c3_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_64x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_1024x16_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_256x48_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_1024x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_1024x8_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_256x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_512x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/sg13g2_io_notracks.lef  /ictc/student_data/share/pd/data/user_setting/sg13g2_io.lef  /ictc/student_data/share/pd/data/user_setting/bondpad_70x70.lef  }
set init_mmmc_file /ictc/student_data/vantruong/final_pj/fn_prj_here/input_data/croc_mmmc.view
set init_pwr_net VDD
set init_gnd_net VSS
init_design
floorPlan -site CoreSite -d 1840.32 1840.02 168 168 168 168
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {655.07 375.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {655.07 508.84}
win
freeDesign
setMultiCpuUsage -localCpu 4
setPreference ConstraintUserXGrid 0.1
setPreference ConstraintUserXOffset 0.1
setPreference ConstraintUserYGrid 0.1
setPreference ConstraintUserYOffset 0.1
setPreference SnapAllCorners 1
set init_verilog /ictc/student_data/vantruong/final_pj/fn_prj_here/input_data/netlist/croc_chip_yosys.v
set init_design_uniquify 1
set init_design_settop 1
set init_top_cell croc_chip
set init_lef_file { /ictc/student_data/share/pd/data/user_setting/sg13g2_tech.lef  /ictc/student_data/share/pd/data/user_setting/sg13g2_stdcell_weltap.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_2048x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_4096x8_c3_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_4096x16_c3_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_64x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_1024x16_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_256x48_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_1024x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_1024x8_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_256x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_512x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/sg13g2_io_notracks.lef  /ictc/student_data/share/pd/data/user_setting/sg13g2_io.lef  /ictc/student_data/share/pd/data/user_setting/bondpad_70x70.lef  }
set init_mmmc_file /ictc/student_data/vantruong/final_pj/fn_prj_here/input_data/croc_mmmc.view
set init_pwr_net VDD
set init_gnd_net VSS
init_design
floorPlan -site CoreSite -d 1840.32 1840.02 168 168 168 168
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {655.07 375.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {655.07 508.84}
checkDesign -all > rpt/00_init_design/check_design.rpt
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst * -override
globalNetConnect VSS -type pgpin -pin VSS -inst * -override
setEndCapMode -prefix ENDCAP -leftEdge sky130_fd_sc_hd__endcap -rightEdge sky130_fd_sc_hd__endcap
addEndCap
verifyEndCap
editDelete -type Special -use POWER
globalNetConnect VDD -type pgpin -pin VDDARRAY -inst * -override
globalNetConnect VDD -type pgpin -pin VDDARRAY! -inst * -override
globalNetConnect VDD -type pgpin -pin VDD! -inst * -override
globalNetConnect VSS -type pgpin -pin VSS! -inst * -override
createRouteBlk -name sram_rblk -layer Metal5 -box {{645.07 365.06 1449.55 637.62}}
sroute -connect { blockPin corePin floatingStripe } -layerChangeRange { Metal1  TopMetal2 } -blockPinTarget { nearestRingStripe nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange {  Metal1 TopMetal2 } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1 TopMetal2 }
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal3 -stacked_via_bottom_layer Metal1 -stapling_nets_style side_to_side
addStripe -layer Metal3 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{348.0 348.0 1492.32 1492.02}}
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal4 -stacked_via_bottom_layer Metal3 -stapling_nets_style side_to_side
addStripe -layer Metal4 -direction horizontal -nets {VDD VSS} -width 1 -set_to_set_distance 30 -spacing 2 -start 15 -area {{348.0 348.0 1492.32 1492.02}}
setAddStripeMode -stacked_via_top_layer Metal5 -stacked_via_bottom_layer Metal4 -stapling_nets_style side_to_side
addStripe -layer Metal5 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 3 -area {{348.0 348.0 1492.32 1492.02}}
setAddStripeMode -stacked_via_top_layer TopMetal1 -stacked_via_bottom_layer Metal5 -stapling_nets_style side_to_side
addStripe -layer TopMetal1 -direction horizontal -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -start 0.5 -area {{348.0 348.0 1492.32 1492.02}}
setAddStripeMode -stacked_via_top_layer TopMetal2 -stacked_via_bottom_layer TopMetal1 -stapling_nets_style side_to_side
addStripe -layer TopMetal2 -direction vertical -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -area {{348.0 348.0 1492.32 1492.02}}
deleteRouteBlk -name sram_rblk
editPowerVia -nets VDD -add_vias true -top_layer TopMetal1 -area {645.07 365.06 1449.55 637.62} -uda -orthogonal_only
editPowerVia -nets VSS -add_vias true -top_layer TopMetal1 -area {645.07 365.06 1449.55 637.62} -uda -orthogonal_only
verifyPowerVia
verify_connectivity -net {VDD VSS}
saveDesign SAVED/00_init_design_PG.invs
addWellTap -cell sky130_fd_sc_hd__tapvpwrvgnd_1 -cellInterval 40 -inRowOffset 25 -prefix WELLTAP
saveDesign SAVED/00_init_design.invs
set_table_style -no_frame_fix_width
set_global timing_report_enable_auto_column_width true
set_global report_timing_format {hpin cell fanout load slew delay arrival pin_location}
timeDesign -prePlace -pathReports -slackReports -numPaths 1000 -prefix 00_init_design_prePlace -outDir ./rpt/00_init_design_prePlace
win
zoomBox 152.17600 -16.42300 1796.74300 1609.97200
zoomBox 741.17600 180.56600 1599.65000 1029.55400
zoomBox 865.77300 254.71000 1486.02100 868.10400
zoomBox 990.95100 329.19800 1371.86200 705.90000
zoomBox 1020.72900 346.98100 1344.50400 667.17800
zoomBox 1085.84400 385.86400 1284.68300 582.50600
zoomBox 1067.23200 374.94300 1301.16100 606.28700
zoomBox 953.61900 308.27500 1401.75300 751.45700
zoomBox 804.27300 220.63800 1533.98500 942.28700
setLayerPreference violation -isVisible 0
setLayerPreference node_layer -isVisible 0
zoomBox 515.80800 42.20800 1913.70700 1424.66100
zoomBox 290.89900 -96.22200 2225.70800 1817.20800
zoomBox 383.84500 31.33000 1781.74500 1413.78400
zoomBox 498.28600 222.06500 1227.99900 943.71500
zoomBox 295.95500 152.38500 1305.93800 1151.20800
zoomBox 16.62600 55.94100 1414.52600 1438.39500
zoomBox -161.00800 -5.39100 1483.58100 1621.02600
zoomBox 55.69600 45.49100 1453.59700 1427.94600
zoomBox 552.39400 157.74500 1410.88100 1006.74600
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
zoomBox 277.03600 39.94100 1465.25300 1215.02900
zoomBox -102.85600 -119.74800 1541.73600 1506.67200
zoomBox -196.39000 -211.14400 1738.42400 1702.29100
zoomBox 53.21200 -127.76600 1697.80400 1498.65400
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM2 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM3 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM2 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM3 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM4 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM5 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
zoomBox 402.00700 26.04000 1590.22400 1201.12800
zoomBox 654.01000 137.16400 1512.49800 986.16600
setLayerPreference allM6 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM5 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference TopMetal2 -isVisible 0
setLayerPreference TopVia2 -isVisible 0
setLayerPreference TopMetal1 -isVisible 0
setLayerPreference TopVia1 -isVisible 0
setLayerPreference TopMetal1 -isVisible 1
setLayerPreference TopMetal1 -isVisible 0
update_names -restricted . -replace_str _
update_names -restricted {[} -replace_str _
update_names -restricted \] -replace_str _
setMultiCpuUsage -localCpu 8
setPreference ConstraintUserXGrid 0.1
setPreference ConstraintUserXOffset 0.1
setPreference ConstraintUserYGrid 0.1
setPreference ConstraintUserYOffset 0.1
setPreference SnapAllCorners 1
setAnalysisMode -analysisType onchipvariation
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
set_propagated_clock [all_clocks]
current_design
set_max_fanout 32 [current_design]
current_design
set_max_transition 0.5 [current_design] 
setExtractRCMode -layerIndependent 1
setExtractRCMode -defViaCap true
setDesignMode -reset -congEffort
setDesignMode -flowEffort standard -process 130
setDesignMode -topRoutingLayer Metal5
setDesignMode -bottomRoutingLayer Metal2
setDesignMode -congEffort high
setPlaceMode -place_opt_post_place_tcl /ictc/student_data/vantruong/final_pj/fn_prj_here/data/scripts/common/place_opt_post_place.tcl
set_table_style -no_frame_fix_width
set_global timing_report_enable_auto_column_width true
set_global report_timing_format {hpin cell fanout load slew delay arrival pin_location}
reset_path_group -all
group_path -name reg2reg -from [filter_collection [all_registers] "is_integrated_clock_gating_cell != true"] -to [filter_collection [all_registers] "is_integrated_clock_gating_cell != true"]
group_path -name reg2icg -from [filter_collection [all_registers] "is_integrated_clock_gating_cell != true"] -to [filter_collection [all_registers] "is_integrated_clock_gating_cell == true"]
group_path -name reg2mem -from [filter_collection [all_registers] "is_integrated_clock_gating_cell != true"] -to [filter_collection [all_registers -macros] "is_memory_cell == true"]
group_path -name mem2reg -from [filter_collection [all_registers -macros] "is_memory_cell == true"] -to  [filter_collection [all_registers] "is_integrated_clock_gating_cell != true"]
group_path -name reg2out -from [filter_collection [all_registers] "is_integrated_clock_gating_cell != true"] -to [all_outputs]
group_path -name in2reg  -from [all_inputs -no_clocks] -to [filter_collection [all_registers] "is_integrated_clock_gating_cell != true"]
group_path -name in2icg  -from [all_inputs -no_clocks] -to [filter_collection [all_registers] "is_integrated_clock_gating_cell == true"]
group_path -name in2out  -from [all_inputs -no_clocks] -to [all_outputs]
setPathGroupOptions reg2reg -effortLevel high
setPathGroupOptions reg2icg -effortLevel high
setPathGroupOptions reg2mem -effortLevel high
setPathGroupOptions mem2reg -effortLevel high
setPathGroupOptions reg2out -effortLevel low
setPathGroupOptions in2reg -effortLevel low
setPathGroupOptions in2icg -effortLevel low
setPathGroupOptions in2out -effortLevel low
reportPathGroupOptions
setOptMode -addInstancePrefix ictc_preCTS_
set_dont_use sg13g2_buf_16 false
set_dont_use sg13g2_inv_16 false
place_opt_design
timeDesign -precTS -slackReports
timeDesign -hold -precTS -slackReports
