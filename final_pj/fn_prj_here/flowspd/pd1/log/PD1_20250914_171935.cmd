#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Sep 14 17:19:52 2025                
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
win
setLayerPreference violation -isVisible 0
zoomBox 192.84000 131.82900 1671.53500 1594.18500
zoomBox 406.69900 293.54600 1475.05600 1350.09800
zoomBox 884.30100 654.70200 1036.26600 804.98800
zoomBox 914.86200 677.81200 1008.18800 770.10700
zoomBox 941.91900 698.27300 983.32900 739.22500
zoomBox 947.90800 702.80100 977.82700 732.38900
zoomBox 952.40300 706.01100 974.02000 727.38900
zoomBox 955.65100 708.33100 971.26900 723.77600
report_timing
report_net -longnet
report_net
report_net -net
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
report_route
report_timing -path_group reg2reg -max_paths 4
set_table_style -nosplit -no_frame_fix_width 
report_timing -path_group reg2reg -max_paths 4
report_timing -path_group reg2reg -max_paths 4
report_timing -path_group reg2reg -max_paths 1
report_timing -path_group reg2reg -max_paths 4 > rpt1
report_timing -path_group reg2reg -max_paths 4 > rpt1.rpt
