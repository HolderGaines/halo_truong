#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Sep  1 19:25:35 2025                
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
restoreDesign /ictc/student_data/vantruong/04_ss4/pr/04ctshold.dat croc_chip
win
setLayerPreference violation -isVisible 0
zoomBox 66.45100 22.76900 1806.09300 1743.18800
zoomBox 210.62000 120.32300 1689.31600 1582.68000
setLayerPreference node_layer -isVisible 0
zoomBox 326.62800 190.17300 1583.52000 1433.17700
zoomBox 509.05100 300.01300 1417.15500 1198.08300
zoomBox 210.61900 120.32300 1689.31600 1582.68100
zoomBox 74.13800 38.14600 1813.78300 1758.56800
fit
timeDesign -hold -postCTS -slackReports
gpsPrivate::masterAndSlaveCPU
gpsPrivate::masterAndSlaveCPU
gpsPrivate::masterAndSlaveCPU
optDesign -postCTS
timeDesign -hold -postCTS -slackReports
report_timing -early -path_group reg2reg -path_type full_clock 
ecoAddRepeater -term i_croc_soc/i_croc/i_gpio/_1082_/X -Cell sg13g2_buf_1
report_timing -early -path_group reg2reg -path_type full_clock 
optDesign -postCTS -incr
report_timing -early -path_group reg2reg -path_type full_clock 
optDesign -postCTS -incr
timeDesign -hold -postCTS -slackReports
timeDesign -hold -postcTS -slackReports
optDesign -postCTS -hold
timeDesign -hold -postcTS -slackReports
timeDesign -postcTS -slackReports
win
fit
zoomBox 269.17100 134.88700 1526.06100 1377.88900
zoomBox 497.82700 274.22300 1269.71600 1037.58300
zoomBox 671.77300 380.22100 1074.70500 778.70100
zoomBox 537.49000 317.74300 1193.59900 966.60200
zoomBox 403.83300 255.55500 1311.94200 1153.63000
zoomBox 318.83600 216.00800 1387.20000 1272.56700
zoomBox 101.19700 114.74500 1579.90100 1577.11000
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
saveDesign 04ctstimingclean
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
routeDesign -globalDetail
saveDesign SAVED/05_route.invs
timeDesign -postRoute -pathReports -slackReports -numPaths 1000 -prefix croc_postRoute -outDir ./rpt/05_route/05_route_setup
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 1000 -prefix croc_postRoute -outDir ./rpt/05_route/05_route_hold
checkPlace > rpt/05_route/checkPlace.rpt
win
checkPlace
refinePlace -checkRoute 0 -preserveRouting 1 -rmAffectedRouting 0 -swapEEQ 0
checkPlace
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
saveDesign SAVED/06_route_opt_setup.invs
timeDesign -postRoute -pathReports -slackReports -numPaths 1000 -prefix croc_postRoute -outDir ./rpt/06_route_opt/06_route_opt_setup
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 1000 -prefix croc_postRoute -outDir ./rpt/06_route_opt/06_route_opt_hold
saveDesign SAVED/06_route_opt.invs
checkFPlan -reportUtil > rpt/06_route_opt/check_util.rpt
checkPlace > rpt/06_route_opt/checkPlace.rpt
verify_drc -limit 0 > rpt/06_route_opt/verify_drc.rpt
setFillerMode -core {sg13g2_fill_1 sg13g2_fill_2 sg13g2_fill_4 sg13g2_fill_8} -corePrefix FILLER
addFiller -doDrc false
checkFiller
saveDesign SAVED/06_route_opt_filler.invs
defOut -unit 1000 -usedVia -routing output/06_route_opt/croc_chip.def.gz
saveNetlist output/06_route_opt/croc_chip.v
write_lef_abstract -extractBlockObs -cutObsMinSpacing -specifyTopLayer TopMetal2 -5.8 -extractBlockPGPinLayers {TopMetal1 TopMetal2} output/06_route_opt/croc_chip.lef
win
zoomBox 233.54500 216.86500 1490.44400 1459.87600
zoomBox 524.38000 446.26800 1296.27300 1209.63200
zoomBox 745.89000 621.57300 1148.82500 1020.05600
zoomBox 896.56200 740.81600 1048.53000 891.10500
zoomBox 921.88000 760.85300 1031.67700 869.43700
fit
checkPlace
zoomBox 125.39100 201.25500 1604.08700 1663.61200
zoomBox 422.17200 570.92900 1194.06100 1334.28900
zoomBox 547.23700 726.71100 1021.27400 1195.51000
zoomBox 664.69900 866.57500 875.03300 1074.58500
zoomBox 686.25400 881.21700 865.03900 1058.02600
zoomBox 733.38900 913.23200 843.18600 1021.81600
zoomBox 767.33000 931.88000 834.75900 998.56400
zoomBox 787.98200 943.28400 829.39300 984.23700
zoomBox 797.10200 948.32000 827.02300 977.91000
zoomBox 800.24300 950.48500 825.67600 975.63700
zoomBox 807.11100 955.22000 822.73100 970.66700
zoomBox 808.66400 956.38100 821.94100 969.51100
zoomBox 807.11100 955.22000 822.73100 970.66700
zoomBox 797.62500 948.13100 827.55200 977.72700
zoomBox 764.85600 923.64500 844.21000 1002.12200
zoomBox 716.68100 887.64700 868.69900 1037.98500
verify_drc 0
verify_drc
ecoRoute
verify_drc
win
zoomBox 678.61600 878.72300 889.02100 1086.80300
zoomBox 625.78200 865.62700 917.00000 1153.62700
zoomBox 512.21700 820.13400 986.41800 1289.09500
zoomBox 460.28100 799.32800 1018.16500 1351.04800
zoomBox 143.23300 672.32000 1211.96600 1729.24400
zoomBox -688.35800 339.19100 1720.29700 2721.23100
zoomBox -1627.63800 -37.07900 2294.45500 3841.67600
zoomBox -1275.51600 62.59800 2058.26300 3359.54000
zoomBox -505.55900 280.55500 1541.79900 2305.29000
zoomBox -31.25400 450.14200 1226.08100 1693.58400
checkPlace
routeDesign -globalDetail
verify_drc
verify_connectivity -type regular
verify_drc -limit 0
routeDesign -globalDetail
verify_drc -limit 0
win
setLayerPreference violation -isVisible 1
zoomBox -902.92300 62.79200 1505.73700 2444.83700
setLayerPreference node_layer -isVisible 1
zoomBox -230.98600 251.55600 3482.04600 1736.22400
zoomBox 189.48700 520.66000 2469.75400 1432.43200
zoomBox 968.46400 757.69600 1292.81500 887.38900
zoomBox 1034.32100 782.03700 1203.63800 849.73900
zoomBox 1075.85200 787.91700 1164.23900 823.25900
zoomBox 1091.07500 797.04000 1145.35700 818.74500
zoomBox 1100.00300 802.87900 1133.34000 816.20900
zoomBox 1102.75900 805.48400 1123.23200 813.67000
zoomBox 1103.37200 805.99100 1120.77400 812.94900
zoomBox 1104.33500 806.78700 1116.91000 811.81500
zoomBox 1105.28400 807.55900 1113.00700 810.64700
zoomBox 1105.48200 807.73600 1112.04700 810.36100
zoomBox 1105.91600 808.12200 1109.94900 809.73500
zoomBox 1105.79200 808.01300 1110.53900 809.91100
zoomBox 1105.04500 807.35000 1114.13900 810.98600
zoomBox 1104.06400 806.47800 1118.87200 812.39900
ecoRoute
verify_drc -limit 0
report_timing -path_group reg2reg -path_type full_clock
win
