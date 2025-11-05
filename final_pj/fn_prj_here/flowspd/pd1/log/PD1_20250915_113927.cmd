#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Sep 15 11:39:44 2025                
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
restoreDesign /ictc/student_data/vantruong/final_pj/fn_prj_here/flowspd/pd1/02timingclean.dat croc_chip
timeDesign -preCTS -SlackReports
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
set_ccopt_property -integration native
set_ccopt_property -buffer_cells {sg13g2_buf_16 sg13g2_buf_8 sg13g2_buf_4 sg13g2_buf_2}
add_ndr -name ndr_1w2s -spacing_multiplier {Metal2:Metal5 2} -width_multiplier {Metal2:Metal5 2}
modify_ndr -name ndr_1w2s -generate_via
add_ndr -name ndr_3w3s -spacing_multiplier {Metal2:Metal5 3} -width_multiplier {Metal2:Metal5 3}
modify_ndr -name ndr_3w3s -generate_via
add_ndr -name ndr_2w2s -spacing_multiplier {Metal2:Metal5 2} -width_multiplier {Metal2:Metal5 2}
modify_ndr -name ndr_2w2s -generate_via
create_route_type -name clk_trunk -top_preferred_layer Metal5 -bottom_preferred_layer Metal3 -non_default_rule ndr_3w3s
create_route_type -name clk_leaf -top_preferred_layer Metal4 -bottom_preferred_layer Metal1 -non_default_rule ndr_2w2s
set_ccopt_property -route_type clk_trunk -net_type trunk
set_ccopt_property -route_type clk_leaf -net_type leaf
set_ccopt_property -max_fanout 32
set_ccopt_property -target_max_trans 1.6
set_ccopt_property -target_skew 0.2
set_table_style -no_frame_fix_width
set_global timing_report_enable_auto_column_width true
set_global report_timing_format {hpin cell fanout load slew delay arrival pin_location}
set_dont_use sg13g2_buf_16 false
set_dont_use sg13g2_inv_16 false
set_dont_use $dont_use_cells
set_dont_use sg13g2_buf_16 false
set_dont_use sg13g2_inv_16 false
create_ccopt_clock_tree_spec -file ccopt_native.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property sink_type -pin i_croc_soc/i_croc/i_dmi_jtag/i_dmi_jtag_tap_i_dft_tck_mux/i_mux/A1 ignore
set_ccopt_property sink_type_reasons -pin i_croc_soc/i_croc/i_dmi_jtag/i_dmi_jtag_tap_i_dft_tck_mux/i_mux/A1 set_case_analysis
set_ccopt_property sink_type -pin pad_ref_clk_i/pad ignore
set_ccopt_property sink_type_reasons -pin pad_ref_clk_i/pad no_sdc_clock
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_cs_registers_i/debug_ebreakm_o_reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_0__reg/CLK 0.216
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_12__reg/CLK 0.206
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_13__reg/CLK 0.234
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_14__reg/CLK 0.205
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_15__reg/CLK 0.279
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_16__reg/CLK 0.267
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_17__reg/CLK 0.246
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_18__reg/CLK 0.104
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_19__reg/CLK 0.198
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_1__reg/CLK 0.235
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_20__reg/CLK 0.293
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_21__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_22__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_23__reg/CLK 0.201
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_24__reg/CLK 0.289
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_25__reg/CLK 0.190
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_26__reg/CLK 0.217
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_27__reg/CLK 0.281
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_28__reg/CLK 0.275
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_29__reg/CLK 0.276
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_2__reg/CLK 0.199
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_30__reg/CLK 0.256
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_31__reg/CLK 0.204
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_3__reg/CLK 0.187
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_4__reg/CLK 0.230
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_5__reg/CLK 0.193
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_i_6__reg/CLK 0.213
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_controller_i_instr_valid_i_reg/CLK 0.281
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_id_stage_i_id_fsm_q_reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_load_store_unit_i_ls_fsm_cs_0__reg/CLK 0.287
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_load_store_unit_i_ls_fsm_cs_1__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_core_wrap/i_ibex_load_store_unit_i_ls_fsm_cs_2__reg/CLK 0.287
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_dmi_jtag/i_dmi_cdc_i_cdc_req/i_dst/async_ack_o_reg/CLK 0.313
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_dmi_jtag/td_o_reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_106__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_113__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_120__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_127__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_134__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_141__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_148__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_155__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_15__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_162__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_169__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_176__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_183__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_190__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_197__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_1__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_204__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_211__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_218__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_22__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_29__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_36__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_43__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_50__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_57__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_64__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_71__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_78__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_85__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_8__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_92__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg2hw_99__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_timer/counter_lo_i_target_reached_o_reg/CLK 0.034
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_timer/s_cfg_hi_reg_2__reg/CLK 0.352
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_timer/s_cfg_lo_reg_2__reg/CLK 0.368
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_timer/s_cfg_lo_reg_31__reg/CLK 0.300
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_uart/i_apb_uart_UART_IIC_IIR_0__reg/CLK 0.300
set_ccopt_property cts_is_sdc_clock_root -pin clk_i true
set_ccopt_property cts_is_sdc_clock_root -pin jtag_tck_i true
set_ccopt_property cts_is_sdc_clock_root -pin ref_clk_i true
create_ccopt_clock_tree -name clk_sys -source clk_i -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner delay_wc -early -clock_tree clk_sys 0.200
set_ccopt_property target_max_trans_sdc -delay_corner delay_wc -late -clock_tree clk_sys 0.200
set_ccopt_property source_driver -clock_tree clk_sys {sg13g2_IOPadOut16mA/c2p sg13g2_IOPadOut16mA/pad}
set_ccopt_property clock_period -pin clk_i 10
create_ccopt_clock_tree -name clk_rtc -source ref_clk_i -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner delay_wc -early -clock_tree clk_rtc 0.200
set_ccopt_property target_max_trans_sdc -delay_corner delay_wc -late -clock_tree clk_rtc 0.200
set_ccopt_property source_driver -clock_tree clk_rtc {sg13g2_IOPadOut16mA/c2p sg13g2_IOPadOut16mA/pad}
set_ccopt_property clock_period -pin ref_clk_i 50
create_ccopt_clock_tree -name clk_jtg -source jtag_tck_i -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner delay_wc -early -clock_tree clk_jtg 0.200
set_ccopt_property target_max_trans_sdc -delay_corner delay_wc -late -clock_tree clk_jtg 0.200
set_ccopt_property source_driver -clock_tree clk_jtg {sg13g2_IOPadOut16mA/c2p sg13g2_IOPadOut16mA/pad}
set_ccopt_property clock_period -pin jtag_tck_i 20
create_ccopt_skew_group -name clk_jtg/func_mode_ideal_wc -sources jtag_tck_i -auto_sinks
set_ccopt_property include_source_latency -skew_group clk_jtg/func_mode_ideal_wc true
set_ccopt_property extracted_from_clock_name -skew_group clk_jtg/func_mode_ideal_wc clk_jtg
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk_jtg/func_mode_ideal_wc func_mode_ideal_wc
set_ccopt_property extracted_from_delay_corners -skew_group clk_jtg/func_mode_ideal_wc delay_wc
create_ccopt_skew_group -name clk_rtc/func_mode_ideal_wc -sources ref_clk_i -auto_sinks
set_ccopt_property include_source_latency -skew_group clk_rtc/func_mode_ideal_wc true
set_ccopt_property extracted_from_clock_name -skew_group clk_rtc/func_mode_ideal_wc clk_rtc
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk_rtc/func_mode_ideal_wc func_mode_ideal_wc
set_ccopt_property extracted_from_delay_corners -skew_group clk_rtc/func_mode_ideal_wc delay_wc
create_ccopt_skew_group -name clk_sys/func_mode_ideal_wc -sources clk_i -auto_sinks
set_ccopt_property include_source_latency -skew_group clk_sys/func_mode_ideal_wc true
set_ccopt_property extracted_from_clock_name -skew_group clk_sys/func_mode_ideal_wc clk_sys
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk_sys/func_mode_ideal_wc func_mode_ideal_wc
set_ccopt_property extracted_from_delay_corners -skew_group clk_sys/func_mode_ideal_wc delay_wc
create_ccopt_skew_group -name clk_jtg/func_mode_ideal_bc -sources jtag_tck_i -auto_sinks
set_ccopt_property include_source_latency -skew_group clk_jtg/func_mode_ideal_bc true
set_ccopt_property extracted_from_clock_name -skew_group clk_jtg/func_mode_ideal_bc clk_jtg
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk_jtg/func_mode_ideal_bc func_mode_ideal_bc
set_ccopt_property extracted_from_delay_corners -skew_group clk_jtg/func_mode_ideal_bc delay_bc
create_ccopt_skew_group -name clk_rtc/func_mode_ideal_bc -sources ref_clk_i -auto_sinks
set_ccopt_property include_source_latency -skew_group clk_rtc/func_mode_ideal_bc true
set_ccopt_property extracted_from_clock_name -skew_group clk_rtc/func_mode_ideal_bc clk_rtc
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk_rtc/func_mode_ideal_bc func_mode_ideal_bc
set_ccopt_property extracted_from_delay_corners -skew_group clk_rtc/func_mode_ideal_bc delay_bc
create_ccopt_skew_group -name clk_sys/func_mode_ideal_bc -sources clk_i -auto_sinks
set_ccopt_property include_source_latency -skew_group clk_sys/func_mode_ideal_bc true
set_ccopt_property extracted_from_clock_name -skew_group clk_sys/func_mode_ideal_bc clk_sys
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk_sys/func_mode_ideal_bc func_mode_ideal_bc
set_ccopt_property extracted_from_delay_corners -skew_group clk_sys/func_mode_ideal_bc delay_bc
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
set_ccopt_property target_max_trans 0.8
set_ccopt_property -max_fanout 32
set_ccopt_property -target_skew 0.15
set_ccopt_property override_minimum_skew_target true
set_ccopt_property insertion_delay -pin i_croc_soc/i_croc/i_gpio/i_reg_file_reg_q_188__reg/CLK 0.150
set_ccopt_property sink_type -pin i_croc_soc/i_croc/i_gpio/i_reg_file_new_reg_251__reg/CLK ignore
ccopt_design -cts
saveDesign SAVED/03_CTS_fn.invs
report_ccopt_skew_groups -file ./rpt/03_CTS_fn/ccopt_skew_groups.rpt
report_ccopt_clock_trees -file ./rpt/03_CTS_fn/ccopt_clock_trees.rpt
checkFPlan -reportUtil > rpt/03_CTS_fn/check_util.rpt
checkDesign -all > rpt/03_CTS_fn/check_design.rpt
checkPlace > rpt/03_CTS_fn/checkPlace.rpt
reportCongestion -overflow -includeBlockage -hotSpot > rpt/03_CTS_fn/reportCongestion.rpt
timeDesign -postCTS -pathReports -slackReports -numPaths 1000 -prefix croc_postCTS -outDir ./rpt/03_CTS_fn/03_CTS_fn_setup
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 1000 -prefix croc_postCTS -outDir ./rpt/03_CTS_fn/03_CTS_fn_hold
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
set_ccopt_property -update_io_latency true
set_dont_use $dont_use_cells
set_dont_use sg13g2_buf_16 false
set_dont_use sg13g2_inv_16 false
setAnalysisMode -cppr both -clockGatingCheck 1 -timeBorrowing 1 -useOutputPinCap 1 -sequentialConstProp 1 -timingSelfLoopsNoSkew 0 -enableMultipleDriveNet 1 -clkSrcPath 1 -warn 1 -usefulSkew 1 -analysisType onChipVariation -skew true -clockPropagation sdcControl -log 1
all_setup_analysis_views 
all_hold_analysis_views 
set_analysis_view -setup [all_setup_analysis_views ] -hold [all_hold_analysis_views ]
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
set_propagated_clock [all_clocks]
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
reportPathGroupOptions
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
setOptMode -addInstancePrefix ictc_postCTS_setup
optDesign -postCTS -expandedViews -timingDebugReport -outDir ./rpt/04_CTS_opt_fn_setup
saveDesign SAVED/04_CTS_opt_fn_setup.invs
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 1000 -prefix croc_postCTS -outDir ./rpt/04_CTS_opt_fn/04_CTS_opt_fn_hold
setOptMode -addInstancePrefix ictc_postCTS_hold
optDesign -postCTS -hold -expandedViews -timingDebugReport -outDir ./rpt/04_CTS_opt_fn_hold
saveDesign SAVED/04_CTS_opt_fn_hold.invs
timeDesign -postCTS -pathReports -slackReports -numPaths 1000 -prefix croc_postCTS -outDir ./rpt/04_CTS_opt_fn/04_CTS_opt_fn_Opt_setup
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 1000 -prefix croc_postCTS -outDir ./rpt/04_CTS_opt_fn/04_CTS_opt_fn_Opt_hold
saveDesign SAVED/04_CTS_opt_fn.invs
checkFPlan -reportUtil > rpt/04_CTS_opt_fn/check_util.rpt
checkDesign -all > rpt/04_CTS_opt_fn/check_design.rpt
checkPlace > rpt/04_CTS_opt_fn/checkPlace.rpt
reportCongestion -overflow -includeBlockage -hotSpot > rpt/04_CTS_opt_fn/reportCongestion.rpt
timeDesign -postCTS -SlackReports
timeDesign -hold -postCTS -SlackReports
optDesign -postCTS -setup
optDesign -postCTS -incr
timeDesign -hold -postCTS -SlackReports
optDesign -postCTS -hold
saveDesign 04clean15
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
set_dont_use sg13g2_buf_16 false
set_dont_use sg13g2_inv_16 false
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
saveDesign SAVED/05_route.invs
timeDesign -postRoute -pathReports -slackReports -numPaths 1000 -prefix croc_postRoute -outDir ./rpt/05_route/05_route_setup
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 1000 -prefix croc_postRoute -outDir ./rpt/05_route/05_route_hold
checkPlace > rpt/05_route/checkPlace.rpt
timeDesign -postRoute -SlackReports
optDesign -postroute -incr
timeDesign -hold -postroute -SlackReports
optDesign -postroute -hold
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
saveDesign SAVED/06_route_opt_setup.invs
timeDesign -postRoute -pathReports -slackReports -numPaths 1000 -prefix croc_postRoute -outDir ./rpt/06_route_opt/06_route_opt_setup
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 1000 -prefix croc_postRoute -outDir ./rpt/06_route_opt/06_route_opt_hold
saveDesign SAVED/06_route_opt.invs
checkFPlan -reportUtil > rpt/06_route_opt/check_util.rpt
checkPlace > rpt/06_route_opt/checkPlace.rpt
verify_drc -limit 0 > rpt/06_route_opt/verify_drc.rpt
setFillerMode -core {sg13g2_fill_1 sg13g2_fill_2 sg13g2_fill_4 sg13g2_fill_8} -corePrefix FILLER
addFiller -doDrc false
checkFiller
saveDesign SAVED/06_route_opt_filler.invs
defOut -unit 1000 -usedVia -routing output/06_route_opt/croc_chip.def.gz
saveNetlist output/06_route_opt/croc_chip.v
write_lef_abstract -extractBlockObs -cutObsMinSpacing -specifyTopLayer TopMetal2 -5.8 -extractBlockPGPinLayers {TopMetal1 TopMetal2} output/06_route_opt/croc_chip.lef
win
verify_drc -limit
verify_drc -limit 0
saveDesign 06done15
win
zoomBox 215.52400 57.60300 1678.11900 1565.40000
zoomBox 440.74900 221.12800 1497.47400 1310.51100
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
fit
zoomBox -848.84000 135.17900 2632.12100 1597.53500
zoomBox -204.52200 349.50700 1933.22500 1247.57700
zoomBox 545.54000 556.42000 1128.05800 801.13700
zoomBox 653.94500 586.32500 1011.68700 736.61300
zoomBox 679.82500 593.46400 983.90600 721.20900
zoomBox 701.82200 599.53200 960.29300 708.11600
zoomBox 735.53300 620.53600 922.27800 698.98800
zoomBox 769.81500 641.68900 884.50400 689.87000
zoomBox 778.18600 647.54800 875.67200 688.50200
zoomBox 785.30200 652.52800 868.16500 687.33900
zoomBox 791.40300 656.72500 861.83800 686.31500
zoomBox 804.98200 665.60800 848.23900 683.78000
zoomBox 808.22400 667.72900 844.99200 683.17500
zoomBox 810.97900 669.53100 842.23300 682.66100
route_fix_signoff_drc
checkPlace
selectInst i_croc_soc/i_croc/gen_sram_bank_0__i_sram/gen_512x32xBx1_i_cut
fit
win
deselectAll
fit
setLayerPreference violation -isVisible 0
setLayerPreference node_layer -isVisible 0
zoomBox 454.81000 577.17300 1511.53600 1666.55700
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
zoomBox 814.26800 1004.10800 1283.14500 1487.47600
zoomBox 1006.25000 1243.20600 1156.56300 1398.16400
zoomBox 1060.60300 1314.50700 1117.29500 1372.95100
zoomBox 1080.88800 1341.47700 1102.26900 1363.51900
zoomBox 1066.38700 1320.29000 1114.57700 1369.96900
zoomBox 1022.09000 1258.49000 1149.86600 1390.21500
zoomBox 915.29100 1132.59400 1203.26600 1429.46900
zoomBox 841.55400 1045.67200 1240.13500 1456.57100
zoomBox 780.72400 935.16400 1332.39400 1503.88300
zoomBox 742.04000 864.88800 1391.06400 1533.97000
zoomBox 839.92800 1122.13900 1127.90400 1419.01500
zoomBox 881.30400 1238.94000 1009.08000 1370.66500
zoomBox 898.60900 1276.92400 977.08100 1357.82100
zoomBox 906.43600 1293.81800 963.13300 1352.26700
zoomBox 910.90400 1300.50100 959.09700 1350.18300
setLayerPreference allM2 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
zoomBox 925.84700 1314.17000 955.44400 1344.68200
zoomBox 932.38600 1320.72300 953.77100 1342.76900
zoomBox 939.01900 1328.75500 950.18300 1340.26400
zoomBox 941.06500 1331.44900 949.13200 1339.76500
zoomBox 941.83700 1332.50400 948.69400 1339.57300
zoomBox 943.50700 1334.81100 947.71900 1339.15300
zoomBox 944.53200 1336.22700 947.12000 1338.89500
zoomBox 943.48400 1334.87100 947.69800 1339.21500
zoomBox 941.77800 1332.66200 948.63900 1339.73500
zoomBox 940.99700 1331.65200 949.06900 1339.97300
zoomBox 936.23100 1325.48200 951.69600 1341.42500
zoomBox 923.73100 1309.30100 958.58700 1345.23400
zoomBox 909.61300 1291.02500 966.37100 1349.53700
zoomBox 904.61600 1283.99400 971.39000 1352.83200
zoomBox 898.73700 1275.72200 977.29500 1356.70800
zoomBox 862.84800 1225.22400 1013.34200 1380.36900
zoomBox 834.01000 1184.64700 1042.30700 1399.38100
setLayerPreference Via1 -isVisible 0
setLayerPreference Via1 -isVisible 1
zoomBox 864.12300 1244.61800 992.04500 1376.49300
zoomBox 884.82700 1280.90300 963.38700 1361.89100
zoomBox 901.24000 1308.42400 942.24900 1350.70000
zoomBox 909.80600 1322.78800 931.21500 1344.85900
zoomBox 908.15400 1320.01900 933.34200 1345.98500
zoomBox 906.21100 1316.76100 935.84400 1347.31000
setLayerPreference allM3 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
zoomBox 910.22300 1324.76200 928.42300 1343.52400
zoomBox 912.68700 1329.67600 923.86500 1341.19900
zoomBox 914.70600 1334.04300 919.66700 1339.15700
zoomBox 913.72300 1331.80700 921.80000 1340.13400
zoomBox 912.12000 1328.16600 925.27300 1341.72600
zoomBox 908.31700 1319.52400 933.51600 1345.50200
zoomBox 903.31900 1308.16500 944.35100 1350.46500
zoomBox 891.45800 1281.20900 970.06300 1362.24300
zoomBox 860.34600 1210.50300 1037.50500 1393.13700
setLayerPreference allM3 -isVisible 0
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM2 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM8Cont -isVisible 0
zoomBox 838.86500 1161.68400 1084.06900 1414.46600
zoomBox 852.65100 1246.69400 1003.23600 1401.93300
zoomBox 863.13600 1311.36300 941.74400 1392.40000
zoomBox 869.38800 1345.18700 910.42300 1387.49000
zoomBox 861.94200 1331.58200 918.73900 1390.13400
zoomBox 865.96600 1338.93500 914.24400 1388.70500
zoomBox 851.05200 1333.65000 1024.45400 1406.49600
zoomBox 833.50600 1327.43300 1037.50800 1413.13400
zoomBox 851.05200 1333.65000 1024.45400 1406.49600
zoomBox 878.64200 1343.42600 1003.92600 1396.05800
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference Via3 -isVisible 1
setLayerPreference Metal4 -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference pgGround -isVisible 0
setLayerPreference clock -isVisible 0
setLayerPreference clock -isVisible 1
setLayerPreference clock -isVisible 0
setLayerPreference clock -isVisible 1
win
fit
zoomBox -1092.19300 24.52800 3003.05600 1744.94700
zoomBox -755.06800 123.57800 2725.89400 1585.93400
setLayerPreference node_route -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference node_route -isVisible 1
setLayerPreference poly -isVisible 1
setLayerPreference Cont -isVisible 1
setLayerPreference Via2 -isVisible 1
setLayerPreference Metal3 -isVisible 1
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
zoomBox -1270.30500 33.85600 2824.94400 1754.27500
setLayerPreference wire -isVisible 0
setLayerPreference wire -isVisible 1
setLayerPreference metalFill -isVisible 0
setLayerPreference metalFill -isVisible 1
setLayerPreference via -isVisible 0
setLayerPreference via -isVisible 1
setLayerPreference patch -isVisible 0
setLayerPreference patch -isVisible 1
setLayerPreference trim -isVisible 0
setLayerPreference trim -isVisible 1
setLayerPreference power -isVisible 0
setLayerPreference power -isVisible 1
setLayerPreference net -isVisible 0
zoomBox -881.21200 168.44000 2599.75000 1630.79600
zoomBox -271.78000 380.77100 2243.21500 1437.32300
zoomBox 485.32300 645.88700 1798.16800 1197.41500
zoomBox 701.80600 747.71900 1508.05700 1086.42600
zoomBox 813.26900 789.61800 1395.78600 1034.33400
zoomBox 856.79900 805.98100 1351.93900 1013.99000
zoomBox 893.37000 819.13800 1314.24000 995.94600
zoomBox 950.87900 839.82800 1254.95800 967.57200
zoomBox 992.24500 854.53200 1211.94400 946.82800
zoomBox 1022.11300 865.09500 1180.84600 931.77900
zoomBox 1043.67300 872.67500 1158.36000 920.85500
selectInst i_croc_soc/i_croc/i_core_wrap/ictc_preCTS_FE_OCPC6999_FE_OFN605_0369
fit
setLayerPreference pgGround -isVisible 1
zoomBox -526.33700 344.27600 1988.65900 14