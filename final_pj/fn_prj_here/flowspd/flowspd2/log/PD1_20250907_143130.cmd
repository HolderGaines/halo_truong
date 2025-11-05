#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Sep  7 14:31:47 2025                
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
floorPlan -site CoreSite -d 1840.32 1840.02 168 168 168 168
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {650.07 375.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {650.07 510.84}
win
zoomBox 80.76300 14.24700 1631.29600 1547.64700
zoomBox 220.39700 93.91500 1538.35000 1397.30500
zoomBox 438.62000 144.49000 1248.00900 944.93500
zoomBox 490.71600 156.56300 1178.69700 836.94200
zoomBox 540.69900 174.04800 1125.48300 752.37000
zoomBox 676.59900 221.40600 981.86100 523.29500
zoomBox 700.37900 238.69300 959.85200 495.29900
zoomBox 737.77300 265.87700 925.24200 451.27500
zoomBox 772.50500 298.89400 887.63600 412.75300
zoomBox 780.74200 306.90800 878.60400 403.68900
zoomBox 793.94500 321.91100 864.65100 391.83600
zoomBox 807.35900 336.58200 850.78300 379.52600
zoomBox 810.56200 340.08500 847.47200 376.58700
zoomBox 815.61700 345.59300 842.28500 371.96600
fit
zoomBox 96.61400 39.78600 1575.30900 1502.14200
zoomBox 240.60200 135.34900 1308.96000 1191.90200
zoomBox 308.18600 177.55200 1216.29000 1075.62200
zoomBox 213.45000 138.59500 1281.80800 1195.14800
zoomBox 333.86200 168.40300 1241.96600 1066.47300
zoomBox 523.20900 215.27600 1179.31400 864.13100
zoomBox 657.33000 250.14700 1131.36600 718.94500
zoomBox 791.66400 285.18100 1082.78200 573.08200
zoomBox 823.51000 293.54400 1070.96000 538.26000
zoomBox 893.14500 311.83100 1045.11100 462.11800
uiSetTool ruler
zoomBox 914.34600 329.38100 1024.14300 437.96500
zoomBox 935.64700 347.01500 1003.07600 413.69900
zoomBox 940.73200 351.22400 998.04700 407.90600
zoomBox 945.05400 354.80200 993.77200 402.98200
zoomBox 926.39100 351.92600 1005.72300 430.38100
zoomBox 908.04100 349.01100 1017.84400 457.60100
zoomBox 757.11900 337.87100 1378.30200 586.25300
zoomBox 709.42600 335.70000 1440.23000 627.91400
zoomBox 509.64400 326.60300 1699.64100 802.42700
zoomBox 418.28000 321.51900 1818.27600 881.31200
zoomBox 310.61100 315.53700 1957.66500 974.11700
zoomBox 236.82700 241.11400 2174.53800 1015.91400
zoomBox 559.94000 247.14900 1749.93700 722.97300
zoomBox 637.07600 248.59000 1648.57300 653.04000
zoomBox 933.78400 257.91500 1258.05100 387.57400
zoomBox 954.16100 261.59100 1229.78800 371.80100
zoomBox 998.71700 269.62800 1167.98700 337.31100
zoomBox 987.82500 262.90000 1186.96600 342.52700
zoomBox 942.19800 234.71500 1266.46700 364.37500
zoomBox 867.90400 188.82200 1395.92200 399.95200
zoomBox 794.39900 137.48900 1525.22200 429.71100
zoomBox 933.82100 244.62000 1315.31600 397.16200
zoomBox 956.66000 262.16900 1280.93100 391.83000
zoomBox 992.57400 289.63400 1226.86100 383.31400
zoomBox 1014.89700 314.86600 1184.17100 382.55100
zoomBox 1023.61400 324.72100 1167.49800 382.25300
zoomBox 1031.64200 330.45200 1153.94400 379.35500
zoomBox 1019.21100 327.03200 1163.09600 384.56500
zoomBox 1004.62400 322.98900 1173.90100 390.67500
zoomBox 987.70400 318.10100 1186.85400 397.73200
zoomBox 884.41200 288.26500 1265.92700 440.81500
zoomBox 686.54200 231.10700 1417.40600 523.34500
zoomBox 307.48100 121.61100 1707.59200 681.45000
zoomBox -402.32200 -96.61300 2279.85300 975.86300
zoomBox 367.77000 123.47700 2014.96200 782.11200
zoomBox 936.76000 302.94600 1796.60800 646.75900
zoomBox 1024.85800 340.60800 1755.72900 632.84900
zoomBox 1099.82200 372.62000 1721.06200 621.02500
zoomBox 1258.11000 435.23100 1639.63200 587.78400
zoomBox 1115.69100 381.87600 1846.56900 674.12000
zoomBox 1007.67500 337.18300 2019.27200 741.67300
zoomBox 858.58900 275.32400 2258.72300 835.17200
zoomBox 190.36400 13.33800 3345.91600 1275.09600
zoomBox -819.04100 -338.06300 5226.01200 2079.07100
zoomBox -406.29900 -113.87000 3306.12000 1370.55300
zoomBox -273.11100 -59.53200 2882.44700 1202.22800
zoomBox 19.56300 59.28400 1957.47100 834.16300
zoomBox 268.42900 183.61000 1458.54800 659.48300
zoomBox 526.17900 265.82000 1257.06500 558.06700
zoomBox 705.36900 288.22300 1154.22600 467.70000
zoomBox 746.22000 294.59500 1127.75000 447.15100
zoomBox 855.40500 313.18600 1054.56900 392.82200
zoomBox 871.79900 321.99700 1041.08900 389.68800
zoomBox 907.64700 341.26200 1011.61500 382.83400
zoomBox 843.10600 335.90500 1042.27700 415.54400
zoomBox 673.82300 321.98000 1122.70500 501.46700
zoomBox 395.17500 299.06000 1255.09300 642.90100
zoomBox 171.27200 280.64300 1361.47100 756.54800
zoomBox -335.70200 240.04100 1602.33900 1014.97300
zoomBox -567.30300 221.72300 1712.74500 1133.40800
freeDesign
win
fit
zoomBox -974.00600 68.16600 2181.77000 1330.01300
zoomBox -1538.69500 -144.37000 2829.16100 1602.13100
zoomBox -2320.27300 -438.53900 3725.20500 1978.76500
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
floorPlan -site CoreSite -d 1840.32 1840.02 168 168 168 168
saveDesign SAVED/00_init_design_init.invs
check_library -all_lib_cell -place > rpt/00_init_design/check_library.rpt
deleteRow -all
initCoreRow
cutRow
add_tracks -offset {Metal1 vert 0 Metal2 horiz 0 Metal3 vert 0 Metal4 horiz 0 Metal5 vert 0 TopMetal1 horiz 0 TopMetal2 vert 0}
checkFPlan -reportUtil > rpt/00_init_design/check_library.rpt
placeInstance {i_croc_soc/i_croc/gen_sram_bank[1].i_sram/gen_512x32xBx1.i_cut} -fixed {655.07 375.06}
placeInstance {i_croc_soc/i_croc/gen_sram_bank[0].i_sram/gen_512x32xBx1.i_cut} -fixed {655.07 508.84}
win
zoomBox -711.01300 31.88600 2746.34500 1414.32200
zoomBox -394.82900 78.30500 2543.92700 1253.37600
zoomBox 40.74300 138.13600 2163.99700 987.12600
zoomBox 210.85300 161.50200 2015.61900 883.14400
zoomBox 423.23300 198.24500 1727.17900 719.63200
zoomBox 634.85100 234.48100 1435.63700 554.67800
zoomBox 677.15200 248.84600 1357.82000 521.01300
zoomBox 771.23800 284.42700 1189.25400 451.57200
zoomBox 804.63600 296.43400 1159.95000 438.50700
zoomBox 669.01100 257.44800 1247.58200 488.79200
zoomBox 606.98500 239.62000 1287.65800 511.78900
zoomBox 226.52000 132.98300 1530.47800 654.37500
zoomBox -81.35000 47.36800 1723.43800 769.01800
zoomBox -278.10000 -7.07700 1845.18000 841.92300
zoomBox 5.10800 69.33300 1809.89600 790.98300
zoomBox 599.33800 238.45500 1707.70700 681.64000
zoomBox 741.19800 278.83000 1683.31100 655.53700
zoomBox 1124.12100 387.19800 1615.91200 583.84200
zoomBox 1237.66400 419.13800 1592.98300 561.21300
zoomBox 1281.96800 431.57300 1583.98900 552.33700
zoomBox 1375.42300 451.32300 1560.90400 525.48800
zoomBox 1349.79900 447.24000 1568.01200 534.49300
zoomBox 1135.62600 413.11500 1627.42800 609.76400
zoomBox 783.08600 357.13800 1725.22700 733.85600
zoomBox 97.60500 252.06800 1902.45200 973.74200
