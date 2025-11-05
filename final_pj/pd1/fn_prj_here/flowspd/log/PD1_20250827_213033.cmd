#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Aug 27 21:30:49 2025                
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
floorPlan -site CoreSite -d 1840.32 1840.02 180 180 180 180
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
update_names -restricted . -replace_str _
update_names -restricted {[} -replace_str _
update_names -restricted \] -replace_str _
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 415.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 550.84}
win
fit
zoomBox 72.67000 31.81500 1812.31200 1752.23400
zoomBox 626.94500 422.12300 1398.83400 1185.48300
zoomBox 797.53800 542.25100 1271.57500 1011.05000
zoomBox 838.26300 570.92800 1241.19500 969.40800
zoomBox 927.31400 633.63600 1174.76500 878.35300
zoomBox 902.30300 616.02400 1193.42200 903.92600
zoomBox 797.53600 542.24900 1271.57500 1011.05000
zoomBox 749.62400 508.51000 1307.31700 1060.04100
zoomBox 349.15700 226.50900 1606.05700 1469.52100
zoomBox 222.11900 137.05100 1700.82500 1599.41800
freeDesign
setPreference ConstraintUserXGrid 0.1
setPreference ConstraintUserXOffset 0.1
setPreference ConstraintUserYGrid 0.1
setPreference ConstraintUserYOffset 0.1
setPreference SnapAllCorners 1
set init_verilog /ictc/student_data/share/pd/data/user_setting/croc_chip_yosys.v
set init_design_uniquify 1
set init_design_settop 1
set init_top_cell croc_chip
set init_lef_file { /ictc/student_data/share/pd/data/user_setting/sg13g2_tech.lef  /ictc/student_data/share/pd/data/user_setting/sg13g2_stdcell_weltap.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_2048x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_4096x8_c3_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_4096x16_c3_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_64x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_1024x16_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_256x48_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_1024x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_1024x8_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_256x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/RM_IHPSG13_1P_512x64_c2_bm_bist.lef  /ictc/student_data/share/pd/data/user_setting/sg13g2_io_notracks.lef  /ictc/student_data/share/pd/data/user_setting/sg13g2_io.lef  /ictc/student_data/share/pd/data/user_setting/bondpad_70x70.lef  }
set init_mmmc_file /ictc/student_data/share/pd/data/user_setting/backup/croc_mmmc.view
set init_pwr_net VDD
set init_gnd_net VSS
init_design
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 202.06}
win
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 335.84}
win
fit
fit
fit
gui_select -rect {476.57300 554.93000 1506.28900 124.97800}
gui_select -rect {1285.89400 240.59600 1119.69400 475.44300}
deselectAll
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
floorPlan -site CoreSite -d 1840.32 1840.02 180 180 180 180
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
update_names -restricted . -replace_str _
update_names -restricted {[} -replace_str _
update_names -restricted \] -replace_str _
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 415.06}
win
zoomBox 26.20700 -16.11100 1693.80600 1633.06100
zoomBox 297.58500 141.50100 1321.69900 1154.29900
zoomBox 10.80100 -9.00100 1678.40100 1640.17200
zoomBox -120.35200 -77.83000 1841.53000 1862.37400
zoomBox -274.65100 -158.80500 2033.44600 2123.78800
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
update_names -restricted . -replace_str _
update_names -restricted {[} -replace_str _
update_names -restricted \] -replace_str _
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 415.06}
win
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 202.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 202.06}
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
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
update_names -restricted . -replace_str _
update_names -restricted {[} -replace_str _
update_names -restricted \] -replace_str _
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 415.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 550.84}
set init_mmmc_file /ictc/student_data/share/pd/data/user_setting/backup/croc_mmmc.view
set init_mmmc_file /ictc/student_data/share/pd/data/user_setting/backup/croc_mmmc.view
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 550.84}
set init_verilog /ictc/student_data/share/pd/data/user_setting/croc_chip_yosys.v
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
set init_verilog /ictc/student_data/vantruong/final_pj/fn_prj_here/input_data/netlist/croc_chip_yosys.v
set init_pwr_net VDD
set init_gnd_net VSS
init_design
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 202.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 335.84}
win
selectInst {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut}
deselectAll
selectInst {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut}
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
set init_mmmc_file /ictc/student_data/share/pd/data/user_setting/backup/croc_mmmc.view
set init_pwr_net VDD
set init_gnd_net VSS
init_design
update_names -restricted . -replace_str _
update_names -restricted {[} -replace_str _
update_names -restricted \] -replace_str _
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 415.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {620.07 550.84}
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
win
zoomBox 364.23700 169.70600 1609.81600 1401.52200
checkFPlan -reportUtil
freeDesign
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
floorPlan -site CoreSite -d 1840.32 1840.02 170 170 170 170
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
addStripe -layer Metal3 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{349.92 350.1 1490.4 1489.92}}
setAddStripeMode -reset
setAddStripeMode -stacked_via_top_layer Metal4 -stacked_via_bottom_layer Metal3 -stapling_nets_style side_to_side
addStripe -layer Metal4 -direction horizontal -nets {VDD VSS} -width 1 -set_to_set_distance 30 -spacing 2 -start 15 -area {{349.92 350.1 1490.4 1489.92}}
setAddStripeMode -stacked_via_top_layer Metal5 -stacked_via_bottom_layer Metal4 -stapling_nets_style side_to_side
addStripe -layer Metal5 -direction vertical -nets {VDD VSS} -width 1 -set_to_set_distance 15 -spacing 2 -start 0.5 -area {{349.92 350.1 1490.4 1489.92}}
setAddStripeMode -stacked_via_top_layer TopMetal1 -stacked_via_bottom_layer Metal5 -stapling_nets_style side_to_side
addStripe -layer TopMetal1 -direction horizontal -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -start 0.5 -area {{349.92 350.1 1490.4 1489.92}}
setAddStripeMode -stacked_via_top_layer TopMetal2 -stacked_via_bottom_layer TopMetal1 -stapling_nets_style side_to_side
addStripe -layer TopMetal2 -direction vertical -nets {VDD VSS} -width 4 -set_to_set_distance 30 -spacing 4 -area {{349.92 350.1 1490.4 1489.92}}
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
checkFPlan -reportUtil
win
win
setLayerPreference node_layer -isVisible 0
zoomBox 364.23700 284.69200 1609.81600 1516.50800
zoomBox -107.07700 -81.40500 1921.14200 1924.40300
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
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
