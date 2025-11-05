set STAGE 00_init_design
# limitations under the License.
setMultiCpuUsage -localCpu 4
setPreference ConstraintUserXGrid 0.1
setPreference ConstraintUserXOffset 0.1
setPreference ConstraintUserYGrid 0.1
setPreference ConstraintUserYOffset 0.1
setPreference SnapAllCorners 1

###############################
source /ictc/student_data/vantruong/final_pj/fn_prj_here/input_data/lef/all_lef_files.tcl
set init_verilog /ictc/student_data/vantruong/final_pj/fn_prj_here/input_data/netlist/croc_chip_yosys.v
set init_design_uniquify 1
set init_design_settop 1
set init_top_cell croc_chip
set init_lef_file $init_lef_files
set init_mmmc_file /ictc/student_data/vantruong/final_pj/fn_prj_here/input_data/croc_mmmc.view
set init_pwr_net {VDD}
set init_gnd_net {VSS}
init_design

# Change core area 
floorPlan -site CoreSite -d 1840.32 1840.02 168 168 168 168

puts "Done init design. Please check log file if any errors during init design"
#return
saveDesign SAVED/${STAGE}_init.invs

check_library  -all_lib_cell  -place > rpt/${STAGE}/check_library.rpt


deleteRow -all
initCoreRow
cutRow

##################
# Create track
##################
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}

####################
# Report utilization
####################
checkFPlan -reportUtil > rpt/${STAGE}/check_library.rpt

###################
# Place Hardmacro
###################
dbset [dbget top.insts.cell.baseClass  block -p2 ].pHaloTop 10
dbset [dbget top.insts.cell.baseClass  block -p2 ].pHaloBot 10
dbset [dbget top.insts.cell.baseClass  block -p2 ].pHaloLeft  10
dbset [dbget top.insts.cell.baseClass  block -p2 ].pHaloRight 10

placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {655.07 375.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {655.07 508.84}


