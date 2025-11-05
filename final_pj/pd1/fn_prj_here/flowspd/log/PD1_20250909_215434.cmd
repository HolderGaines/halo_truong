#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Sep  9 21:54:51 2025                
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
is_common_ui_mode
restoreDesign /ictc/student_data/vantruong/final_pj/fn_prj_here/flowspd/04ctstimingclean.dat croc_chip
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
setNanoRouteMode -reset
setDesignMode -topRoutingLayer Metal5
setNanoRouteMode -dbProcessNode 130
setNanoRouteMode -quiet -routeInsertAntennaDiode 1
setNanoRouteMode -quiet -routeAntennaCellName sky130_fd_sc_hd__diode_2
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -routeExpAdvancedPinAccess 2
setNanoRouteMode -drouteUseMultiCutViaEffort default
routeDesign -globalDetail
saveDesign SAVED/05_route.invs
timeDesign -postRoute -pathReports -slackReports -numPaths 1000 -prefix croc_postRoute -outDir ./rpt/05_route/05_route_setup
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 1000 -prefix croc_postRoute -outDir ./rpt/05_route/05_route_hold
checkPlace > rpt/05_route/checkPlace.rpt
timeDesign -postRoute -slackReports
setMultiCpuUsage -localCpu 4
setMultiCpuUsage -localCpu 2
setMultiCpuUsage -localCpu 2
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
setNanoRouteMode -reset
setNanoRouteMode -dbProcessNode 130
setNanoRouteMode -quiet -routeInsertAntennaDiode 1
setNanoRouteMode -quiet -routeAntennaCellName sky130_fd_sc_hd__diode_2
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -routeExpAdvancedPinAccess 2
setNanoRouteMode -drouteUseMultiCutViaEffort default
setOptMode -addInstancePrefix ictc_postRoute_setup_
optDesign -postRoute
win
zoomBox 54.01300 27.29200 1793.65500 1747.71100
zoomBox 187.61000 128.69100 1666.30500 1591.04700
zoomBox 342.17800 286.62900 1410.53600 1343.18200
zoomBox 256.41800 214.06300 1513.30900 1457.06600
fit
setLayerPreference violation -isVisible 0
zoomBox 406.69900 482.71600 1475.05600 1539.26800
zoomBox 785.00500 909.14500 1127.49500 1247.85100
zoomBox 846.79000 960.07900 1094.23900 1204.79400
setLayerPreference node_layer -isVisible 0
setLayerPreference Metal5 -isVisible 1
setLayerPreference Metal5 -isVisible 0
setLayerPreference Metal5 -isVisible 1
zoomBox 818.80400 947.53400 1109.92100 1235.43400
zoomBox 584.88900 842.67600 1240.99400 1491.53100
zoomBox 320.68200 724.23700 1389.04100 1780.79100
zoomBox 199.85400 670.07200 1456.74700 1913.07700
zoomBox -109.53400 531.38100 1630.11100 2251.80300
zoomBox -306.28300 443.18300 1740.35800 2467.20900
zoomBox -537.75200 339.42100 1870.06100 2720.62800
timeDesign -postRoute -slackReports
timeDesign -hold -postRoute -slackReports
win
fit
zoomBox 74.36600 -15.11100 1814.00800 1705.30800
zoomBox 459.51500 161.07700 1527.87300 1217.63000
zoomBox 797.71900 323.06400 1271.75600 791.86300
zoomBox 926.66000 384.82100 1174.11100 629.53800
zoomBox 965.73500 403.53600 1144.52000 580.34500
zoomBox 980.99600 410.84500 1132.96300 561.13300
fit
zoomBox 249.32000 -13.55800 1728.01600 1448.79900
zoomBox 598.72200 82.66500 1506.82600 980.73500
zoomBox 855.32500 189.78200 1329.36200 658.58100
zoomBox 963.45900 234.92200 1254.57700 522.82300
zoomBox 1053.45000 285.19300 1232.23400 462.00100
fit
setFillerMode -core {sg13g2_fill_1 sg13g2_fill_2 sg13g2_fill_4 sg13g2_fill_8} -corePrefix FILLER
addFiller -doDrc false
checkFiller
win
zoomBox 343.34500 232.33100 1600.23700 1475.33500
zoomBox 826.15300 583.03500 1229.08600 981.51600
zoomBox 902.75400 624.01200 1193.87400 911.91500
zoomBox 979.71300 665.18100 1158.49700 841.98900
zoomBox 1047.84800 701.62800 1127.17700 780.08000
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
zoomBox 1016.54600 680.79000 1145.72000 808.53700
zoomBox 914.83800 613.44100 1205.96700 901.35300
zoomBox 844.61700 567.31200 1247.56400 965.80700
fit
zoomBox 246.18200 118.23000 1724.87800 1580.58700
zoomBox 382.61400 200.33400 1639.50600 1443.33800
zoomBox 680.93900 379.86300 1452.83000 1143.22500
zoomBox 862.50200 509.86300 1336.54100 978.66400
zoomBox 905.71500 541.29000 1308.64900 939.77200
zoomBox 1022.76500 626.41700 1233.09900 834.42700
zoomBox 1041.93900 640.42000 1220.72300 817.22800
zoomBox 1083.86500 671.03800 1193.66100 779.62100
zoomBox 1109.61300 689.84100 1177.04200 756.52500
zoomBox 1125.42600 701.38700 1166.83700 742.34000
zoomBox 1132.40900 706.48700 1162.32900 736.07600
zoomBox 1137.45400 710.17200 1159.07200 731.55100
fit
zoomBox -13.83100 58.95200 1725.81100 1779.37100
zoomBox 62.09800 187.26200 1540.79400 1649.61900
zoomBox 188.29800 389.78600 1256.65600 1446.33900
zoomBox 316.15200 593.68100 972.25800 1242.53700
zoomBox 415.49100 749.62200 757.98300 1088.33000
zoomBox 445.59500 796.88000 693.04600 1041.59700
zoomBox 457.35200 815.33600 667.68600 1023.34600
zoomBox 483.06200 855.69300 612.23300 983.43700
fit
setMultiCpuUsage -localCpu 2
verify_drc -limit 0
verify_connectivity -type regular
verify_drc -limit 0
