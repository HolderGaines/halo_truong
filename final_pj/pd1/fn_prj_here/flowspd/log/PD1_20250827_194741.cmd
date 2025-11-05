#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Aug 27 19:47:58 2025                
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
floorPlan -site CoreSite -d 1840.32 1840.02 40 40 40 40
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 415.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 550.84}
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
createRouteBlk -name sram_rblk -layer Metal5 -box {{610.07 405.06 1414.55 679.62}}
sroute -connect { blockPin corePin floatingStripe } -layerChangeRange { Metal1  TopMetal2 } -blockPinTarget { nearestRingStripe nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange {  Metal1 TopMetal2 } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1 TopMetal2 }
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal3 -stacked_via_bottom_layer Metal1 -stapling_nets_style side_to_side
addStripe -layer Metal3 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{219.84 219.9 1620.48 1620.12}}
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal4 -stacked_via_bottom_layer Metal3 -stapling_nets_style side_to_side
addStripe -layer Metal4 -direction horizontal -nets {VDD VSS} -width 1 -set_to_set_distance 30 -spacing 2 -start 15 -area {{219.84 219.9 1620.48 1620.12}}
setAddStripeMode -stacked_via_top_layer Metal5 -stacked_via_bottom_layer Metal4 -stapling_nets_style side_to_side
addStripe -layer Metal5 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{219.84 219.9 1620.48 1620.12}}
setAddStripeMode -stacked_via_top_layer TopMetal1 -stacked_via_bottom_layer Metal5 -stapling_nets_style side_to_side
addStripe -layer TopMetal1 -direction horizontal -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -start 0.5 -area {{219.84 219.9 1620.48 1620.12}}
setAddStripeMode -stacked_via_top_layer TopMetal2 -stacked_via_bottom_layer TopMetal1 -stapling_nets_style side_to_side
addStripe -layer TopMetal2 -direction vertical -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -area {{219.84 219.9 1620.48 1620.12}}
deleteRouteBlk -name sram_rblk
editPowerVia -nets VDD -add_vias true -top_layer TopMetal1 -area {610.07 405.06 1414.55 679.62} -uda -orthogonal_only
editPowerVia -nets VSS -add_vias true -top_layer TopMetal1 -area {610.07 405.06 1414.55 679.62} -uda -orthogonal_only
verifyPowerVia
verify_connectivity -net {VDD VSS}
saveDesign SAVED/00_init_design_PG.invs
addWellTap -cell sky130_fd_sc_hd__tapvpwrvgnd_1 -cellInterval 40 -inRowOffset 25 -prefix WELLTAP
saveDesign SAVED/00_init_design.invs
set_table_style -no_frame_fix_width
set_global timing_report_enable_auto_column_width true
set_global report_timing_format {hpin cell fanout load slew delay arrival pin_location}
timeDesign -prePlace -pathReports -slackReports -numPaths 1000 -prefix 00_init_design_prePlace -outDir ./rpt/00_init_design_prePlace
checkFPlan -reportUtil
win
zoomBox -17.32800 587.03700 792.06100 1387.48200
zoomBox -8.38500 667.08100 679.59600 1347.46000
zoomBox 11.17100 842.10800 433.67800 1259.94600
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
floorPlan -site CoreSite -d 1840.32 1840.02 120 120 120 120
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 415.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 550.84}
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
createRouteBlk -name sram_rblk -layer Metal5 -box {{610.07 405.06 1414.55 679.62}}
sroute -connect { blockPin corePin floatingStripe } -layerChangeRange { Metal1  TopMetal2 } -blockPinTarget { nearestRingStripe nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange {  Metal1 TopMetal2 } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1 TopMetal2 }
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal3 -stacked_via_bottom_layer Metal1 -stapling_nets_style side_to_side
addStripe -layer Metal3 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{300.0 300.12 1540.32 1539.9}}
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal4 -stacked_via_bottom_layer Metal3 -stapling_nets_style side_to_side
addStripe -layer Metal4 -direction horizontal -nets {VDD VSS} -width 1 -set_to_set_distance 30 -spacing 2 -start 15 -area {{300.0 300.12 1540.32 1539.9}}
setAddStripeMode -stacked_via_top_layer Metal5 -stacked_via_bottom_layer Metal4 -stapling_nets_style side_to_side
addStripe -layer Metal5 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{300.0 300.12 1540.32 1539.9}}
setAddStripeMode -stacked_via_top_layer TopMetal1 -stacked_via_bottom_layer Metal5 -stapling_nets_style side_to_side
addStripe -layer TopMetal1 -direction horizontal -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -start 0.5 -area {{300.0 300.12 1540.32 1539.9}}
setAddStripeMode -stacked_via_top_layer TopMetal2 -stacked_via_bottom_layer TopMetal1 -stapling_nets_style side_to_side
addStripe -layer TopMetal2 -direction vertical -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -area {{300.0 300.12 1540.32 1539.9}}
deleteRouteBlk -name sram_rblk
editPowerVia -nets VDD -add_vias true -top_layer TopMetal1 -area {610.07 405.06 1414.55 679.62} -uda -orthogonal_only
editPowerVia -nets VSS -add_vias true -top_layer TopMetal1 -area {610.07 405.06 1414.55 679.62} -uda -orthogonal_only
verifyPowerVia
verify_connectivity -net {VDD VSS}
saveDesign SAVED/00_init_design_PG.invs
addWellTap -cell sky130_fd_sc_hd__tapvpwrvgnd_1 -cellInterval 40 -inRowOffset 25 -prefix WELLTAP
saveDesign SAVED/00_init_design.invs
set_table_style -no_frame_fix_width
set_global timing_report_enable_auto_column_width true
set_global report_timing_format {hpin cell fanout load slew delay arrival pin_location}
timeDesign -prePlace -pathReports -slackReports -numPaths 1000 -prefix 00_init_design_prePlace -outDir ./rpt/00_init_design_prePlace
checkFPlan -reportUtil
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
floorPlan -site CoreSite -d 1840.32 1840.02 150 150 150 150
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 415.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 550.84}
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
createRouteBlk -name sram_rblk -layer Metal5 -box {{610.07 405.06 1414.55 679.62}}
sroute -connect { blockPin corePin floatingStripe } -layerChangeRange { Metal1  TopMetal2 } -blockPinTarget { nearestRingStripe nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange {  Metal1 TopMetal2 } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1 TopMetal2 }
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal3 -stacked_via_bottom_layer Metal1 -stapling_nets_style side_to_side
addStripe -layer Metal3 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{329.76 329.94 1510.56 1510.08}}
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal4 -stacked_via_bottom_layer Metal3 -stapling_nets_style side_to_side
addStripe -layer Metal4 -direction horizontal -nets {VDD VSS} -width 1 -set_to_set_distance 30 -spacing 2 -start 15 -area {{329.76 329.94 1510.56 1510.08}}
setAddStripeMode -stacked_via_top_layer Metal5 -stacked_via_bottom_layer Metal4 -stapling_nets_style side_to_side
addStripe -layer Metal5 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{329.76 329.94 1510.56 1510.08}}
setAddStripeMode -stacked_via_top_layer TopMetal1 -stacked_via_bottom_layer Metal5 -stapling_nets_style side_to_side
addStripe -layer TopMetal1 -direction horizontal -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -start 0.5 -area {{329.76 329.94 1510.56 1510.08}}
setAddStripeMode -stacked_via_top_layer TopMetal2 -stacked_via_bottom_layer TopMetal1 -stapling_nets_style side_to_side
addStripe -layer TopMetal2 -direction vertical -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -area {{329.76 329.94 1510.56 1510.08}}
deleteRouteBlk -name sram_rblk
editPowerVia -nets VDD -add_vias true -top_layer TopMetal1 -area {610.07 405.06 1414.55 679.62} -uda -orthogonal_only
editPowerVia -nets VSS -add_vias true -top_layer TopMetal1 -area {610.07 405.06 1414.55 679.62} -uda -orthogonal_only
verifyPowerVia
verify_connectivity -net {VDD VSS}
saveDesign SAVED/00_init_design_PG.invs
addWellTap -cell sky130_fd_sc_hd__tapvpwrvgnd_1 -cellInterval 40 -inRowOffset 25 -prefix WELLTAP
saveDesign SAVED/00_init_design.invs
set_table_style -no_frame_fix_width
set_global timing_report_enable_auto_column_width true
set_global report_timing_format {hpin cell fanout load slew delay arrival pin_location}
timeDesign -prePlace -pathReports -slackReports -numPaths 1000 -prefix 00_init_design_prePlace -outDir ./rpt/00_init_design_prePlace
checkFPlan -reportUtil
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
floorPlan -site CoreSite -d 1840.32 1840.02 145 145 145 145
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 415.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 550.84}
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
createRouteBlk -name sram_rblk -layer Metal5 -box {{610.07 405.06 1414.55 679.62}}
sroute -connect { blockPin corePin floatingStripe } -layerChangeRange { Metal1  TopMetal2 } -blockPinTarget { nearestRingStripe nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange {  Metal1 TopMetal2 } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1 TopMetal2 }
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal3 -stacked_via_bottom_layer Metal1 -stapling_nets_style side_to_side
addStripe -layer Metal3 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{324.96 324.9 1515.36 1515.12}}
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal4 -stacked_via_bottom_layer Metal3 -stapling_nets_style side_to_side
addStripe -layer Metal4 -direction horizontal -nets {VDD VSS} -width 1 -set_to_set_distance 30 -spacing 2 -start 15 -area {{324.96 324.9 1515.36 1515.12}}
setAddStripeMode -stacked_via_top_layer Metal5 -stacked_via_bottom_layer Metal4 -stapling_nets_style side_to_side
addStripe -layer Metal5 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{324.96 324.9 1515.36 1515.12}}
setAddStripeMode -stacked_via_top_layer TopMetal1 -stacked_via_bottom_layer Metal5 -stapling_nets_style side_to_side
addStripe -layer TopMetal1 -direction horizontal -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -start 0.5 -area {{324.96 324.9 1515.36 1515.12}}
setAddStripeMode -stacked_via_top_layer TopMetal2 -stacked_via_bottom_layer TopMetal1 -stapling_nets_style side_to_side
addStripe -layer TopMetal2 -direction vertical -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -area {{324.96 324.9 1515.36 1515.12}}
deleteRouteBlk -name sram_rblk
editPowerVia -nets VDD -add_vias true -top_layer TopMetal1 -area {610.07 405.06 1414.55 679.62} -uda -orthogonal_only
editPowerVia -nets VSS -add_vias true -top_layer TopMetal1 -area {610.07 405.06 1414.55 679.62} -uda -orthogonal_only
verifyPowerVia
verify_connectivity -net {VDD VSS}
saveDesign SAVED/00_init_design_PG.invs
addWellTap -cell sky130_fd_sc_hd__tapvpwrvgnd_1 -cellInterval 40 -inRowOffset 25 -prefix WELLTAP
saveDesign SAVED/00_init_design.invs
set_table_style -no_frame_fix_width
set_global timing_report_enable_auto_column_width true
set_global report_timing_format {hpin cell fanout load slew delay arrival pin_location}
timeDesign -prePlace -pathReports -slackReports -numPaths 1000 -prefix 00_init_design_prePlace -outDir ./rpt/00_init_design_prePlace
checkFPlan -reportUtil
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
floorPlan -site CoreSite -d 1840.32 1840.02 148 148 148 148
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 415.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 550.84}
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
createRouteBlk -name sram_rblk -layer Metal5 -box {{610.07 405.06 1414.55 679.62}}
sroute -connect { blockPin corePin floatingStripe } -layerChangeRange { Metal1  TopMetal2 } -blockPinTarget { nearestRingStripe nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange {  Metal1 TopMetal2 } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1 TopMetal2 }
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal3 -stacked_via_bottom_layer Metal1 -stapling_nets_style side_to_side
addStripe -layer Metal3 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{327.84 327.84 1512.48 1512.18}}
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal4 -stacked_via_bottom_layer Metal3 -stapling_nets_style side_to_side
addStripe -layer Metal4 -direction horizontal -nets {VDD VSS} -width 1 -set_to_set_distance 30 -spacing 2 -start 15 -area {{327.84 327.84 1512.48 1512.18}}
setAddStripeMode -stacked_via_top_layer Metal5 -stacked_via_bottom_layer Metal4 -stapling_nets_style side_to_side
addStripe -layer Metal5 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{327.84 327.84 1512.48 1512.18}}
setAddStripeMode -stacked_via_top_layer TopMetal1 -stacked_via_bottom_layer Metal5 -stapling_nets_style side_to_side
addStripe -layer TopMetal1 -direction horizontal -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -start 0.5 -area {{327.84 327.84 1512.48 1512.18}}
setAddStripeMode -stacked_via_top_layer TopMetal2 -stacked_via_bottom_layer TopMetal1 -stapling_nets_style side_to_side
addStripe -layer TopMetal2 -direction vertical -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -area {{327.84 327.84 1512.48 1512.18}}
deleteRouteBlk -name sram_rblk
editPowerVia -nets VDD -add_vias true -top_layer TopMetal1 -area {610.07 405.06 1414.55 679.62} -uda -orthogonal_only
editPowerVia -nets VSS -add_vias true -top_layer TopMetal1 -area {610.07 405.06 1414.55 679.62} -uda -orthogonal_only
verifyPowerVia
verify_connectivity -net {VDD VSS}
saveDesign SAVED/00_init_design_PG.invs
addWellTap -cell sky130_fd_sc_hd__tapvpwrvgnd_1 -cellInterval 40 -inRowOffset 25 -prefix WELLTAP
saveDesign SAVED/00_init_design.invs
set_table_style -no_frame_fix_width
set_global timing_report_enable_auto_column_width true
set_global report_timing_format {hpin cell fanout load slew delay arrival pin_location}
timeDesign -prePlace -pathReports -slackReports -numPaths 1000 -prefix 00_init_design_prePlace -outDir ./rpt/00_init_design_prePlace
checkFPlan -reportUtil
win
setLayerPreference violation -isVisible 0
setLayerPreference node_layer -isVisible 0
zoomBox 175.80300 47.20000 1536.55800 1392.91900
zoomBox 446.56200 179.67700 1282.23700 1006.11800
zoomBox 612.84300 261.03500 1126.05200 768.57300
zoomBox 715.58600 319.49000 1030.76200 631.18300
fit
zoomBox -654.94400 132.99000 2453.70400 1375.99300
zoomBox -68.92100 270.91500 1840.17900 1034.27500
zoomBox 374.96000 375.35700 1371.52400 773.83600
selectInst {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut}
gui_select -rect {854.59800 586.66000 898.46700 631.99200}
deselectAll
selectInst {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut}
zoomBox 283.73800 337.93900 1456.16600 806.73800
zoomBox -98.38300 181.82900 1810.72200 945.19100
zoomBox -720.60200 -69.87400 2388.05700 1173.13300
deselectAll
win
zoomBox -2926.07200 -495.69800 3029.14500 1885.51500
zoomBox -2337.54100 -263.69400 2724.39300 1760.33700
zoomBox -1837.29000 -66.49000 2465.35400 1653.93600
zoomBox -1042.76200 305.80800 2065.90100 1548.81700
zoomBox -732.46600 451.54800 1909.89800 1508.10600
zoomBox -1411.54000 165.74300 2245.71200 1628.10700
zoomBox -1843.38300 -13.71800 2459.26600 1706.71000
zoomBox -1044.47300 318.28500 2064.19100 1561.29400
zoomBox -1400.27000 297.35500 2256.98200 1759.71900
zoomBox -4374.14100 122.42000 3868.38900 3418.22300
zoomBox -5317.52800 66.92700 4379.56700 3944.34200
checkFPlan -reportUtil
win
fit
zoomBox -348.64900 181.37500 2293.70300 1237.92800
zoomBox 33.84700 264.22200 1942.94700 1027.58200
zoomBox 183.22700 296.57700 1805.96300 945.43300
selectInst {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut}
gui_select -rect {961.85500 597.78900 974.95100 687.08100}
deselectAll
selectInst {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut}
gui_select -rect {564.20700 712.08300 1458.31900 294.19600}
deselectAll
deselectAll
zoomBox -35.27600 273.04600 1873.82500 1036.40600
zoomBox -292.33800 245.36200 1953.66300 1143.43300
win
zoomBox -1309.09200 52.77900 2348.14700 1515.13800
zoomBox -2321.12300 -138.90900 2740.79900 1885.11700
zoomBox -2964.70400 -260.80900 2990.49800 2120.39800
setLayerPreference violation -isVisible 1
zoomBox -1266.94300 418.63200 2390.29600 1880.99100
zoomBox 222.26500 983.03500 2131.36800 1746.39600
zoomBox 966.75700 1284.98300 1963.32100 1683.46200
zoomBox 1351.54800 1435.79400 1871.76100 1643.80300
zoomBox 1409.88500 1459.09500 1852.06700 1635.90300
zoomBox 1532.72400 1507.60200 1763.54600 1599.89700
zoomBox 1449.86800 1481.55000 1892.05300 1658.35900
zoomBox 1360.90700 1451.87800 2080.93400 1739.78300
zoomBox 1273.28800 1422.67600 2269.86500 1821.16100
zoomBox 1343.28600 1451.28400 2063.31500 1739.19000
zoomBox 1392.20300 1471.16500 1912.42600 1679.17800
zoomBox 1409.03500 1478.03500 1851.22500 1654.84600
zoomBox 1458.14300 1496.35400 1654.34700 1574.80700
zoomBox 1478.76500 1500.31100 1565.82500 1535.12200
zoomBox 1486.17300 1501.89500 1549.07600 1527.04700
zoomBox 1489.17700 1502.53900 1542.64500 1523.91800
fit
zoomBox -846.10700 0.75100 2811.12500 1463.10700
zoomBox -77.85100 93.93600 2168.14900 992.00600
zoomBox 105.30600 120.87800 2014.40600 884.23800
zoomBox 393.32000 163.24400 1772.64500 714.77200
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
