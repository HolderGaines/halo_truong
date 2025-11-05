#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Sep  7 16:11:45 2025                
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
setMultiCpuUsage -localCpu 2
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
fit
setLayerPreference node_layer -isVisible 0
zoomBox 457.14400 142.20900 1525.50200 1198.76200
zoomBox 626.94400 213.18500 1398.83400 976.54600
zoomBox 818.55700 256.67100 1221.48900 655.15100
zoomBox 849.94600 263.79500 1192.43800 602.50300
zoomBox 918.58100 279.37100 1128.91500 487.38100
zoomBox 933.86100 297.09200 1112.64600 473.90100
zoomBox 946.85000 312.15500 1098.81700 462.44300
zoomBox 957.63900 323.40500 1086.81100 451.15000
zoomBox 981.23100 347.89300 1060.55900 426.34400
zoomBox 988.04600 348.63700 1055.47500 415.32100
zoomBox 998.76300 349.80800 1047.48100 397.98800
zoomBox 981.17300 347.60900 1060.50300 426.06200
zoomBox 952.53200 344.02800 1081.70900 471.77800
zoomBox 939.60200 343.94400 1091.57500 494.23800
zoomBox 906.49200 343.72800 1116.83700 551.74900
zoomBox 885.50500 343.45400 1132.97000 588.18500
zoomBox 831.76600 342.75300 1174.28000 681.48200
zoomBox 797.59200 342.19600 1200.55000 740.70100
zoomBox 654.44300 339.86400 1310.59300 988.76400
zoomBox 528.91700 192.09800 1437.08400 1090.23000
zoomBox 745.76300 229.52900 1303.49200 781.09500
zoomBox 871.40300 257.86800 1213.91900 596.59900
zoomBox 901.39600 265.15300 1192.53500 553.07500
zoomBox 948.56100 277.20400 1158.90900 485.22800
zoomBox 982.63800 285.91100 1134.61500 436.20900
zoomBox 996.87000 299.93200 1126.05100 427.68600
zoomBox 1008.96700 311.85100 1118.77100 420.44200
zoomBox 1035.41900 320.27800 1102.85200 386.96600
zoomBox 1041.73400 322.29000 1099.05200 378.97500
zoomBox 1052.01500 333.87400 1093.42800 374.82900
zoomBox 1047.72200 329.31100 1096.44300 377.49400
uiSetTool ruler
zoomBox 1013.29800 306.13600 1123.10500 414.73000
zoomBox 935.71200 253.90500 1183.19300 498.65100
zoomBox 760.85800 136.19200 1318.61900 687.79000
zoomBox 473.03900 -57.56800 1541.53700 999.12300
zoomBox -78.32900 -428.75000 1968.57700 1595.53800
zoomBox 555.87700 -118.92200 1812.93500 1124.24600
zoomBox 1174.25500 202.00400 1648.35400 670.86400
zoomBox 1315.56800 288.68400 1606.72400 576.62300
zoomBox 1393.17600 359.16500 1545.16200 509.47200
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
optDesign -preCTS
zoomBox -20.35000 -652.10500 2387.81700 1729.45200
optDesign -preCTS
timeDesign -precTS -slackReports
win
setLayerPreference node_layer -isVisible 1
zoomBox 50.83100 -426.58900 2097.77300 1597.73500
zoomBox 162.76200 -71.96500 1641.67800 1390.60900
zoomBox 273.88500 53.04700 1530.96400 1296.23600
zoomBox 595.09900 187.95600 1503.34000 1086.16100
zoomBox 721.55000 239.89100 1493.55500 1003.36600
fit
zoomBox 504.78500 192.81000 1761.67700 1435.81400
zoomBox 1008.20600 364.30400 1664.31300 1013.16100
zoomBox 1295.89400 478.57200 1587.01400 766.47500
zoomBox 1378.55200 504.01800 1557.33600 680.82600
zoomBox 1418.31900 522.18500 1528.11500 630.76800
zoomBox 1427.81200 526.52200 1521.13900 618.81800
zoomBox 1442.69300 533.34200 1510.12200 600.02600
fit
zoomBox 16.07700 117.18500 1494.77300 1579.54200
zoomBox 135.57400 327.34600 1043.67900 1225.41700
zoomBox 280.78100 584.35000 491.11600 792.36100
zoomBox 302.07400 621.56600 411.87100 730.15000
fit
zoomBox 737.44900 642.70700 1805.80800 1699.26100
zoomBox 1163.21500 1091.45900 1637.25200 1560.25800
zoomBox 1362.81400 1296.88400 1573.14800 1504.89400
fit
zoomBox 539.12500 92.14200 1796.01700 1335.14600
zoomBox 1099.60600 265.62900 1657.29600 817.15700
zoomBox 1341.77300 348.88900 1589.22500 593.60700
zoomBox 1369.86700 359.48400 1580.20200 567.49500
zoomBox 1393.74700 368.49000 1572.53200 545.29900
fit
zoomBox 152.38700 75.34800 1892.02900 1795.76700
zoomBox 709.93500 399.82900 1778.29400 1456.38300
zoomBox 1168.76800 589.31200 1642.80600 1058.11200
zoomBox 1220.75500 607.25200 1623.68700 1005.73200
zoomBox 1301.12400 626.18600 1592.24200 914.08700
zoomBox 1332.80900 632.94000 1580.26000 877.65700
zoomBox 1429.64800 652.96600 1539.44500 761.55000
zoomBox 1470.14200 661.85000 1518.86100 710.03100
fit
zoomBox 691.64100 187.32500 1599.74600 1085.39600
zoomBox 1084.24300 305.47800 1487.17400 703.95700
zoomBox 1233.92300 350.52400 1444.25600 558.53300
fit
timeDesign -hold -precTS -slackReports
optDesign -preCTS -setup
timeDesign -precTS -slackReports
timeDesign -hold -precTS -slackReports
report_timing -early  -path_group reg2reg -path_type full_clock
report_timing -path_group reg2reg -path_type full_clock
set_dont_use sg13g2_buf_16 false
set_dont_use sg13g2_inv_16 false
optDesign -preCTS -setup
report_timing -path_group reg2reg -path_type full_clock
optDesign -preCTS
optDesign -preCTS -setup
optDesign -preCTS -setup
optDesign -preCTS -setup
optDesign -preCTS -setup
win
zoomBox 255.76500 215.58700 1734.46100 1677.94400
zoomBox 774.43800 613.36200 1332.12900 1164.89100
zoomBox 952.10100 774.11900 1199.55200 1018.83600
zoomBox 970.69400 791.89200 1181.02700 999.90100
zoomBox 1026.87200 839.47600 1136.66800 948.05900
zoomBox 1036.09200 847.27000 1129.41900 939.56600
zoomBox 1043.69600 854.97800 1123.02500 933.43000
zoomBox 1055.65600 867.30200 1112.97100 923.98400
zoomBox 1060.32600 872.28900 1109.04400 920.46900
zoomBox 1067.89500 879.58400 1103.09400 914.39400
zoomBox 1069.88800 882.01400 1099.80800 911.60300
zoomBox 1073.74100 885.71300 1095.35900 907.09200
setLayerPreference net -isVisible 0
zoomBox 1064.44600 880.55500 1099.64800 915.36800
zoomBox 1050.67700 874.67800 1107.99800 931.36600
zoomBox 1044.38000 872.07000 1111.81700 938.76200
zoomBox 1033.94700 867.73000 1233.09600 946.77600
zoomBox 1021.67400 862.62500 1255.96700 955.62000
zoomBox 1059.72100 867.71800 1203.60700 924.82900
zoomBox 1037.64400 866.13600 1236.79600 945.18300
zoomBox 1024.31300 865.51700 1258.61000 958.51400
zoomBox 1008.63000 864.78900 1284.27300 974.19700
zoomBox 968.62500 863.00200 1350.14200 1014.43300
zoomBox 1016.28800 875.98600 1291.93400 985.39500
zoomBox 1073.80400 891.83900 1217.69500 948.95200
zoomBox 1081.26200 892.80500 1203.57000 941.35100
zoomBox 1088.90700 893.27600 1192.86900 934.54000
zoomBox 1096.37800 894.91100 1184.74600 929.98600
zoomBox 1102.90200 896.87500 1178.01600 926.68900
setLayerPreference poly -isVisible 0
setLayerPreference Cont -isVisible 0
setLayerPreference Metal1 -isVisible 0
setLayerPreference Metal2 -isVisible 0
setLayerPreference Via1 -isVisible 0
setLayerPreference Metal3 -isVisible 0
setLayerPreference Via2 -isVisible 0
optDesign -preCTS -setup
optDesign -preCTS -setup
zoomBox 1136.55500 913.06900 1151.34600 918.94000
