set STAGE 00_init_design
# limitations under the License.
setMultiCpuUsage -localCpu 2
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
checkFPlan -reportUtil

