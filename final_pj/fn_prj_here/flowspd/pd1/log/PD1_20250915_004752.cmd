#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Sep 15 00:48:07 2025                
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
restoreDesign /ictc/student_data/vantruong/final_pj/fn_prj_here/flowspd/pd1/06complete.dat croc_chip
report_timing -path_group reg2reg -max_paths 3
set_table_style -nosplit -no_frame_fix_width 
report_timing -path_group reg2reg -max_paths 3 > timing1
verify_drc -limit 0
gpsPrivate::masterAndSlaveCPU
gpsPrivate::masterAndSlaveCPU
gpsPrivate::masterAndSlaveCPU
optDesign -postroute -drc
report_message -start_cmd
report_message -end_cmd
route_fix_signoff_drc
verify_drc -limit 0
route_fix_signoff_drc
verify_drc -limit 0
route_fix_signoff_drc
win
zoomBox 38.18300 203.12100 1777.82500 1923.54000
zoomBox 158.32400 453.97500 1637.02000 1916.33200
zoomBox 386.19400 745.60800 1454.55300 1802.16200
zoomBox 613.95700 1040.94100 1270.06400 1689.79800
zoomBox 722.59500 1158.96800 1196.63200 1627.76700
zoomBox 834.43400 1277.54400 1125.55300 1565.44600
zoomBox 861.13300 1305.85100 1108.58400 1550.56800
zoomBox 883.82700 1329.91200 1094.16100 1537.92200
zoomBox 919.51300 1367.74800 1071.48000 1518.03600
zoomBox 883.82400 1329.90900 1094.16100 1537.92200
zoomBox 766.06200 1205.05300 1169.00200 1603.54100
zoomBox 671.43800 1104.72800 1229.14000 1656.26800
selectObject Wire i_croc_soc/i_croc/i_core_wrap/i_ibex_cs_registers_i/_2075_(1033820,1421420,1034020,1430440)
fit
win
zoomBox 32.81200 209.22700 1511.50800 1671.58400
fit
