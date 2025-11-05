#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Sep  8 22:39:48 2025                
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
timeDesign -hold -postcTS -slackReports
timeDesign -postcTS -slackReports
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
timeDesign -postRoute -slackReports
timeDesign -hold -postRoute -slackReports
verify_drc -limit 0
verify_connectivity -type regular
win
fit
fit
checkPlace
timeDesign -postRoute -slackReports
saveDesign 05timingclean
win
setLayerPreference violation -isVisible 0
zoomBox 576.05000 253.90900 1644.40900 1277.01500
zoomBox 1078.07800 508.63200 1552.11600 962.59100
zoomBox 1285.88700 644.25000 1533.33800 881.22000
zoomBox 1394.36400 715.04300 1523.53500 838.74300
zoomBox 1445.95300 754.64300 1503.26800 809.53000
zoomBox 1460.48100 765.95200 1495.68100 799.66100
zoomBox 1439.64700 750.03300 1507.07700 814.60700
zoomBox 1368.99700 696.34800 1547.78900 867.56700
zoomBox 1185.62800 557.51000 1659.69000 1011.49200
zoomBox 709.52200 191.13600 1966.48700 1394.85900
zoomBox 231.55600 -178.30900 2278.31600 1781.75600
zoomBox 423.40300 376.84900 1526.68800 1433.40200
zoomBox 768.89100 695.76100 1184.99500 1094.24000
zoomBox 884.84200 802.76000 1069.47000 979.56800
zoomBox 942.44500 855.91600 1012.07800 922.60000
zoomBox 964.16900 875.96200 990.43300 901.11400
zoomBox 972.36200 883.52200 982.26900 893.00900
zoomBox 964.16600 875.95700 990.43600 901.11400
zoomBox 952.11500 864.83800 1002.44100 913.03200
setLayerPreference node_layer -isVisible 0
setLayerPreference TopVia1 -isVisible 1
setLayerPreference Metal5 -isVisible 1
zoomBox 648.87500 412.26300 1445.99900 1175.62300
zoomBox 872.01400 601.01800 1288.11800 999.49700
zoomBox 1007.57500 727.62600 1192.20300 904.43400
zoomBox 1065.26500 784.56100 1147.18600 863.01200
zoomBox 1072.16700 791.37200 1141.80000 858.05600
zoomBox 1047.59000 767.11800 1160.97800 875.70300
zoomBox 1023.12800 742.97600 1180.06600 893.26700
zoomBox 1007.57100 727.62400 1192.20500 904.43700
zoomBox 877.54700 599.30600 1293.66500 997.79800
zoomBox 836.30000 558.60000 1325.85100 1027.41500
zoomBox 584.50400 310.10700 1522.33300 1208.21200
zoomBox 253.51400 -16.54200 1780.61200 1445.87200
zoomBox -75.93900 -341.67500 2037.69300 1682.42900
zoomBox 199.43000 218.36400 1302.75900 1274.95900
zoomBox 343.17300 510.70700 919.11900 1062.25700
zoomBox 430.50000 688.31100 686.05000 933.03700
zoomBox 457.37500 742.97300 614.31600 893.26600
zoomBox 469.24400 767.11300 582.63500 875.70100
zoomBox 348.98100 529.41200 1452.26600 1585.96500
zoomBox 615.30800 853.79300 1191.23000 1405.32100
zoomBox 828.23600 1014.50300 1128.87200 1302.40500
zoomBox 863.11600 1040.82900 1118.65700 1285.54600
zoomBox 938.84200 1098.21300 1095.77600 1248.50000
zoomBox 996.44700 1141.86600 1078.36900 1220.31800
zoomBox 415.96100 267.07700 1519.24600 1323.63000
zoomBox 630.21600 347.18600 1427.34100 1110.54700
zoomBox 934.86400 433.60700 1350.97000 832.08800
setLayerPreference Metal5 -isVisible 0
setLayerPreference TopVia1 -isVisible 0
setLayerPreference Via3 -isVisible 1
setLayerPreference Metal4 -isVisible 1
setLayerPreference Via3 -isVisible 0
zoomBox 740.81800 363.78900 1418.37900 1012.65000
zoomBox 289.48800 188.67800 1587.48400 1431.69400
zoomBox 122.86200 119.07500 1649.91600 1581.44700
zoomBox -73.16900 37.18800 1723.36600 1757.62700
setLayerPreference Metal3 -isVisible 1
setLayerPreference Metal2 -isVisible 1
setLayerPreference Metal1 -isVisible 1
zoomBox 568.22100 182.73000 1671.51900 1239.29500
zoomBox 1023.71800 290.53400 1599.64800 842.06900
setLayerPreference node_layer -isVisible 1
setLayerPreference Metal1 -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference Cont -isVisible 1
setLayerPreference Metal1 -isVisible 1
zoomBox 759.86300 129.25400 1697.67000 1027.33800
zoomBox 343.69000 -134.56400 1870.75300 1327.81700
zoomBox 61.07000 -426.37900 2174.65300 1597.67800
zoomBox 197.16800 -59.13000 1724.23200 1403.25200
zoomBox 397.04700 472.78300 1074.61500 1121.65100
zoomBox 493.67100 671.40100 847.36700 1010.11500
zoomBox 575.92600 783.00400 732.86300 933.29400
zoomBox 587.76100 795.31600 721.15800 923.06300
zoomBox 597.82100 805.74500 711.20900 914.33000
zoomBox 606.40300 814.60900 702.78300 906.90700
zoomBox 613.69800 822.14400 695.62100 900.59700
zoomBox 637.03000 845.64400 673.38000 880.45400
zoomBox 639.83200 848.45600 670.72900 878.04400
zoomBox 647.41900 856.07000 663.54900 871.51700
zoomBox 652.02800 860.69600 659.18600 867.55100
zoomBox 647.41700 856.06900 663.54900 871.51800
zoomBox 637.02400 845.63900 673.38300 880.45800
zoomBox 633.72700 842.36600 676.50200 883.32900
zoomBox 625.28500 833.98400 684.49000 890.68100
zoomBox 597.42900 806.32700 710.84900 914.94300
zoomBox 544.06400 753.72700 761.34400 961.80400
zoomBox 441.83400 652.96300 858.07600 1051.57400
zoomBox 307.45200 520.98900 985.23300 1170.06100
setLayerPreference Metal2 -isVisible 1
zoomBox 488.23300 640.91200 842.04000 979.73300
zoomBox 596.97100 713.40500 753.95900 863.74300
zoomBox 638.29100 741.04200 720.24100 819.52100
zoomBox 663.39300 757.83300 699.75600 792.65600
setLayerPreference TopVia1 -isVisible 1
setLayerPreference TopVia1 -isVisible 0
win
fit
zoomBox -288.29300 117.46900 2354.05900 1174.02200
zoomBox -78.63000 156.43500 2167.36900 1054.50500
zoomBox 582.29600 279.27000 1578.85900 677.74900
zoomBox 728.58300 306.45800 1448.60000 594.35900
zoomBox 832.07600 326.68700 1352.28900 534.69600
zoomBox 906.85000 341.30200 1282.70500 491.58900
zoomBox 784.52100 317.39100 1396.54100 562.10900
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
zoomBox 568.68200 278.40700 1565.25600 676.89000
zoomBox 226.59800 212.25100 1849.35200 861.11400
zoomBox 355.77800 310.37500 1528.21800 779.17900
zoomBox 456.03200 320.18100 1452.60800 718.66500
zoomBox 541.24800 328.51600 1388.33900 667.22800
zoomBox 611.16600 338.58400 1331.19300 626.48900
zoomBox 541.24800 328.51600 1388.33900 667.22800
zoomBox 221.81500 285.56000 1601.16300 837.09700
zoomBox 408.07100 304.23100 1580.51900 773.03800
zoomBox 563.03500 320.36000 1559.61600 718.84600
win
zoomBox 434.97700 247.08600 1814.32800 798.62400
zoomBox 353.36300 201.18900 1976.12800 850.05700
zoomBox 425.05600 303.27700 1597.50500 772.08500
zoomBox 452.79600 343.40500 1449.37900 741.89200
zoomBox 533.73800 471.93600 975.92800 648.74700
zoomBox 544.00600 486.68100 919.86700 636.97000
fit
zoomBox -1610.79600 -92.00100 3451.11600 1932.02100
zoomBox -1242.01600 45.03800 3060.61000 1765.45700
zoomBox -435.63200 344.69100 2206.72000 1401.24400
zoomBox -243.12700 416.22600 2002.87400 1314.29700
zoomBox 59.58700 528.71500 1682.32500 1177.57200
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
saveDesign SAVED/06_route_opt.invs
checkFPlan -reportUtil > rpt/06_route_opt/check_util.rpt
checkPlace > rpt/06_route_opt/checkPlace.rpt
verify_drc -limit 0 > rpt/06_route_opt/verify_drc.rpt
setFillerMode -core {sg13g2_fill_1 sg13g2_fill_2 sg13g2_fill_4 sg13g2_fill_8} -corePrefix FILLER
addFiller -doDrc false
checkFiller
win
zoomBox 345.79600 655.51200 1342.36200 1053.99200
zoomBox 472.19800 711.51000 1192.22000 999.41300
zoomBox 655.27600 792.61800 974.75600 920.36300
zoomBox 711.62300 817.58100 907.82500 896.03300
fit
zoomBox -968.74500 192.43900 2688.48700 1654.79500
zoomBox -323.70000 478.20500 1922.29900 1376.27500
zoomBox 225.64300 722.89100 1222.20700 1121.37000
zoomBox 289.91200 751.51600 1136.99100 1090.22300
zoomBox 430.44200 814.10700 950.65500 1022.11600
zoomBox 463.99000 829.04900 906.17200 1005.85700
zoomBox 516.74500 852.54600 836.22200 980.29000
win
fit
zoomBox -1276.55500 18.29900 3026.07100 1738.71800
zoomBox -750.95900 191.74500 2357.68800 1434.74800
