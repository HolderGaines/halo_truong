#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Sep  9 23:04:03 2025                
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
restoreDesign /ictc/student_data/vantruong/final_pj/fn_prj_here/flowspd/flowspd2/04ctstimingclean.dat croc_chip
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
saveDesign 05timingclean
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
zoomBox 392.28500 334.98200 1460.64300 1391.53500
zoomBox 848.68000 684.22500 1059.01400 892.23500
zoomBox 949.61200 739.44800 998.33200 787.63000
zoomBox 958.67500 744.75200 993.87500 779.56300
zoomBox 967.74700 750.15900 989.36500 771.53800
zoomBox 972.93900 753.89100 986.21600 767.02100
zoomBox 974.17900 754.78600 985.46400 765.94600
setLayerPreference node_layer -isVisible 0
setLayerPreference violation -isVisible 0
zoomBox 968.17300 749.53500 989.79200 770.91500
zoomBox 965.98100 747.61700 991.41500 772.77000
zoomBox 947.65900 731.58400 1004.98000 788.27200
zoomBox 906.36500 695.45100 1035.55300 823.21200
zoomBox 838.39100 635.97500 1085.87800 880.72700
fit
zoomBox 185.03800 178.89500 1663.73300 1641.25100
zoomBox 392.85200 374.61800 1461.20900 1431.17000
zoomBox 679.61500 662.47400 1153.65100 1131.27200
zoomBox 713.92400 696.91400 1116.85400 1095.39200
zoomBox 806.85200 790.19700 1017.18500 998.20600
zoomBox 880.40100 864.31000 937.71600 920.99200
zoomBox 888.04500 872.01400 929.45600 912.96700
zoomBox 895.69500 879.75200 921.12800 904.90400
timeDesign -postRoute -slackReports
timeDesign -hold -postRoute -slackReports
setMultiCpuUsage -localCpu 2
verify_drc -limit 0
verify_connectivity -type regular
checkPlace
win
fit
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
saveDesign 06done
win
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference node_layer -isVisible 1
zoomBox 28.57200 51.03700 1768.21400 1771.45600
zoomBox 140.54300 172.61900 1619.23900 1634.97600
zoomBox 222.23900 279.64100 1479.13000 1522.64400
zoomBox 291.68000 370.60900 1360.03800 1427.16200
fit
setLayerPreference node_track -isVisible 1
setLayerPreference node_overlay -isVisible 1
setLayerPreference congestH -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setLayerPreference congestV -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
fit
setLayerPreference node_overlay -isVisible 0
setLayerPreference node_overlay -isVisible 1
fit
setLayerPreference node_overlay -isVisible 0
fit
zoomBox -384.15300 339.36600 2258.19900 1395.91900
zoomBox 369.64300 604.40200 1542.07100 1073.20100
zoomBox 818.33200 762.10200 1137.80900 889.84600
zoomBox 898.66100 790.33500 1065.43200 857.01900
zoomBox 911.81900 794.96000 1053.57600 851.64200
zoomBox 940.59400 805.07300 1027.65100 839.88300
zoomBox 962.48100 812.76600 1007.92800 830.93800
zoomBox 966.06600 814.02600 1004.69800 829.47300
zoomBox 973.90700 816.78100 997.63300 826.26800
zoomBox 976.20200 817.42900 996.36900 825.49300
zoomBox 979.81000 818.44700 994.38300 824.27400
fit
zoomBox -1257.05600 46.70900 3045.56900 1767.12800
zoomBox -298.90800 422.42400 1947.09100 1320.49400
zoomBox 541.46000 751.95400 983.64200 928.76200
zoomBox 639.93000 790.56600 870.75200 882.86100
zoomBox 699.74900 814.02200 802.16900 854.97500
zoomBox 718.16100 821.24300 781.05900 846.39300
zoomBox 729.80300 825.81000 768.43200 841.25600
fit
zoomBox -572.32100 159.32400 2070.03000 1215.87700
zoomBox -130.21400 282.00600 1492.52200 930.86200
zoomBox 381.67400 424.05100 823.85900 600.86000
zoomBox 435.86900 439.35500 755.34900 567.10000
zoomBox 457.03500 445.33200 728.59300 553.91500
zoomBox 475.02500 450.41200 705.85000 542.70800
zoomBox 514.36400 461.52100 656.12100 518.20300
zoomBox 523.75500 464.17300 644.24900 512.35300
zoomBox 531.73800 466.42700 634.15800 507.38000
zoomBox 538.52300 468.34300 625.58000 503.15300
zoomBox 549.19300 471.35600 612.09200 496.50600
setLayerPreference node_layer -isVisible 0
zoomBox 543.03600 469.12400 617.03500 498.71300
zoomBox 517.26800 459.77600 637.76700 507.95800
fit
zoomBox -1610.79600 -92.00100 3451.11600 1932.02100
zoomBox -1221.40500 66.20700 3081.22100 1786.62600
zoomBox -609.08700 314.98800 2499.56300 1557.99200
zoomBox -57.45800 434.90700 1565.28000 1083.76400
zoomBox 178.67700 479.01000 1175.24300 877.49000
zoomBox 356.08100 536.48200 876.29900 744.49300
zoomBox 383.79000 547.35900 825.97600 724.16900
zoomBox 407.34100 556.60500 783.20100 706.89400
win
fit
zoomBox -1203.02100 37.79600 3099.60500 1758.21500
zoomBox -311.36900 321.61400 2330.98100 1378.16600
zoomBox 387.32400 483.77700 1766.65000 1035.30500
zoomBox 812.76900 581.88300 1424.78300 826.59900
zoomBox 867.72800 593.06300 1387.94100 801.07200
zoomBox 914.44400 602.56600 1356.62500 779.37400
