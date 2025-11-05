#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Aug 25 23:34:37 2025                
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
floorPlan -site CoreSite -d 1840.32 1840.02 210 210 210 210
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
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
createRouteBlk -name sram_rblk -layer Metal5 -box {{-10 -10 794.48 128.78}}
sroute -connect { blockPin corePin floatingStripe } -layerChangeRange { Metal1  TopMetal2 } -blockPinTarget { nearestRingStripe nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange {  Metal1 TopMetal2 } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1 TopMetal2 }
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal3 -stacked_via_bottom_layer Metal1 -stapling_nets_style side_to_side
addStripe -layer Metal3 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal4 -stacked_via_bottom_layer Metal3 -stapling_nets_style side_to_side
addStripe -layer Metal4 -direction horizontal -nets {VDD VSS} -width 1 -set_to_set_distance 30 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer Metal5 -stacked_via_bottom_layer Metal4 -stapling_nets_style side_to_side
addStripe -layer Metal5 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer TopMetal1 -stacked_via_bottom_layer Metal5 -stapling_nets_style side_to_side
addStripe -layer TopMetal1 -direction horizontal -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer TopMetal2 -stacked_via_bottom_layer TopMetal1 -stapling_nets_style side_to_side
addStripe -layer TopMetal2 -direction vertical -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -area {{389.76 390.0 1450.56 1450.02}}
deleteRouteBlk -name sram_rblk
editPowerVia -nets VDD -add_vias true -top_layer TopMetal1 -area {-10 -10 794.48 128.78} -uda -orthogonal_only
editPowerVia -nets VSS -add_vias true -top_layer TopMetal1 -area {-10 -10 794.48 128.78} -uda -orthogonal_only
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
zoomBox -7.61200 68.56400 4359.11200 1814.61300
zoomBox 142.63400 321.05200 3297.59400 1582.57300
zoomBox 216.58900 413.06200 2898.30500 1485.35500
zoomBox 465.14200 699.42000 1655.03700 1175.20300
zoomBox 527.88600 760.95300 1387.58600 1104.70700
zoomBox 601.22200 797.88400 1222.35700 1046.24700
zoomBox 654.20700 824.56600 1102.97800 1004.00900
zoomBox 674.75100 834.39400 1056.20800 986.92100
zoomBox 747.30200 869.04200 891.17200 926.56900
zoomBox 753.90400 872.17700 876.19400 921.07500
zoomBox 739.49900 865.38800 908.75900 933.06700
zoomBox 681.66700 849.29600 1005.91800 978.94900
panPage 0 -1
panPage 0 -1
zoomBox 750.69800 779.49100 949.82900 859.11400
zoomBox 767.17700 781.39700 936.43900 849.07700
zoomBox 793.09200 784.39500 915.38400 833.29400
zoomBox 811.81500 786.56100 900.17200 821.89100
zoomBox 819.12600 787.40700 894.23100 817.43800
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
zoomBox 825.58900 706.69700 889.42900 732.22400
zoomBox 831.08200 707.01300 885.34700 728.71100
zoomBox 811.51900 705.88700 899.88100 741.21900
zoomBox 792.04600 704.76600 914.34800 753.66900
zoomBox 779.66300 704.05300 923.54800 761.58600
zoomBox 765.82100 698.83700 935.09800 766.52300
zoomBox 730.75900 685.52800 965.05500 779.21200
zoomBox 708.46300 677.06500 984.10500 787.28100
zoomBox 653.47000 670.38400 1034.98200 822.93300
zoomBox 577.35500 659.52600 1105.39900 870.66600
zoomBox 472.00400 644.49700 1202.86200 936.73300
fit
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
floorPlan -site CoreSite -d 1840.32 1840.02 210 210 210 210
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
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
createRouteBlk -name sram_rblk -layer Metal5 -box {{-10 -10 794.48 128.78}}
sroute -connect { blockPin corePin floatingStripe } -layerChangeRange { Metal1  TopMetal2 } -blockPinTarget { nearestRingStripe nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange {  Metal1 TopMetal2 } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1 TopMetal2 }
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal3 -stacked_via_bottom_layer Metal1 -stapling_nets_style side_to_side
addStripe -layer Metal3 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal4 -stacked_via_bottom_layer Metal3 -stapling_nets_style side_to_side
addStripe -layer Metal4 -direction horizontal -nets {VDD VSS} -width 1 -set_to_set_distance 30 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer Metal5 -stacked_via_bottom_layer Metal4 -stapling_nets_style side_to_side
addStripe -layer Metal5 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 2 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer TopMetal1 -stacked_via_bottom_layer Metal5 -stapling_nets_style side_to_side
addStripe -layer TopMetal1 -direction horizontal -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer TopMetal2 -stacked_via_bottom_layer TopMetal1 -stapling_nets_style side_to_side
addStripe -layer TopMetal2 -direction vertical -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -area {{389.76 390.0 1450.56 1450.02}}
deleteRouteBlk -name sram_rblk
editPowerVia -nets VDD -add_vias true -top_layer TopMetal1 -area {-10 -10 794.48 128.78} -uda -orthogonal_only
editPowerVia -nets VSS -add_vias true -top_layer TopMetal1 -area {-10 -10 794.48 128.78} -uda -orthogonal_only
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
zoomBox -314.87100 150.49200 2303.70000 1197.53600
zoomBox -105.65400 190.83700 2120.13100 1080.82400
zoomBox 622.60100 430.87600 1462.05500 766.53400
zoomBox 867.90900 511.73200 1240.38300 660.66700
zoomBox 959.99900 542.42900 1154.43300 620.17400
zoomBox 1006.90900 558.58700 1108.40900 599.17200
zoomBox 1014.59300 561.23400 1100.87000 595.73200
zoomBox 987.19000 552.60300 1127.67700 608.77700
zoomBox 1004.38000 567.76200 1105.88200 608.34800
zoomBox 1011.09300 573.47000 1097.37000 607.96800
zoomBox 1016.79900 578.32100 1090.13500 607.64500
zoomBox 1029.92000 587.99600 1074.95700 606.00400
zoomBox 1035.71500 592.26900 1068.25400 605.28000
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 -1
panPage 0 -1
zoomBox 1033.02200 594.23800 1071.30400 609.54500
setLayerPreference node_layer -isVisible 0
setLayerPreference allM4 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
zoomBox 1027.00000 592.82500 1072.03800 610.83400
zoomBox 1019.91400 591.16300 1072.90100 612.35000
zoomBox 977.19500 581.05200 1078.70500 621.64100
zoomBox 961.42300 577.31900 1080.84700 625.07100
setLayerPreference allM6 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
zoomBox 942.86800 572.92800 1083.36700 629.10700
zoomBox 829.59900 546.12100 1098.75300 653.74300
zoomBox 738.58400 524.58000 1111.11600 673.53800
zoomBox 327.37900 427.26200 1166.97200 762.97600
zoomBox 196.93400 396.39000 1184.69100 791.34800
zoomBox -598.96100 207.93000 1293.27400 964.54600
zoomBox -1237.75600 56.49600 1381.25500 1103.71600
zoomBox -660.81600 155.14100 1231.42100 911.75800
zoomBox -250.52500 216.39500 1116.61700 763.05100
zoomBox 161.68000 277.93400 1001.27700 613.65000
zoomBox 259.43600 292.07100 973.09500 577.43000
zoomBox 524.22600 330.36300 896.76300 479.32300
zoomBox 661.40200 350.09000 855.87100 427.84900
zoomBox 730.45800 361.84900 831.97300 402.44000
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
zoomBox 664.71300 346.02700 859.18400 423.78700
zoomBox 578.28900 325.22800 894.95500 451.84800
fit
zoomBox -1610.79600 -92.00100 3451.11600 1932.02100
zoomBox -1205.24900 142.52500 3097.37600 1862.94400
zoomBox -860.53500 341.87300 2796.69700 1804.22900
zoomBox 226.12200 970.28300 1848.85800 1619.13900
zoomBox 708.27700 1249.11200 1428.29600 1537.01400
zoomBox 764.93200 1281.44100 1376.94900 1526.15800
zoomBox 918.38900 1369.00900 1237.86900 1496.75400
zoomBox 1010.79700 1421.38500 1152.55300 1478.06700
fit
zoomBox -883.12300 334.24100 2774.10900 1796.59700
zoomBox -602.19000 503.28400 2506.45800 1746.28700
zoomBox 478.50100 1152.73200 1475.06400 1551.21100
zoomBox 619.71600 1237.34000 1339.73300 1525.24100
setLayerPreference allM4 -isVisible 0
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
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
zoomBox 674.94500 1268.87700 1286.96000 1513.59300
zoomBox 795.71100 1337.83600 1171.56600 1488.12300
zoomBox 887.58000 1390.29600 1083.78200 1468.74800
zoomBox 943.39300 1422.16700 1030.45000 1456.97700
setLayerPreference allM6 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
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
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
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
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
fit
zoomBox -629.97400 138.49400 2478.67400 1381.49700
zoomBox -37.04800 257.44300 1872.05200 1020.80300
zoomBox 493.57300 347.82700 1340.65200 686.53400
zoomBox 611.01800 367.83200 1223.03500 612.54900
zoomBox 757.17900 392.72900 1076.65900 520.47400
zoomBox 726.90100 391.69500 1102.76000 541.98300
zoomBox 600.06800 387.36200 1212.09300 632.08200
zoomBox 757.17800 392.77200 1076.66000 520.51800
zoomBox 805.70100 393.09700 1036.52800 485.39400
zoomBox 840.80500 393.33200 1007.57900 460.01700
zoomBox 866.37200 394.28300 986.86700 442.46300
zoomBox 884.84400 394.97000 971.90200 429.78000
panPage 0 -1
panPage 0 -1
setLayerPreference allM4 -isVisible 0
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
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM5 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
fit
zoomBox -1267.08400 150.88100 3035.54200 1871.30000
zoomBox -515.51500 681.97300 2126.83700 1738.52600
zoomBox -28.06600 935.85900 1594.66900 1584.71500
zoomBox 411.13200 1160.47100 1131.15000 1448.37300
zoomBox 463.98300 1187.65000 1076.00000 1432.36700
zoomBox 579.55000 1247.07900 955.40800 1397.36700
fit
zoomBox -570.39400 534.24700 2538.25400 1777.25000
zoomBox 68.54400 918.84200 1977.64300 1682.20100
zoomBox 554.60600 1211.41500 1551.16800 1609.89400
zoomBox 808.33200 1364.14000 1328.54500 1572.14900
zoomBox 962.47400 1456.07300 1193.29900 1548.36900
setLayerPreference allM5 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
fit
zoomBox -872.34400 289.11800 2784.88800 1751.47400
zoomBox -584.16700 444.07400 2524.48100 1687.07700
zoomBox 183.95100 891.95900 1806.68600 1540.81500
zoomBox 310.21000 974.46400 1689.53500 1525.99200
zoomBox 417.52800 1044.59400 1589.95600 1513.39300
zoomBox 585.33400 1154.87300 1432.41400 1493.58100
zoomBox 706.57300 1234.72200 1318.58900 1479.43900
zoomBox 754.12300 1266.17500 1274.33800 1474.18500
zoomBox 904.01800 1365.32800 1134.84400 1457.62500
zoomBox 970.52800 1409.32400 1072.94800 1450.27700
zoomBox 978.48600 1414.58800 1065.54300 1449.39800
setLayerPreference allM4 -isVisible 0
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
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM6 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
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
floorPlan -site CoreSite -d 1840.32 1840.02 210 210 210 210
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
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
createRouteBlk -name sram_rblk -layer Metal5 -box {{-10 -10 794.48 128.78}}
sroute -connect { blockPin corePin floatingStripe } -layerChangeRange { Metal1  TopMetal2 } -blockPinTarget { nearestRingStripe nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange {  Metal1 TopMetal2 } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1 TopMetal2 }
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal3 -stacked_via_bottom_layer Metal1 -stapling_nets_style side_to_side
addStripe -layer Metal3 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal4 -stacked_via_bottom_layer Metal3 -stapling_nets_style side_to_side
addStripe -layer Metal4 -direction horizontal -nets {VDD VSS} -width 1 -set_to_set_distance 30 -spacing 2 -start 2 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer Metal5 -stacked_via_bottom_layer Metal4 -stapling_nets_style side_to_side
addStripe -layer Metal5 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer TopMetal1 -stacked_via_bottom_layer Metal5 -stapling_nets_style side_to_side
addStripe -layer TopMetal1 -direction horizontal -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer TopMetal2 -stacked_via_bottom_layer TopMetal1 -stapling_nets_style side_to_side
addStripe -layer TopMetal2 -direction vertical -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -area {{389.76 390.0 1450.56 1450.02}}
deleteRouteBlk -name sram_rblk
editPowerVia -nets VDD -add_vias true -top_layer TopMetal1 -area {-10 -10 794.48 128.78} -uda -orthogonal_only
editPowerVia -nets VSS -add_vias true -top_layer TopMetal1 -area {-10 -10 794.48 128.78} -uda -orthogonal_only
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
zoomBox -635.70300 580.92500 2444.97000 1812.74200
zoomBox -413.29800 735.18400 2205.27400 1782.22900
zoomBox 257.86900 1200.08700 1419.74800 1664.66800
zoomBox 585.08900 1333.96700 1100.62300 1540.10500
zoomBox 624.91600 1342.70400 1063.12200 1517.92200
zoomBox 733.77500 1364.71800 962.52200 1456.18300
setLayerPreference allM4 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
zoomBox 752.90600 1374.33400 947.34200 1452.08000
zoomBox 768.99700 1382.76500 934.26800 1448.84900
zoomBox 782.51100 1390.47700 922.99100 1446.64800
zoomBox 803.73200 1402.68900 905.22900 1443.27300
zoomBox 812.02000 1407.45800 898.29300 1441.95500
zoomBox 803.73000 1402.68800 905.23000 1443.27300
zoomBox 793.97900 1397.07700 913.39100 1444.82400
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
floorPlan -site CoreSite -d 1840.32 1840.02 210 210 210 210
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
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
createRouteBlk -name sram_rblk -layer Metal5 -box {{-10 -10 794.48 128.78}}
sroute -connect { blockPin corePin floatingStripe } -layerChangeRange { Metal1  TopMetal2 } -blockPinTarget { nearestRingStripe nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange {  Metal1 TopMetal2 } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1 TopMetal2 }
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal3 -stacked_via_bottom_layer Metal1 -stapling_nets_style side_to_side
addStripe -layer Metal3 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal4 -stacked_via_bottom_layer Metal3 -stapling_nets_style side_to_side
addStripe -layer Metal4 -direction horizontal -nets {VDD VSS} -width 1 -set_to_set_distance 30 -spacing 2 -start 5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer Metal5 -stacked_via_bottom_layer Metal4 -stapling_nets_style side_to_side
addStripe -layer Metal5 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer TopMetal1 -stacked_via_bottom_layer Metal5 -stapling_nets_style side_to_side
addStripe -layer TopMetal1 -direction horizontal -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer TopMetal2 -stacked_via_bottom_layer TopMetal1 -stapling_nets_style side_to_side
addStripe -layer TopMetal2 -direction vertical -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -area {{389.76 390.0 1450.56 1450.02}}
deleteRouteBlk -name sram_rblk
editPowerVia -nets VDD -add_vias true -top_layer TopMetal1 -area {-10 -10 794.48 128.78} -uda -orthogonal_only
editPowerVia -nets VSS -add_vias true -top_layer TopMetal1 -area {-10 -10 794.48 128.78} -uda -orthogonal_only
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
zoomBox -70.08400 480.04400 2155.70000 1370.03100
zoomBox 267.51800 606.47500 1875.64800 1249.49100
zoomBox 681.66900 885.84100 1395.20600 1171.15100
zoomBox 731.37500 918.90000 1337.88200 1161.41400
zoomBox 840.06400 991.18700 1212.53700 1140.12200
zoomBox 906.91700 1032.94500 1135.66400 1124.41000
zoomBox 936.58100 1049.61700 1101.85400 1115.70200
zoomBox 958.01400 1061.66300 1077.42600 1109.41000
zoomBox 985.82000 1075.69100 1048.15400 1100.61500
zoomBox 1000.55300 1082.03000 1033.09300 1095.04100
zoomBox 1005.20300 1083.87800 1028.71400 1093.27900
zoomBox 1009.87500 1085.73600 1024.31400 1091.50900
zoomBox 1003.06600 1083.02900 1030.72600 1094.08900
zoomBox 1000.55100 1082.03000 1033.09300 1095.04200
zoomBox 985.20200 1075.93000 1047.54500 1100.85800
zoomBox 979.53600 1073.67800 1052.88000 1103.00500
zoomBox 932.17500 1054.85500 1097.47600 1120.95100
zoomBox 854.21600 1023.87100 1170.88200 1150.49100
zoomBox 649.73400 942.60200 1363.42100 1227.97200
zoomBox 188.88100 759.44200 1797.35800 1402.59700
zoomBox -849.76500 346.64700 2775.33900 1796.15700
zoomBox -2022.91200 -119.60400 3879.96800 2240.68200
fit
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
floorPlan -site CoreSite -d 1840.32 1840.02 210 210 210 210
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
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
createRouteBlk -name sram_rblk -layer Metal5 -box {{-10 -10 794.48 128.78}}
sroute -connect { blockPin corePin floatingStripe } -layerChangeRange { Metal1  TopMetal2 } -blockPinTarget { nearestRingStripe nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange {  Metal1 TopMetal2 } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1 TopMetal2 }
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal3 -stacked_via_bottom_layer Metal1 -stapling_nets_style side_to_side
addStripe -layer Metal3 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal4 -stacked_via_bottom_layer Metal3 -stapling_nets_style side_to_side
addStripe -layer Metal4 -direction horizontal -nets {VDD VSS} -width 1 -set_to_set_distance 30 -spacing 2 -start 10 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer Metal5 -stacked_via_bottom_layer Metal4 -stapling_nets_style side_to_side
addStripe -layer Metal5 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer TopMetal1 -stacked_via_bottom_layer Metal5 -stapling_nets_style side_to_side
addStripe -layer TopMetal1 -direction horizontal -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer TopMetal2 -stacked_via_bottom_layer TopMetal1 -stapling_nets_style side_to_side
addStripe -layer TopMetal2 -direction vertical -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -area {{389.76 390.0 1450.56 1450.02}}
deleteRouteBlk -name sram_rblk
editPowerVia -nets VDD -add_vias true -top_layer TopMetal1 -area {-10 -10 794.48 128.78} -uda -orthogonal_only
editPowerVia -nets VSS -add_vias true -top_layer TopMetal1 -area {-10 -10 794.48 128.78} -uda -orthogonal_only
verifyPowerVia
verify_connectivity -net {VDD VSS}
saveDesign SAVED/00_init_design_PG.invs
addWellTap -cell sky130_fd_sc_hd__tapvpwrvgnd_1 -cellInterval 40 -inRowOffset 25 -prefix WELLTAP
saveDesign SAVED/00_init_design.invs
set_table_style -no_frame_fix_width
set_global timing_report_enable_auto_column_width true
set_global report_timing_format {hpin cell fanout load slew delay arrival pin_location}
timeDesign -prePlace -pathReports -slackReports -numPaths 1000 -prefix 00_init_design_prePlace -outDir ./rpt/00_init_design_prePlace
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
floorPlan -site CoreSite -d 1840.32 1840.02 210 210 210 210
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
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
createRouteBlk -name sram_rblk -layer Metal5 -box {{-10 -10 794.48 128.78}}
sroute -connect { blockPin corePin floatingStripe } -layerChangeRange { Metal1  TopMetal2 } -blockPinTarget { nearestRingStripe nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange {  Metal1 TopMetal2 } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1 TopMetal2 }
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal3 -stacked_via_bottom_layer Metal1 -stapling_nets_style side_to_side
addStripe -layer Metal3 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal4 -stacked_via_bottom_layer Metal3 -stapling_nets_style side_to_side
addStripe -layer Metal4 -direction horizontal -nets {VDD VSS} -width 1 -set_to_set_distance 30 -spacing 2 -start 10 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer Metal5 -stacked_via_bottom_layer Metal4 -stapling_nets_style side_to_side
addStripe -layer Metal5 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer TopMetal1 -stacked_via_bottom_layer Metal5 -stapling_nets_style side_to_side
addStripe -layer TopMetal1 -direction horizontal -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer TopMetal2 -stacked_via_bottom_layer TopMetal1 -stapling_nets_style side_to_side
addStripe -layer TopMetal2 -direction vertical -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -area {{389.76 390.0 1450.56 1450.02}}
deleteRouteBlk -name sram_rblk
editPowerVia -nets VDD -add_vias true -top_layer TopMetal1 -area {-10 -10 794.48 128.78} -uda -orthogonal_only
editPowerVia -nets VSS -add_vias true -top_layer TopMetal1 -area {-10 -10 794.48 128.78} -uda -orthogonal_only
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
zoomBox -1305.54900 115.29600 2958.35300 1820.23100
zoomBox -1059.19400 290.79500 2565.12300 1739.99000
zoomBox -420.98100 709.43100 1804.80600 1599.41900
zoomBox -139.11700 894.31900 1469.01500 1537.33600
zoomBox 230.01300 1131.95400 1069.46900 1467.61300
zoomBox 356.99800 1210.05900 963.50500 1452.57300
zoomBox 406.39000 1240.56200 921.92200 1446.69900
zoomBox 514.39300 1307.26100 830.99500 1433.85500
zoomBox 539.86300 1323.07900 808.97500 1430.68400
zoomBox 579.91400 1347.95300 774.34800 1425.69800
zoomBox 628.73500 1376.97200 730.23300 1417.55600
zoomBox 636.74300 1381.59600 723.01700 1416.09300
zoomBox 654.25500 1391.70700 707.23900 1412.89300
zoomBox 649.33600 1388.86700 711.67100 1413.79200
zoomBox 636.74000 1381.59400 723.01900 1416.09300
zoomBox 579.83200 1348.73600 774.28900 1426.49000
zoomBox 486.16000 1294.64900 858.68400 1443.60400
panPage 0 1
panPage 0 1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 1
zoomBox 539.62900 370.78400 808.77800 478.40400
zoomBox 626.33600 394.39900 727.84800 434.98900
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
floorPlan -site CoreSite -d 1840.32 1840.02 210 210 210 210
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
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
createRouteBlk -name sram_rblk -layer Metal5 -box {{-10 -10 794.48 128.78}}
sroute -connect { blockPin corePin floatingStripe } -layerChangeRange { Metal1  TopMetal2 } -blockPinTarget { nearestRingStripe nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange {  Metal1 TopMetal2 } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1 TopMetal2 }
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal3 -stacked_via_bottom_layer Metal1 -stapling_nets_style side_to_side
addStripe -layer Metal3 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal4 -stacked_via_bottom_layer Metal3 -stapling_nets_style side_to_side
addStripe -layer Metal4 -direction horizontal -nets {VDD VSS} -width 1 -set_to_set_distance 30 -spacing 2 -start 15 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer Metal5 -stacked_via_bottom_layer Metal4 -stapling_nets_style side_to_side
addStripe -layer Metal5 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer TopMetal1 -stacked_via_bottom_layer Metal5 -stapling_nets_style side_to_side
addStripe -layer TopMetal1 -direction horizontal -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -start 0.5 -area {{389.76 390.0 1450.56 1450.02}}
setAddStripeMode -stacked_via_top_layer TopMetal2 -stacked_via_bottom_layer TopMetal1 -stapling_nets_style side_to_side
addStripe -layer TopMetal2 -direction vertical -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -area {{389.76 390.0 1450.56 1450.02}}
deleteRouteBlk -name sram_rblk
editPowerVia -nets VDD -add_vias true -top_layer TopMetal1 -area {-10 -10 794.48 128.78} -uda -orthogonal_only
editPowerVia -nets VSS -add_vias true -top_layer TopMetal1 -area {-10 -10 794.48 128.78} -uda -orthogonal_only
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
zoomBox -994.93400 326.29200 2629.38300 1775.48700
zoomBox -559.57900 633.25500 2058.99200 1680.29900
zoomBox -387.53700 756.88300 1838.24800 1646.87000
zoomBox 154.79600 1146.60000 1142.39100 1541.49300
zoomBox 321.71400 1266.54600 928.22200 1509.06000
zoomBox 364.43200 1292.44400 879.96400 1498.58100
zoomBox 457.83900 1349.07200 774.44200 1475.66700
zoomBox 501.66900 1369.05400 730.41600 1460.51900
zoomBox 561.11100 1381.96800 680.52100 1429.71400
zoomBox 549.65500 1379.47900 690.13700 1435.65100
zoomBox 501.66700 1369.05200 730.41900 1460.51900
zoomBox 387.78800 1344.30700 826.01100 1519.53200
zoomBox 89.09000 1281.01800 1076.74100 1675.93300
zoomBox -19.09100 1276.15900 1142.85100 1740.76500
zoomBox 353.75500 1292.86500 960.29800 1535.39300
zoomBox 580.23200 1303.01400 849.35900 1410.62500
zoomBox 665.89300 1307.24600 806.38000 1363.42000
zoomBox 690.69100 1309.04800 792.19300 1349.63400
zoomBox 700.37500 1309.75200 786.65200 1344.25000
zoomBox 651.97700 1305.23100 817.25600 1371.31800
zoomBox 588.35500 1299.28700 857.48600 1406.90000
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
zoomBox 524.95200 66.42700 897.45400 215.37300
zoomBox 199.68600 9.15400 1187.36800 404.08200
zoomBox 112.09000 -9.13200 1274.06900 455.48900
zoomBox -849.50800 -210.46300 2231.44300 1021.46500
zoomBox -2785.12700 -615.72500 4158.56000 2160.73100
zoomBox -2223.46900 -257.33300 3678.66600 2102.65500
zoomBox -995.33200 523.98900 2629.31800 1973.31700
zoomBox -451.45600 746.11500 2167.35500 1793.25500
zoomBox -58.50500 906.60100 1833.58700 1663.16000
zoomBox 507.54400 1122.82700 1347.07700 1458.51700
zoomBox 577.94600 1140.75000 1291.55000 1426.08700
zoomBox 688.65200 1168.93500 1204.23400 1375.09200
zoomBox -125.34900 982.09800 1766.76300 1738.66500
zoomBox 185.14200 1051.43800 1552.19300 1598.05800
zoomBox 386.37000 1107.38200 1374.06500 1502.31500
zoomBox 587.91400 1164.31600 1194.48500 1406.85500
zoomBox 635.04100 1178.26700 1150.62800 1384.42600
zoomBox 709.15000 1200.20600 1081.66200 1349.15600
setLayerPreference node_layer -isVisible 1
zoomBox 765.27200 1219.09000 1034.41300 1326.70700
zoomBox 805.10700 1232.29500 999.56300 1310.04900
zoomBox 833.88900 1241.83600 974.38400 1298.01300
zoomBox 862.80300 1251.42100 949.08700 1285.92200
zoomBox 869.81000 1253.99400 943.15200 1283.32000
zoomBox 875.76700 1256.18100 938.10700 1281.10800
zoomBox 854.55700 1248.39300 956.06900 1288.98300
zoomBox 833.44500 1240.64100 973.94700 1296.82100
zoomBox 820.02000 1235.71100 985.31600 1301.80500
zoomBox 738.06600 1205.61600 1054.72100 1332.23200
zoomBox 707.80800 1194.50500 1080.34500 1343.46500
zoomBox 672.21200 1181.43400 1110.49100 1356.68100
zoomBox 523.10100 1126.67800 1236.77000 1412.04100
zoomBox 454.90900 1101.63800 1294.52000 1437.35900
zoomBox 374.68400 1072.17900 1362.46100 1467.14500
zoomBox 571.78700 1165.01500 1087.41400 1371.19000
zoomBox 674.67600 1213.47600 943.83700 1321.10100
zoomBox 705.85700 1228.16300 900.32600 1305.92200
zoomBox 718.03400 1233.89900 883.33300 1299.99400
zoomBox 734.62500 1239.44700 875.12900 1295.62800
zoomBox 770.90000 1251.57900 857.18900 1286.08200
zoomBox 748.72400 1244.16200 868.15600 1291.91700
zoomBox 758.25300 1246.64600 859.77000 1287.23800
zoomBox 766.35300 1248.75800 852.64200 1283.26100
zoomBox 758.25300 1246.64600 859.77000 1287.23800
zoomBox 748.72400 1244.16200 868.15600 1291.91700
zoomBox 768.26700 1256.53600 841.61300 1285.86400
zoomBox 772.92300 1259.49000 835.26800 1284.41900
zoomBox 776.88100 1262.00100 829.87500 1283.19100
zoomBox 783.10400 1265.94900 821.39600 1281.26000
zoomBox 787.60100 1268.80200 815.26900 1279.86500
selectWire 798.5000 390.0000 799.5000 1450.0200 5 VSS
fit
zoomBox -481.78800 291.81100 2160.56400 1348.36400
zoomBox 3.63300 466.77700 1626.36800 1115.63300
zoomBox 128.28400 510.17300 1507.61000 1061.70100
zoomBox 400.84900 605.06300 1247.93000 943.77100
zoomBox 475.33400 632.84300 1195.35300 920.74500
zoomBox 592.46000 676.88700 1112.67600 884.89700
zoomBox 675.07000 708.66100 1050.92800 858.94900
zoomBox 707.33300 721.07000 1026.81300 848.81500
zoomBox 734.15800 731.54700 1005.71800 840.13100
zoomBox 756.96100 740.45200 987.78700 832.74900
zoomBox 776.06200 748.14900 972.26600 826.60200
zoomBox 805.82200 760.41300 947.57900 817.09500
zoomBox 817.44400 765.20200 937.93800 813.38200
zoomBox 828.68900 770.61200 931.10900 811.56500
zoomBox 846.37000 779.12000 920.37000 808.70900
zoomBox 859.14500 785.26600 912.61200 806.64500
zoomBox 867.19400 788.14000 905.82600 803.58700
zoomBox 870.31000 789.21100 903.14800 802.34100
fit
zoomBox -1204.69200 29.99700 3097.93400 1750.41600
zoomBox -104.70600 360.44600 2141.29300 1258.51600
zoomBox 562.63600 561.19900 1559.20000 959.67800
zoomBox 642.36700 585.21700 1489.44800 923.92500
zoomBox 858.33200 650.27300 1300.51600 827.08200
zoomBox 962.53700 686.55900 1193.36200 778.85500
zoomBox 994.11700 697.55600 1160.88900 764.24000
zoomBox 1033.41700 711.24000 1120.47600 746.05100
zoomBox 1053.93300 718.38300 1099.38000 736.55500
fit
zoomBox -1236.44600 38.35300 3066.18000 1758.77200
zoomBox -222.46700 391.43500 2023.53200 1289.50500
zoomBox 204.83000 540.22500 1584.15400 1091.75200
zoomBox 393.54200 605.93700 1390.10500 1004.41600
zoomBox 583.13400 671.95600 1195.15100 916.67300
zoomBox 727.36400 722.17900 1046.84200 849.92300
zoomBox 750.99000 730.40600 1022.54700 838.98900
zoomBox 788.14200 743.34300 984.34400 821.79500
fit
setLayerPreference violation -isVisible 0
zoomBox -561.24700 264.83100 2547.40100 1507.83400
zoomBox -100.49200 422.42400 2145.50700 1320.49400
zoomBox 79.20400 483.97000 1988.30400 1247.33000
zoomBox 361.77600 580.75200 1741.10200 1132.28000
zoomBox 420.21800 618.39700 1592.64500 1087.19600
zoomBox 578.51200 720.36400 1190.52900 965.08100
zoomBox 626.48400 751.26600 1068.66600 928.07400
zoomBox 672.57700 774.13200 992.05400 901.87600
zoomBox 705.87800 790.65200 936.70200 882.94800
zoomBox 748.18600 811.51100 868.68000 859.69100
zoomBox 766.64100 820.72000 840.64000 850.30900
zoomBox 771.04500 822.91900 833.94600 848.07000
zoomBox 783.42200 828.98400 816.26000 842.11400
deselectAll
fit
zoomBox -48.92700 507.12900 2197.07400 1405.20000
zoomBox 288.08400 626.93500 1910.82000 1275.79100
zoomBox 626.66600 747.30000 1623.23000 1145.77900
zoomBox 769.50400 798.22600 1489.52200 1086.12800
zoomBox 825.28600 818.11500 1437.30300 1062.83200
zoomBox 942.23900 859.87100 1318.09600 1010.15900
zoomBox 993.88900 878.31300 1265.44900 986.89700
zoomBox 1013.91200 885.45500 1244.73800 977.75200
zoomBox 1068.14500 904.80200 1188.64000 952.98200
zoomBox 1074.88100 907.97100 1177.30200 948.92400
zoomBox 1085.47400 912.95400 1159.47300 942.54300
zoomBox 1093.69800 916.43400 1147.16300 937.81200
zoomBox 1096.91100 917.79300 1142.35600 935.96400
zoomBox 1099.55600 918.94800 1138.18500 934.39400
zoomBox 1103.71700 920.76400 1131.62600 931.92400
zoomBox 1099.64000 918.92300 1138.27200 934.37000
zoomBox 1094.00000 916.37600 1147.47000 937.75600
zoomBox 1084.76300 913.06100 1158.77000 942.65300
zoomBox 1065.13800 910.87400 1167.57000 951.83200
zoomBox 1003.60900 904.98900 1199.83700 983.45100
zoomBox 981.55700 903.05700 1212.41300 995.36600
zoomBox 955.79100 900.84500 1227.38800 1009.44400
zoomBox 895.94000 894.95200 1271.85400 1045.26200
zoomBox 859.09600 891.20400 1301.34800 1068.04000
zoomBox 788.02300 883.60100 1400.13700 1128.35700
zoomBox 867.04300 899.02300 1242.96000 1049.33500
zoomBox 915.57100 908.81300 1146.43300 1001.12400
zoomBox 949.85700 915.54500 1091.63700 972.23600
zoomBox 965.02400 918.51700 1067.46200 959.47700
fit
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
setPlaceMode -place_opt_post_place_tcl data/scripts/common/place_opt_post_place.tcl
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
setPlaceMode -place_opt_post_place_tcl data/scripts/common/place_opt_post_place.tcl
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
setPlaceMode -place_opt_post_place_tcl data/scripts/common/place_opt_post_place.tcl
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
setPlaceMode -place_opt_post_place_tcl data/scripts/common/place_opt_post_place.tcl
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
setPlaceMode -place_opt_post_place_tcl /ictc/student_data/share/pd/data/scripts/common/place_opt_post_place.tcl
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
setPlaceMode -place_opt_post_place_tcl data/scripts/common/place_opt_post_place.tcl
zoomBox -974.92800 107.93100 2682.30400 1570.28700
zoomBox -336.09400 308.79600 1909.90300 1206.86500
zoomBox 148.42900 445.50400 1527.75300 997.03100
setLayerPreference node_layer -isVisible 0
zoomBox 544.46700 505.19800 1391.54600 843.90500
zoomBox 747.10900 538.05200 1267.32200 746.06100
zoomBox 795.48400 545.89500 1237.66600 722.70300
setOptMode -addInstancePrefix ictc_preCTS_
setOptMode -addInstancePrefix ictc_preCTS_
setOptMode -addInstancePrefix ictc_preCTS_
setOptMode -addInstancePrefix ictc_preCTS_
selectInst WELLTAP_3654
selectInst {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut}
deselectAll
selectInst i_croc_soc/i_croc/i_core_wrap/i_ibex.cs_registers_i/_3682_
