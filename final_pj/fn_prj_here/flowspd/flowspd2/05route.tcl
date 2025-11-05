set STAGE 05_route
# limitations under the License.

source /ictc/student_data/vantruong/final_pj/fn_prj_here/data/scripts/common/common_settings.tcl ;
source /ictc/student_data/vantruong/final_pj/fn_prj_here/data/scripts/common/user_settings.tcl ;
source /ictc/student_data/vantruong/final_pj/fn_prj_here/data/scripts/common/config.tcl
###############################

#############
exec mkdir -p ./rpt/${STAGE}
###############################

###############
# Routing
##############
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

saveDesign SAVED/${STAGE}.invs

timeDesign -postRoute       -pathReports -slackReports -numPaths 1000 -prefix croc_postRoute -outDir ./rpt/${STAGE}/${STAGE}_setup
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 1000 -prefix  croc_postRoute -outDir ./rpt/${STAGE}/${STAGE}_hold
# run checkers
checkPlace > rpt/${STAGE}/checkPlace.rpt
~                                            
