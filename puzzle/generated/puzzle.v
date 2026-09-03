module demo (I, O, clk, enable, rst_n, success);
 input I;
 input clk;
 input enable;
 input rst_n;
 output reg success; // loc: [181.005, 282.37]
 output [7:0] O;
 (* ivl_do_not_elide *) reg I_SHR0; // loc: [82.575, 158.27]
 (* ivl_do_not_elide *) reg I_SHR1; // loc: [86.705, 157.25]
 (* ivl_do_not_elide *) reg I_SHR10; // loc: [94.065, 147.39]
 (* ivl_do_not_elide *) reg I_SHR11; // loc: [93.145, 152.83]
 (* ivl_do_not_elide *) reg I_SHR2; // loc: [85.785, 163.71]
 (* ivl_do_not_elide *) reg I_SHR3; // loc: [78.435, 151.81]
 (* ivl_do_not_elide *) reg I_SHR4; // loc: [83.945, 146.37]
 (* ivl_do_not_elide *) reg I_SHR5; // loc: [77.515, 140.93]
 (* ivl_do_not_elide *) reg I_SHR6; // loc: [76.135, 147.39]
 (* ivl_do_not_elide *) reg I_SHR7; // loc: [78.435, 135.49]
 (* ivl_do_not_elide *) reg I_SHR8; // loc: [82.575, 136.51]
 (* ivl_do_not_elide *) reg I_SHR9; // loc: [91.765, 141.95]
 (* ivl_do_not_elide *) reg Merr_lat; // loc: [89.925, 92.99]
 (* ivl_do_not_elide *) reg TNT_not_STAR; // loc: [176.865, 272.51]
 (* ivl_do_not_elide *) reg col_cnt_0; // loc: [35.185, 151.81]
 (* ivl_do_not_elide *) reg col_cnt_1; // loc: [39.785, 147.39]
 (* ivl_do_not_elide *) reg col_cnt_2; // loc: [26.915, 146.37]
 (* ivl_do_not_elide *) reg col_cnt_3; // loc: [37.945, 158.27]
 (* ivl_do_not_elide *) reg grp_A0; // loc: [123.965, 75.65]
 (* ivl_do_not_elide *) reg grp_A1; // loc: [123.965, 82.11]
 (* ivl_do_not_elide *) reg grp_B0; // loc: [115.695, 140.93]
 (* ivl_do_not_elide *) reg grp_B1; // loc: [118.915, 135.49]
 (* ivl_do_not_elide *) reg grp_C0; // loc: [124.885, 76.67]
 (* ivl_do_not_elide *) reg grp_C1; // loc: [114.315, 81.09]
 (* ivl_do_not_elide *) reg grp_D0; // loc: [123.965, 98.43]
 (* ivl_do_not_elide *) reg grp_D1; // loc: [132.245, 97.41]
 (* ivl_do_not_elide *) reg grp_F0; // loc: [114.775, 136.51]
 (* ivl_do_not_elide *) reg grp_F1; // loc: [115.695, 130.05]
 (* ivl_do_not_elide *) reg grp_G0; // loc: [123.965, 147.39]
 (* ivl_do_not_elide *) reg grp_G1; // loc: [118.915, 146.37]
 (* ivl_do_not_elide *) reg grp_J0; // loc: [123.965, 49.47]
 (* ivl_do_not_elide *) reg grp_J1; // loc: [127.185, 48.45]
 (* ivl_do_not_elide *) reg grp_N0; // loc: [114.315, 97.41]
 (* ivl_do_not_elide *) reg grp_N1; // loc: [124.885, 92.99]
 (* ivl_do_not_elide *) reg grp_S0; // loc: [123.045, 124.61]
 (* ivl_do_not_elide *) reg grp_S1; // loc: [124.885, 114.75]
 (* ivl_do_not_elide *) reg grp_ST0; // loc: [115.695, 71.23]
 (* ivl_do_not_elide *) reg grp_ST1; // loc: [123.045, 64.77]
 (* ivl_do_not_elide *) reg grp_T0; // loc: [115.695, 109.31]
 (* ivl_do_not_elide *) reg grp_T1; // loc: [118.915, 108.29]
 (* ivl_do_not_elide *) reg inky_cnt_0; // loc: [81.655, 54.91]
 (* ivl_do_not_elide *) reg inky_cnt_1; // loc: [81.655, 38.59]
 (* ivl_do_not_elide *) reg inky_cnt_2; // loc: [91.765, 44.03]
 (* ivl_do_not_elide *) reg inky_cnt_3; // loc: [90.845, 49.47]
 (* ivl_do_not_elide *) reg inky_cnt_4; // loc: [86.705, 37.57]
 (* ivl_do_not_elide *) reg inky_cnt_5; // loc: [77.515, 43.01]
 (* ivl_do_not_elide *) reg inky_cnt_6; // loc: [84.865, 48.45]
 (* ivl_do_not_elide *) reg inky_cnt_7; // loc: [78.435, 59.33]
 (* ivl_do_not_elide *) reg net__282; // loc: [122.585, 233.41]
 (* ivl_do_not_elide *) reg net__301; // loc: [124.885, 282.37]
 (* ivl_do_not_elide *) reg net__571; // loc: [124.885, 207.23]
 (* ivl_do_not_elide *) reg net__611; // loc: [113.855, 212.67]
 (* ivl_do_not_elide *) reg num_in_row_0; // loc: [88.085, 109.31]
 (* ivl_do_not_elide *) reg num_in_row_1; // loc: [90.845, 98.43]
 (* ivl_do_not_elide *) reg output_bisty_flop0; // loc: [181.94, 200.77]
 (* ivl_do_not_elide *) reg output_bisty_flop1; // loc: [176.865, 196.35]
 (* ivl_do_not_elide *) reg output_bisty_flop2; // loc: [176.88, 190.91]
 (* ivl_do_not_elide *) reg output_bisty_flop3; // loc: [174.575, 195.33]
 (* ivl_do_not_elide *) reg output_bisty_flop4; // loc: [183.765, 184.45]
 (* ivl_do_not_elide *) reg output_bisty_flop5; // loc: [175.96, 189.89]
 (* ivl_do_not_elide *) reg output_bisty_flop6; // loc: [177.785, 179.01]
 (* ivl_do_not_elide *) reg output_bisty_flop7; // loc: [168.58, 180.03]
 (* ivl_do_not_elide *) reg outputting; // loc: [30.595, 201.79]
 (* ivl_do_not_elide *) reg outputting_cnt_0; // loc: [168.685, 249.73]
 (* ivl_do_not_elide *) reg outputting_cnt_1; // loc: [169.605, 255.17]
 (* ivl_do_not_elide *) reg outputting_cnt_2; // loc: [176.775, 250.75]
 (* ivl_do_not_elide *) reg outputting_cnt_3; // loc: [175.855, 244.29]
 (* ivl_do_not_elide *) reg outputting_latched; // loc: [176.865, 283.39]
 (* ivl_do_not_elide *) reg row_cnt_0; // loc: [32.895, 92.99]
 (* ivl_do_not_elide *) reg row_cnt_1; // loc: [33.815, 103.87]
 (* ivl_do_not_elide *) reg row_cnt_2; // loc: [37.945, 109.31]
 (* ivl_do_not_elide *) reg row_cnt_3; // loc: [37.945, 98.43]
 (* ivl_do_not_elide *) reg two_touched_any_dir_lat; // loc: [96.825, 151.81]
 (* ivl_do_not_elide *) reg two_used_col0; // loc: [123.045, 184.45]
 (* ivl_do_not_elide *) reg two_used_col1; // loc: [114.315, 206.21]
 (* ivl_do_not_elide *) reg two_used_col10; // loc: [114.315, 287.81]
 (* ivl_do_not_elide *) reg two_used_col2; // loc: [124.885, 211.65]
 (* ivl_do_not_elide *) reg two_used_col3; // loc: [123.045, 217.09]
 (* ivl_do_not_elide *) reg two_used_col4; // loc: [124.885, 228.99]
 (* ivl_do_not_elide *) reg two_used_col5; // loc: [114.315, 238.85]
 (* ivl_do_not_elide *) reg two_used_col6; // loc: [123.045, 244.29]
 (* ivl_do_not_elide *) reg two_used_col7; // loc: [122.585, 260.61]
 (* ivl_do_not_elide *) reg two_used_col8; // loc: [114.315, 276.93]
 (* ivl_do_not_elide *) reg two_used_col9; // loc: [123.045, 272.51]
 (* ivl_do_not_elide *) reg used_col0; // loc: [125.345, 185.47]
 (* ivl_do_not_elide *) reg used_col10; // loc: [124.885, 283.39]
 (* ivl_do_not_elide *) reg used_col3; // loc: [125.345, 218.11]
 (* ivl_do_not_elide *) reg used_col5; // loc: [124.885, 239.87]
 (* ivl_do_not_elide *) reg used_col6; // loc: [117.075, 245.31]
 (* ivl_do_not_elide *) reg used_col7; // loc: [124.885, 256.19]
 (* ivl_do_not_elide *) reg used_col9; // loc: [125.345, 277.95]
 (* ivl_do_not_elide *) wire Nlast_row; // loc: [33.835, 101.83]
 (* ivl_do_not_elide *) wire bb_char_mask; // loc: [169.485, 218.11]
 (* ivl_do_not_elide *) wire char_0; // loc: [120.315, 194.99]
 (* ivl_do_not_elide *) wire char_10; // loc: [127.655, 283.73]
 (* ivl_do_not_elide *) wire char_3; // loc: [119.365, 223.89]
 (* ivl_do_not_elide *) wire char_5; // loc: [117.995, 234.77]
 (* ivl_do_not_elide *) wire char_6; // loc: [121.675, 254.83]
 (* ivl_do_not_elide *) wire char_7; // loc: [125.815, 253.47]
 (* ivl_do_not_elide *) wire char_9; // loc: [114.765, 283.73]
 (* ivl_do_not_elide *) wire clk2; // loc: [113.39, 164.05]
 (* ivl_do_not_elide *) wire clk3_1; // loc: [86.71, 77.35]
 (* ivl_do_not_elide *) wire clk3_10; // loc: [121.67, 91.29]
 (* ivl_do_not_elide *) wire clk3_11; // loc: [105.11, 200.09]
 (* ivl_do_not_elide *) wire clk3_12; // loc: [112.47, 205.53]
 (* ivl_do_not_elide *) wire clk3_13; // loc: [161.23, 180.71]
 (* ivl_do_not_elide *) wire clk3_14; // loc: [161.23, 227.29]
 (* ivl_do_not_elide *) wire clk3_2; // loc: [98.21, 74.97]
 (* ivl_do_not_elide *) wire clk3_3; // loc: [146.97, 178.33]
 (* ivl_do_not_elide *) wire clk3_4; // loc: [77.51, 107.61]
 (* ivl_do_not_elide *) wire clk3_5; // loc: [123.05, 85.85]
 (* ivl_do_not_elide *) wire clk3_6; // loc: [60.95, 148.07]
 (* ivl_do_not_elide *) wire clk3_7; // loc: [77.05, 151.13]
 (* ivl_do_not_elide *) wire clk3_8; // loc: [123.97, 249.05]
 (* ivl_do_not_elide *) wire clk3_9; // loc: [150.65, 224.23]
 (* ivl_do_not_elide *) wire clk4_1; // loc: [85.79, 77.35]
 (* ivl_do_not_elide *) wire clk4_10; // loc: [128.57, 91.29]
 (* ivl_do_not_elide *) wire clk4_11; // loc: [103.27, 197.03]
 (* ivl_do_not_elide *) wire clk4_12; // loc: [109.71, 207.91]
 (* ivl_do_not_elide *) wire clk4_13; // loc: [155.71, 178.33]
 (* ivl_do_not_elide *) wire clk4_14; // loc: [157.09, 224.23]
 (* ivl_do_not_elide *) wire clk4_2; // loc: [100.05, 71.91]
 (* ivl_do_not_elide *) wire clk4_3; // loc: [148.81, 175.27]
 (* ivl_do_not_elide *) wire clk4_4_1; // loc: [89.47, 109.99]
 (* ivl_do_not_elide *) wire clk4_4_2; // loc: [72.91, 107.61]
 (* ivl_do_not_elide *) wire clk4_5; // loc: [126.27, 85.85]
 (* ivl_do_not_elide *) wire clk4_6; // loc: [60.03, 148.07]
 (* ivl_do_not_elide *) wire clk4_7; // loc: [75.21, 142.63]
 (* ivl_do_not_elide *) wire clk4_8_1; // loc: [117.07, 251.43]
 (* ivl_do_not_elide *) wire clk4_8_2; // loc: [130.41, 249.05]
 (* ivl_do_not_elide *) wire clk5_4; // loc: [87.17, 113.05]
 (* ivl_do_not_elide *) wire col_cnt_eq_5; // loc: [81.625, 105.23]
 (* ivl_do_not_elide *) wire cols_6_to_10; // loc: [176.87, 41.99]
 (* ivl_do_not_elide *) wire curr_cell_is_group_A; // loc: [121.665, 69.87]
 (* ivl_do_not_elide *) wire curr_cell_is_group_B; // loc: [117.075, 131.41]
 (* ivl_do_not_elide *) wire curr_cell_is_group_D; // loc: [117.075, 87.89]
 (* ivl_do_not_elide *) wire curr_cell_is_group_G; // loc: [117.075, 142.29]
 (* ivl_do_not_elide *) wire curr_cell_is_group_J; // loc: [116.125, 58.99]
 (* ivl_do_not_elide *) wire curr_cell_is_group_S; // loc: [118.445, 127.33]
 (* ivl_do_not_elide *) wire curr_cell_is_group_T; // loc: [117.075, 102.51]
 (* ivl_do_not_elide *) wire curr_cell_isn_group_C; // loc: [112.475, 71.23]
 (* ivl_do_not_elide *) wire curr_cell_isn_group_F; // loc: [123.045, 141.95]
 (* ivl_do_not_elide *) wire curr_cell_isn_group_N; // loc: [117.525, 86.53]
 (* ivl_do_not_elide *) wire curr_cell_isn_group_ST; // loc: [120.745, 60.35]
 (* ivl_do_not_elide *) wire es_char_mask; // loc: [168.615, 221.51]
 (* ivl_do_not_elide *) wire exact_two_in_each_col; // loc: [77.51, 158.95]
 (* ivl_do_not_elide *) wire exact_two_used_col0; // loc: [116.585, 188.53]
 (* ivl_do_not_elide *) wire exact_two_used_col1; // loc: [107.41, 208.93]
 (* ivl_do_not_elide *) wire exact_two_used_col10; // loc: [105.545, 284.75]
 (* ivl_do_not_elide *) wire exact_two_used_col2; // loc: [111.09, 215.39]
 (* ivl_do_not_elide *) wire exact_two_used_col3; // loc: [113.825, 219.47]
 (* ivl_do_not_elide *) wire exact_two_used_col4; // loc: [111.09, 237.15]
 (* ivl_do_not_elide *) wire exact_two_used_col5; // loc: [110.145, 241.23]
 (* ivl_do_not_elide *) wire exact_two_used_col6; // loc: [116.585, 248.37]
 (* ivl_do_not_elide *) wire exact_two_used_col7; // loc: [110.605, 259.25]
 (* ivl_do_not_elide *) wire exact_two_used_col8; // loc: [106.49, 279.65]
 (* ivl_do_not_elide *) wire exact_two_used_col9; // loc: [123.945, 275.57]
 (* ivl_do_not_elide *) wire group_select0; // loc: [166.745, 48.11]
 (* ivl_do_not_elide *) wire group_select1; // loc: [184.695, 42.67]
 (* ivl_do_not_elide *) wire group_select2; // loc: [173.185, 53.55]
 (* ivl_do_not_elide *) wire group_select3; // loc: [171.345, 49.81]
 (* ivl_do_not_elide *) wire hi; // loc: [166.02, 85.83]
 (* ivl_do_not_elide *) wire input_unmasked; // loc: [30.565, 199.41]
 (* ivl_do_not_elide *) wire last_in_row; // loc: [24.615, 153.17]
 (* ivl_do_not_elide *) wire last_row; // loc: [31.515, 94.35]
 (* ivl_do_not_elide *) wire lo; // loc: [166.655, 85.51]
 (* ivl_do_not_elide *) wire n_char_1; // loc: [114.775, 200.77]
 (* ivl_do_not_elide *) wire n_char_8; // loc: [114.775, 271.49]
 (* ivl_do_not_elide *) wire n_first_col; // loc: [81.195, 106.93]
 (* ivl_do_not_elide *) wire n_first_col_2; // loc: [86.245, 101.15]
 (* ivl_do_not_elide *) wire n_input_unmasked; // loc: [76.59, 104.55]
 (* ivl_do_not_elide *) wire n_set_A1; // loc: [112.465, 77.69]
 (* ivl_do_not_elide *) wire n_set_B1; // loc: [117.075, 134.47]
 (* ivl_do_not_elide *) wire n_set_D1; // loc: [118.455, 90.95]
 (* ivl_do_not_elide *) wire n_set_G1; // loc: [114.765, 145.35]
 (* ivl_do_not_elide *) wire n_set_J1; // loc: [117.065, 52.87]
 (* ivl_do_not_elide *) wire n_set_S1; // loc: [116.145, 121.21]
 (* ivl_do_not_elide *) wire n_set_T1; // loc: [114.765, 107.27]
 (* ivl_do_not_elide *) wire n_trig_two_used_0; // loc: [117.065, 191.93]
 (* ivl_do_not_elide *) wire n_trig_two_used_10; // loc: [109.705, 286.79]
 (* ivl_do_not_elide *) wire n_trig_two_used_3; // loc: [117.065, 221.51]
 (* ivl_do_not_elide *) wire n_trig_two_used_5; // loc: [113.385, 235.45]
 (* ivl_do_not_elide *) wire n_trig_two_used_6; // loc: [117.065, 254.15]
 (* ivl_do_not_elide *) wire n_trig_two_used_7; // loc: [112.465, 257.21]
 (* ivl_do_not_elide *) wire n_trig_two_used_9; // loc: [112.925, 278.97]
 (* ivl_do_not_elide *) wire net__10; // loc: [163.53, 245.99]
 (* ivl_do_not_elide *) wire net__1011; // loc: [172.295, 166.77]
 (* ivl_do_not_elide *) wire net__1012; // loc: [174.595, 168.13]
 (* ivl_do_not_elide *) wire net__1021; // loc: [185.615, 175.95]
 (* ivl_do_not_elide *) wire net__1023; // loc: [173.655, 165.07]
 (* ivl_do_not_elide *) wire net__1026; // loc: [171.815, 164.73]
 (* ivl_do_not_elide *) wire net__1027; // loc: [180.085, 172.21]
 (* ivl_do_not_elide *) wire net__1040; // loc: [187.475, 181.73]
 (* ivl_do_not_elide *) wire net__1062; // loc: [172.265, 170.85]
 (* ivl_do_not_elide *) wire net__1079; // loc: [174.135, 151.81]
 (* ivl_do_not_elide *) wire net__108; // loc: [180.525, 250.75]
 (* ivl_do_not_elide *) wire net__1083; // loc: [176.385, 150.45]
 (* ivl_do_not_elide *) wire net__1088; // loc: [171.355, 155.89]
 (* ivl_do_not_elide *) wire net__1090; // loc: [170.455, 150.45]
 (* ivl_do_not_elide *) wire net__1093; // loc: [171.81, 153.51]
 (* ivl_do_not_elide *) wire net__1096; // loc: [171.81, 158.95]
 (* ivl_do_not_elide *) wire net__1126; // loc: [28.25, 153.85]
 (* ivl_do_not_elide *) wire net__113; // loc: [173.625, 256.19]
 (* ivl_do_not_elide *) wire net__1137; // loc: [28.29, 156.91]
 (* ivl_do_not_elide *) wire net__1138; // loc: [30.125, 148.75]
 (* ivl_do_not_elide *) wire net__1148; // loc: [24.61, 148.07]
 (* ivl_do_not_elide *) wire net__115; // loc: [168.595, 257.89]
 (* ivl_do_not_elide *) wire net__1150; // loc: [37.03, 151.81]
 (* ivl_do_not_elide *) wire net__1164; // loc: [68.31, 153.51]
 (* ivl_do_not_elide *) wire net__1165; // loc: [69.205, 150.11]
 (* ivl_do_not_elide *) wire net__1168; // loc: [76.135, 154.53]
 (* ivl_do_not_elide *) wire net__1173; // loc: [71.535, 154.19]
 (* ivl_do_not_elide *) wire net__1178; // loc: [74.755, 155.89]
 (* ivl_do_not_elide *) wire net__1180; // loc: [71.075, 155.89]
 (* ivl_do_not_elide *) wire net__1195; // loc: [83.945, 154.53]
 (* ivl_do_not_elide *) wire net__1204; // loc: [78.885, 160.99]
 (* ivl_do_not_elide *) wire net__1205; // loc: [77.975, 159.97]
 (* ivl_do_not_elide *) wire net__121; // loc: [161.69, 250.75]
 (* ivl_do_not_elide *) wire net__1216; // loc: [79.355, 160.99]
 (* ivl_do_not_elide *) wire net__123; // loc: [166.755, 257.55]
 (* ivl_do_not_elide *) wire net__1250; // loc: [91.765, 155.55]
 (* ivl_do_not_elide *) wire net__1260; // loc: [78.435, 110.33]
 (* ivl_do_not_elide *) wire net__1267; // loc: [79.35, 96.73]
 (* ivl_do_not_elide *) wire net__1277; // loc: [81.645, 138.21]
 (* ivl_do_not_elide *) wire net__129; // loc: [166.745, 250.75]
 (* ivl_do_not_elide *) wire net__1301; // loc: [88.095, 144.67]
 (* ivl_do_not_elide *) wire net__1303; // loc: [82.565, 143.65]
 (* ivl_do_not_elide *) wire net__1304; // loc: [74.285, 144.67]
 (* ivl_do_not_elide *) wire net__1331; // loc: [73.365, 149.09]
 (* ivl_do_not_elide *) wire net__1335; // loc: [74.285, 143.65]
 (* ivl_do_not_elide *) wire net__1349; // loc: [77.055, 101.15]
 (* ivl_do_not_elide *) wire net__1355; // loc: [83.025, 96.05]
 (* ivl_do_not_elide *) wire net__1364; // loc: [80.295, 105.23]
 (* ivl_do_not_elide *) wire net__1366; // loc: [83.035, 112.37]
 (* ivl_do_not_elide *) wire net__1367; // loc: [88.55, 102.17]
 (* ivl_do_not_elide *) wire net__1369; // loc: [82.105, 107.95]
 (* ivl_do_not_elide *) wire net__1371; // loc: [79.35, 98.43]
 (* ivl_do_not_elide *) wire net__1385; // loc: [81.195, 101.15]
 (* ivl_do_not_elide *) wire net__14; // loc: [165.37, 218.11]
 (* ivl_do_not_elide *) wire net__1405; // loc: [32.885, 107.27]
 (* ivl_do_not_elide *) wire net__142; // loc: [162.61, 249.05]
 (* ivl_do_not_elide *) wire net__1426; // loc: [34.73, 142.97]
 (* ivl_do_not_elide *) wire net__1443; // loc: [30.59, 96.73]
 (* ivl_do_not_elide *) wire net__1450; // loc: [29.205, 101.49]
 (* ivl_do_not_elide *) wire net__1455; // loc: [27.375, 106.59]
 (* ivl_do_not_elide *) wire net__1461; // loc: [34.725, 96.73]
 (* ivl_do_not_elide *) wire net__1463; // loc: [28.745, 99.79]
 (* ivl_do_not_elide *) wire net__1466; // loc: [38.865, 99.45]
 (* ivl_do_not_elide *) wire net__1472; // loc: [40.245, 95.71]
 (* ivl_do_not_elide *) wire net__1486; // loc: [34.27, 107.61]
 (* ivl_do_not_elide *) wire net__1504; // loc: [67.385, 47.43]
 (* ivl_do_not_elide *) wire net__1505; // loc: [69.69, 47.77]
 (* ivl_do_not_elide *) wire net__1506; // loc: [82.61, 45.05]
 (* ivl_do_not_elide *) wire net__1511; // loc: [84.435, 34.51]
 (* ivl_do_not_elide *) wire net__1512; // loc: [69.23, 45.73]
 (* ivl_do_not_elide *) wire net__1513; // loc: [71.985, 45.73]
 (* ivl_do_not_elide *) wire net__1515; // loc: [76.13, 44.71]
 (* ivl_do_not_elide *) wire net__1523; // loc: [77.075, 57.97]
 (* ivl_do_not_elide *) wire net__1530; // loc: [76.595, 50.83]
 (* ivl_do_not_elide *) wire net__1534; // loc: [86.735, 52.53]
 (* ivl_do_not_elide *) wire net__155; // loc: [174.61, 246.33]
 (* ivl_do_not_elide *) wire net__1554; // loc: [80.27, 61.03]
 (* ivl_do_not_elide *) wire net__1563; // loc: [80.725, 49.81]
 (* ivl_do_not_elide *) wire net__1576; // loc: [75.215, 52.53]
 (* ivl_do_not_elide *) wire net__1577; // loc: [83.95, 52.87]
 (* ivl_do_not_elide *) wire net__1584; // loc: [78.43, 54.91]
 (* ivl_do_not_elide *) wire net__1588; // loc: [91.77, 50.15]
 (* ivl_do_not_elide *) wire net__1589; // loc: [91.765, 48.11]
 (* ivl_do_not_elide *) wire net__1593; // loc: [94.525, 46.75]
 (* ivl_do_not_elide *) wire net__1594; // loc: [74.285, 50.83]
 (* ivl_do_not_elide *) wire net__1599; // loc: [75.67, 56.27]
 (* ivl_do_not_elide *) wire net__1603; // loc: [75.695, 47.43]
 (* ivl_do_not_elide *) wire net__1605; // loc: [71.535, 52.53]
 (* ivl_do_not_elide *) wire net__1610; // loc: [77.055, 39.61]
 (* ivl_do_not_elide *) wire net__1612; // loc: [74.285, 41.31]
 (* ivl_do_not_elide *) wire net__1615; // loc: [76.59, 26.01]
 (* ivl_do_not_elide *) wire net__165; // loc: [173.625, 239.87]
 (* ivl_do_not_elide *) wire net__1652; // loc: [80.735, 19.89]
 (* ivl_do_not_elide *) wire net__1655; // loc: [82.575, 25.33]
 (* ivl_do_not_elide *) wire net__1666; // loc: [111.555, 79.73]
 (* ivl_do_not_elide *) wire net__1667; // loc: [110.635, 73.95]
 (* ivl_do_not_elide *) wire net__1677; // loc: [167.215, 94.35]
 (* ivl_do_not_elide *) wire net__1685; // loc: [176.865, 116.45]
 (* ivl_do_not_elide *) wire net__1686; // loc: [167.215, 132.43]
 (* ivl_do_not_elide *) wire net__1691; // loc: [167.67, 89.25]
 (* ivl_do_not_elide *) wire net__1692; // loc: [171.785, 128.69]
 (* ivl_do_not_elide *) wire net__1693; // loc: [170.43, 131.07]
 (* ivl_do_not_elide *) wire net__1694; // loc: [179.17, 113.73]
 (* ivl_do_not_elide *) wire net__1696; // loc: [179.175, 134.47]
 (* ivl_do_not_elide *) wire net__1703; // loc: [168.595, 137.87]
 (* ivl_do_not_elide *) wire net__1708; // loc: [169.055, 138.21]
 (* ivl_do_not_elide *) wire net__1709; // loc: [175.035, 137.87]
 (* ivl_do_not_elide *) wire net__1715; // loc: [175.49, 145.69]
 (* ivl_do_not_elide *) wire net__1720; // loc: [175.485, 134.13]
 (* ivl_do_not_elide *) wire net__173; // loc: [168.595, 243.95]
 (* ivl_do_not_elide *) wire net__1731; // loc: [175.03, 112.71]
 (* ivl_do_not_elide *) wire net__1737; // loc: [166.755, 90.27]
 (* ivl_do_not_elide *) wire net__1738; // loc: [175.485, 94.35]
 (* ivl_do_not_elide *) wire net__1743; // loc: [179.625, 96.05]
 (* ivl_do_not_elide *) wire net__1746; // loc: [174.545, 96.39]
 (* ivl_do_not_elide *) wire net__1748; // loc: [170.915, 88.91]
 (* ivl_do_not_elide *) wire net__1754; // loc: [175.025, 106.93]
 (* ivl_do_not_elide *) wire net__1756; // loc: [167.645, 112.71]
 (* ivl_do_not_elide *) wire net__1761; // loc: [175.025, 99.45]
 (* ivl_do_not_elide *) wire net__1763; // loc: [168.125, 96.39]
 (* ivl_do_not_elide *) wire net__1773; // loc: [169.515, 91.29]
 (* ivl_do_not_elide *) wire net__1775; // loc: [174.115, 91.63]
 (* ivl_do_not_elide *) wire net__1779; // loc: [180.55, 92.99]
 (* ivl_do_not_elide *) wire net__1780; // loc: [169.05, 84.83]
 (* ivl_do_not_elide *) wire net__1781; // loc: [182.855, 94.35]
 (* ivl_do_not_elide *) wire net__1783; // loc: [171.345, 85.17]
 (* ivl_do_not_elide *) wire net__1786; // loc: [174.595, 83.47]
 (* ivl_do_not_elide *) wire net__1790; // loc: [181.005, 90.61]
 (* ivl_do_not_elide *) wire net__1840; // loc: [114.305, 116.11]
 (* ivl_do_not_elide *) wire net__1849; // loc: [126.275, 139.57]
 (* ivl_do_not_elide *) wire net__1850; // loc: [121.205, 132.77]
 (* ivl_do_not_elide *) wire net__1865; // loc: [123.965, 132.09]
 (* ivl_do_not_elide *) wire net__1867; // loc: [115.225, 132.77]
 (* ivl_do_not_elide *) wire net__1874; // loc: [125.355, 137.87]
 (* ivl_do_not_elide *) wire net__1884; // loc: [112.465, 132.43]
 (* ivl_do_not_elide *) wire net__191; // loc: [169.51, 240.55]
 (* ivl_do_not_elide *) wire net__1917; // loc: [112.935, 143.31]
 (* ivl_do_not_elide *) wire net__1920; // loc: [112.465, 149.09]
 (* ivl_do_not_elide *) wire net__1924; // loc: [110.625, 134.13]
 (* ivl_do_not_elide *) wire net__1927; // loc: [111.545, 138.21]
 (* ivl_do_not_elide *) wire net__1930; // loc: [114.31, 129.37]
 (* ivl_do_not_elide *) wire net__1939; // loc: [118.905, 117.81]
 (* ivl_do_not_elide *) wire net__1943; // loc: [119.825, 117.47]
 (* ivl_do_not_elide *) wire net__1973; // loc: [123.055, 88.91]
 (* ivl_do_not_elide *) wire net__1975; // loc: [112.925, 96.05]
 (* ivl_do_not_elide *) wire net__1991; // loc: [116.605, 105.23]
 (* ivl_do_not_elide *) wire net__1995; // loc: [114.31, 102.17]
 (* ivl_do_not_elide *) wire net__2003; // loc: [120.755, 112.37]
 (* ivl_do_not_elide *) wire net__2012; // loc: [119.375, 105.57]
 (* ivl_do_not_elide *) wire net__2013; // loc: [121.665, 105.23]
 (* ivl_do_not_elide *) wire net__2026; // loc: [112.465, 100.13]
 (* ivl_do_not_elide *) wire net__2029; // loc: [110.165, 94.69]
 (* ivl_do_not_elide *) wire net__2031; // loc: [114.305, 88.91]
 (* ivl_do_not_elide *) wire net__2038; // loc: [115.225, 94.69]
 (* ivl_do_not_elide *) wire net__2045; // loc: [114.31, 74.97]
 (* ivl_do_not_elide *) wire net__2048; // loc: [112.935, 90.95]
 (* ivl_do_not_elide *) wire net__2081; // loc: [114.775, 61.37]
 (* ivl_do_not_elide *) wire net__2082; // loc: [123.055, 67.15]
 (* ivl_do_not_elide *) wire net__2091; // loc: [118.445, 45.39]
 (* ivl_do_not_elide *) wire net__2097; // loc: [124.895, 74.29]
 (* ivl_do_not_elide *) wire net__2104; // loc: [120.755, 67.49]
 (* ivl_do_not_elide *) wire net__2114; // loc: [112.475, 67.49]
 (* ivl_do_not_elide *) wire net__2122; // loc: [111.085, 69.19]
 (* ivl_do_not_elide *) wire net__2143; // loc: [117.535, 67.49]
 (* ivl_do_not_elide *) wire net__2150; // loc: [110.635, 72.59]
 (* ivl_do_not_elide *) wire net__2151; // loc: [117.535, 68.51]
 (* ivl_do_not_elide *) wire net__2155; // loc: [107.405, 74.29]
 (* ivl_do_not_elide *) wire net__2157; // loc: [114.31, 69.53]
 (* ivl_do_not_elide *) wire net__2162; // loc: [117.535, 61.71]
 (* ivl_do_not_elide *) wire net__2176; // loc: [115.685, 46.75]
 (* ivl_do_not_elide *) wire net__2189; // loc: [115.235, 56.27]
 (* ivl_do_not_elide *) wire net__2203; // loc: [166.25, 20.23]
 (* ivl_do_not_elide *) wire net__2206; // loc: [163.985, 50.49]
 (* ivl_do_not_elide *) wire net__2207; // loc: [166.75, 49.47]
 (* ivl_do_not_elide *) wire net__2214; // loc: [165.37, 31.11]
 (* ivl_do_not_elide *) wire net__2215; // loc: [160.775, 18.19]
 (* ivl_do_not_elide *) wire net__2217; // loc: [154.335, 36.55]
 (* ivl_do_not_elide *) wire net__2218; // loc: [165.37, 36.55]
 (* ivl_do_not_elide *) wire net__2222; // loc: [170.93, 41.99]
 (* ivl_do_not_elide *) wire net__2228; // loc: [184.69, 44.03]
 (* ivl_do_not_elide *) wire net__2229; // loc: [160.315, 45.39]
 (* ivl_do_not_elide *) wire net__2230; // loc: [172.77, 45.05]
 (* ivl_do_not_elide *) wire net__2234; // loc: [163.07, 45.39]
 (* ivl_do_not_elide *) wire net__2235; // loc: [165.375, 45.39]
 (* ivl_do_not_elide *) wire net__2238; // loc: [174.085, 45.73]
 (* ivl_do_not_elide *) wire net__2242; // loc: [178.255, 45.73]
 (* ivl_do_not_elide *) wire net__2243; // loc: [176.87, 36.55]
 (* ivl_do_not_elide *) wire net__2245; // loc: [187.91, 44.71]
 (* ivl_do_not_elide *) wire net__2246; // loc: [178.715, 52.53]
 (* ivl_do_not_elide *) wire net__2250; // loc: [180.095, 50.83]
 (* ivl_do_not_elide *) wire net__2252; // loc: [184.685, 35.87]
 (* ivl_do_not_elide *) wire net__2253; // loc: [165.835, 28.05]
 (* ivl_do_not_elide *) wire net__2254; // loc: [176.41, 12.07]
 (* ivl_do_not_elide *) wire net__2255; // loc: [176.87, 31.11]
 (* ivl_do_not_elide *) wire net__2257; // loc: [174.11, 25.67]
 (* ivl_do_not_elide *) wire net__2259; // loc: [170.435, 56.27]
 (* ivl_do_not_elide *) wire net__2261; // loc: [168.595, 12.75]
 (* ivl_do_not_elide *) wire net__2262; // loc: [173.65, 55.59]
 (* ivl_do_not_elide *) wire net__2263; // loc: [175.955, 56.27]
 (* ivl_do_not_elide *) wire net__2266; // loc: [162.145, 19.89]
 (* ivl_do_not_elide *) wire net__2267; // loc: [169.055, 52.53]
 (* ivl_do_not_elide *) wire net__2269; // loc: [158.475, 30.43]
 (* ivl_do_not_elide *) wire net__2273; // loc: [172.265, 52.19]
 (* ivl_do_not_elide *) wire net__2276; // loc: [179.165, 46.75]
 (* ivl_do_not_elide *) wire net__2277; // loc: [186.07, 37.57]
 (* ivl_do_not_elide *) wire net__2279; // loc: [175.99, 47.43]
 (* ivl_do_not_elide *) wire net__2281; // loc: [161.225, 31.79]
 (* ivl_do_not_elide *) wire net__2283; // loc: [176.87, 50.83]
 (* ivl_do_not_elide *) wire net__2286; // loc: [175.99, 34.17]
 (* ivl_do_not_elide *) wire net__2289; // loc: [162.15, 47.77]
 (* ivl_do_not_elide *) wire net__2292; // loc: [158.93, 43.01]
 (* ivl_do_not_elide *) wire net__2293; // loc: [163.985, 41.31]
 (* ivl_do_not_elide *) wire net__2294; // loc: [168.585, 18.19]
 (* ivl_do_not_elide *) wire net__2295; // loc: [178.255, 20.91]
 (* ivl_do_not_elide *) wire net__2296; // loc: [187.445, 41.31]
 (* ivl_do_not_elide *) wire net__2297; // loc: [178.71, 38.93]
 (* ivl_do_not_elide *) wire net__2299; // loc: [176.87, 33.83]
 (* ivl_do_not_elide *) wire net__2300; // loc: [185.155, 47.09]
 (* ivl_do_not_elide *) wire net__2301; // loc: [152.495, 30.77]
 (* ivl_do_not_elide *) wire net__2305; // loc: [182.845, 47.09]
 (* ivl_do_not_elide *) wire net__2306; // loc: [186.065, 19.89]
 (* ivl_do_not_elide *) wire net__2307; // loc: [186.535, 25.67]
 (* ivl_do_not_elide *) wire net__2308; // loc: [181.465, 18.19]
 (* ivl_do_not_elide *) wire net__2309; // loc: [152.945, 39.95]
 (* ivl_do_not_elide *) wire net__2310; // loc: [165.365, 52.87]
 (* ivl_do_not_elide *) wire net__2311; // loc: [169.52, 34.85]
 (* ivl_do_not_elide *) wire net__2315; // loc: [162.615, 39.61]
 (* ivl_do_not_elide *) wire net__2316; // loc: [157.095, 25.67]
 (* ivl_do_not_elide *) wire net__2318; // loc: [156.625, 41.65]
 (* ivl_do_not_elide *) wire net__2321; // loc: [157.095, 23.63]
 (* ivl_do_not_elide *) wire net__2323; // loc: [156.635, 18.19]
 (* ivl_do_not_elide *) wire net__2325; // loc: [155.705, 14.79]
 (* ivl_do_not_elide *) wire net__2329; // loc: [177.83, 20.23]
 (* ivl_do_not_elide *) wire net__2330; // loc: [161.69, 27.71]
 (* ivl_do_not_elide *) wire net__2331; // loc: [151.115, 29.07]
 (* ivl_do_not_elide *) wire net__2332; // loc: [152.485, 28.73]
 (* ivl_do_not_elide *) wire net__2333; // loc: [156.635, 28.73]
 (* ivl_do_not_elide *) wire net__2334; // loc: [158.935, 28.73]
 (* ivl_do_not_elide *) wire net__2337; // loc: [158.005, 25.33]
 (* ivl_do_not_elide *) wire net__2339; // loc: [157.095, 30.77]
 (* ivl_do_not_elide *) wire net__2343; // loc: [175.485, 28.05]
 (* ivl_do_not_elide *) wire net__2352; // loc: [157.09, 39.27]
 (* ivl_do_not_elide *) wire net__2353; // loc: [187.915, 28.73]
 (* ivl_do_not_elide *) wire net__2354; // loc: [160.31, 37.57]
 (* ivl_do_not_elide *) wire net__2355; // loc: [161.695, 35.87]
 (* ivl_do_not_elide *) wire net__2358; // loc: [153.405, 34.17]
 (* ivl_do_not_elide *) wire net__2359; // loc: [163.995, 22.61]
 (* ivl_do_not_elide *) wire net__2360; // loc: [160.765, 12.75]
 (* ivl_do_not_elide *) wire net__2364; // loc: [159.85, 38.59]
 (* ivl_do_not_elide *) wire net__2366; // loc: [160.305, 25.33]
 (* ivl_do_not_elide *) wire net__2373; // loc: [162.61, 25.33]
 (* ivl_do_not_elide *) wire net__2374; // loc: [161.685, 34.51]
 (* ivl_do_not_elide *) wire net__2375; // loc: [165.33, 39.61]
 (* ivl_do_not_elide *) wire net__2376; // loc: [171.35, 15.13]
 (* ivl_do_not_elide *) wire net__2377; // loc: [182.855, 34.85]
 (* ivl_do_not_elide *) wire net__2379; // loc: [158.01, 33.15]
 (* ivl_do_not_elide *) wire net__2381; // loc: [162.155, 33.83]
 (* ivl_do_not_elide *) wire net__2382; // loc: [155.225, 36.21]
 (* ivl_do_not_elide *) wire net__2383; // loc: [183.315, 12.41]
 (* ivl_do_not_elide *) wire net__2384; // loc: [153.405, 23.29]
 (* ivl_do_not_elide *) wire net__2385; // loc: [182.89, 31.11]
 (* ivl_do_not_elide *) wire net__2387; // loc: [155.255, 31.11]
 (* ivl_do_not_elide *) wire net__2393; // loc: [173.69, 23.29]
 (* ivl_do_not_elide *) wire net__2394; // loc: [161.205, 23.63]
 (* ivl_do_not_elide *) wire net__2395; // loc: [153.405, 25.33]
 (* ivl_do_not_elide *) wire net__2396; // loc: [156.625, 19.89]
 (* ivl_do_not_elide *) wire net__2398; // loc: [153.875, 18.19]
 (* ivl_do_not_elide *) wire net__24; // loc: [115.235, 225.25]
 (* ivl_do_not_elide *) wire net__2400; // loc: [150.185, 23.63]
 (* ivl_do_not_elide *) wire net__2401; // loc: [152.035, 25.33]
 (* ivl_do_not_elide *) wire net__2402; // loc: [174.57, 17.85]
 (* ivl_do_not_elide *) wire net__2404; // loc: [153.405, 14.79]
 (* ivl_do_not_elide *) wire net__2407; // loc: [167.21, 24.99]
 (* ivl_do_not_elide *) wire net__2408; // loc: [154.785, 19.89]
 (* ivl_do_not_elide *) wire net__2412; // loc: [162.155, 14.79]
 (* ivl_do_not_elide *) wire net__2413; // loc: [164.455, 14.79]
 (* ivl_do_not_elide *) wire net__2415; // loc: [159.395, 14.45]
 (* ivl_do_not_elide *) wire net__2416; // loc: [163.995, 18.53]
 (* ivl_do_not_elide *) wire net__2418; // loc: [159.855, 12.75]
 (* ivl_do_not_elide *) wire net__2419; // loc: [187.915, 14.45]
 (* ivl_do_not_elide *) wire net__2425; // loc: [162.605, 12.41]
 (* ivl_do_not_elide *) wire net__2426; // loc: [160.77, 19.55]
 (* ivl_do_not_elide *) wire net__2427; // loc: [167.21, 13.09]
 (* ivl_do_not_elide *) wire net__2430; // loc: [158.475, 18.19]
 (* ivl_do_not_elide *) wire net__2438; // loc: [159.85, 23.63]
 (* ivl_do_not_elide *) wire net__2442; // loc: [182.385, 18.53]
 (* ivl_do_not_elide *) wire net__2443; // loc: [187.91, 23.63]
 (* ivl_do_not_elide *) wire net__2457; // loc: [176.91, 39.61]
 (* ivl_do_not_elide *) wire net__2459; // loc: [176.895, 23.63]
 (* ivl_do_not_elide *) wire net__2463; // loc: [183.31, 27.71]
 (* ivl_do_not_elide *) wire net__2466; // loc: [178.705, 13.09]
 (* ivl_do_not_elide *) wire net__2470; // loc: [187.455, 12.75]
 (* ivl_do_not_elide *) wire net__2474; // loc: [178.705, 22.61]
 (* ivl_do_not_elide *) wire net__2476; // loc: [181.925, 29.41]
 (* ivl_do_not_elide *) wire net__2479; // loc: [180.09, 15.81]
 (* ivl_do_not_elide *) wire net__2480; // loc: [181.005, 35.87]
 (* ivl_do_not_elide *) wire net__2483; // loc: [184.235, 23.63]
 (* ivl_do_not_elide *) wire net__2486; // loc: [170.885, 14.11]
 (* ivl_do_not_elide *) wire net__2491; // loc: [186.065, 39.95]
 (* ivl_do_not_elide *) wire net__2499; // loc: [188.375, 39.95]
 (* ivl_do_not_elide *) wire net__25; // loc: [111.545, 219.47]
 (* ivl_do_not_elide *) wire net__2500; // loc: [180.545, 26.35]
 (* ivl_do_not_elide *) wire net__2501; // loc: [180.545, 41.31]
 (* ivl_do_not_elide *) wire net__2503; // loc: [186.99, 18.19]
 (* ivl_do_not_elide *) wire net__2505; // loc: [180.545, 34.17]
 (* ivl_do_not_elide *) wire net__2508; // loc: [186.065, 30.43]
 (* ivl_do_not_elide *) wire net__2511; // loc: [176.87, 18.19]
 (* ivl_do_not_elide *) wire net__2512; // loc: [184.695, 19.55]
 (* ivl_do_not_elide *) wire net__253; // loc: [123.965, 235.45]
 (* ivl_do_not_elide *) wire net__2551; // loc: [174.105, 15.47]
 (* ivl_do_not_elide *) wire net__2552; // loc: [183.765, 12.75]
 (* ivl_do_not_elide *) wire net__2553; // loc: [173.65, 25.67]
 (* ivl_do_not_elide *) wire net__2559; // loc: [175.045, 13.09]
 (* ivl_do_not_elide *) wire net__256; // loc: [122.125, 235.79]
 (* ivl_do_not_elide *) wire net__2560; // loc: [184.225, 14.45]
 (* ivl_do_not_elide *) wire net__2571; // loc: [181.015, 14.45]
 (* ivl_do_not_elide *) wire net__302; // loc: [125.815, 281.01]
 (* ivl_do_not_elide *) wire net__311; // loc: [126.735, 286.45]
 (* ivl_do_not_elide *) wire net__316; // loc: [117.985, 269.79]
 (* ivl_do_not_elide *) wire net__330; // loc: [112.475, 280.67]
 (* ivl_do_not_elide *) wire net__345; // loc: [106.025, 286.11]
 (* ivl_do_not_elide *) wire net__351; // loc: [109.715, 284.75]
 (* ivl_do_not_elide *) wire net__356; // loc: [115.23, 281.69]
 (* ivl_do_not_elide *) wire net__366; // loc: [111.545, 273.87]
 (* ivl_do_not_elide *) wire net__367; // loc: [116.605, 268.09]
 (* ivl_do_not_elide *) wire net__372; // loc: [115.695, 268.43]
 (* ivl_do_not_elide *) wire net__374; // loc: [110.165, 279.31]
 (* ivl_do_not_elide *) wire net__377; // loc: [110.635, 275.23]
 (* ivl_do_not_elide *) wire net__396; // loc: [117.535, 262.99]
 (* ivl_do_not_elide *) wire net__400; // loc: [108.785, 257.89]
 (* ivl_do_not_elide *) wire net__420; // loc: [115.685, 262.99]
 (* ivl_do_not_elide *) wire net__435; // loc: [108.33, 235.11]
 (* ivl_do_not_elide *) wire net__436; // loc: [110.635, 235.79]
 (* ivl_do_not_elide *) wire net__453; // loc: [114.765, 246.67]
 (* ivl_do_not_elide *) wire net__465; // loc: [115.235, 241.57]
 (* ivl_do_not_elide *) wire net__475; // loc: [123.515, 237.49]
 (* ivl_do_not_elide *) wire net__488; // loc: [110.635, 231.71]
 (* ivl_do_not_elide *) wire net__489; // loc: [115.235, 230.69]
 (* ivl_do_not_elide *) wire net__50; // loc: [168.125, 254.15]
 (* ivl_do_not_elide *) wire net__505; // loc: [120.755, 221.17]
 (* ivl_do_not_elide *) wire net__515; // loc: [125.815, 232.05]
 (* ivl_do_not_elide *) wire net__519; // loc: [119.365, 227.97]
 (* ivl_do_not_elide *) wire net__527; // loc: [125.345, 252.11]
 (* ivl_do_not_elide *) wire net__531; // loc: [127.195, 248.03]
 (* ivl_do_not_elide *) wire net__552; // loc: [114.765, 186.83]
 (* ivl_do_not_elide *) wire net__564; // loc: [123.965, 216.07]
 (* ivl_do_not_elide *) wire net__565; // loc: [114.765, 207.23]
 (* ivl_do_not_elide *) wire net__567; // loc: [109.71, 216.41]
 (* ivl_do_not_elide *) wire net__568; // loc: [125.355, 214.03]
 (* ivl_do_not_elide *) wire net__574; // loc: [111.545, 199.41]
 (* ivl_do_not_elide *) wire net__577; // loc: [112.475, 203.49]
 (* ivl_do_not_elide *) wire net__579; // loc: [119.825, 203.49]
 (* ivl_do_not_elide *) wire net__589; // loc: [112.465, 214.37]
 (* ivl_do_not_elide *) wire net__594; // loc: [112.475, 209.95]
 (* ivl_do_not_elide *) wire net__595; // loc: [114.305, 210.29]
 (* ivl_do_not_elide *) wire net__615; // loc: [109.25, 210.97]
 (* ivl_do_not_elide *) wire net__618; // loc: [117.525, 199.75]
 (* ivl_do_not_elide *) wire net__620; // loc: [116.615, 203.15]
 (* ivl_do_not_elide *) wire net__643; // loc: [120.755, 192.27]
 (* ivl_do_not_elide *) wire net__648; // loc: [119.825, 188.19]
 (* ivl_do_not_elide *) wire net__673; // loc: [120.755, 150.45]
 (* ivl_do_not_elide *) wire net__679; // loc: [167.71, 191.93]
 (* ivl_do_not_elide *) wire net__68; // loc: [170.435, 276.59]
 (* ivl_do_not_elide *) wire net__681; // loc: [167.185, 203.15]
 (* ivl_do_not_elide *) wire net__685; // loc: [168.135, 170.51]
 (* ivl_do_not_elide *) wire net__688; // loc: [164.445, 172.21]
 (* ivl_do_not_elide *) wire net__704; // loc: [155.255, 183.43]
 (* ivl_do_not_elide *) wire net__707; // loc: [187.475, 192.61]
 (* ivl_do_not_elide *) wire net__708; // loc: [159.365, 197.71]
 (* ivl_do_not_elide *) wire net__709; // loc: [164.445, 202.81]
 (* ivl_do_not_elide *) wire net__718; // loc: [151.565, 183.09]
 (* ivl_do_not_elide *) wire net__721; // loc: [158.465, 183.09]
 (* ivl_do_not_elide *) wire net__726; // loc: [174.105, 182.75]
 (* ivl_do_not_elide *) wire net__729; // loc: [187.935, 182.75]
 (* ivl_do_not_elide *) wire net__731; // loc: [168.63, 186.49]
 (* ivl_do_not_elide *) wire net__735; // loc: [171.35, 205.19]
 (* ivl_do_not_elide *) wire net__740; // loc: [178.71, 201.79]
 (* ivl_do_not_elide *) wire net__745; // loc: [169.515, 204.85]
 (* ivl_do_not_elide *) wire net__747; // loc: [177.785, 204.85]
 (* ivl_do_not_elide *) wire net__758; // loc: [178.21, 186.49]
 (* ivl_do_not_elide *) wire net__771; // loc: [172.73, 199.75]
 (* ivl_do_not_elide *) wire net__773; // loc: [183.77, 175.61]
 (* ivl_do_not_elide *) wire net__8; // loc: [165.81, 245.31]
 (* ivl_do_not_elide *) wire net__811; // loc: [156.635, 192.27]
 (* ivl_do_not_elide *) wire net__815; // loc: [152.945, 191.93]
 (* ivl_do_not_elide *) wire net__822; // loc: [178.21, 181.05]
 (* ivl_do_not_elide *) wire net__834; // loc: [163.985, 188.19]
 (* ivl_do_not_elide *) wire net__841; // loc: [161.205, 193.63]
 (* ivl_do_not_elide *) wire net__850; // loc: [151.565, 188.53]
 (* ivl_do_not_elide *) wire net__851; // loc: [160.775, 172.21]
 (* ivl_do_not_elide *) wire net__854; // loc: [173.19, 193.97]
 (* ivl_do_not_elide *) wire net__860; // loc: [175.03, 186.15]
 (* ivl_do_not_elide *) wire net__862; // loc: [169.01, 186.49]
 (* ivl_do_not_elide *) wire net__867; // loc: [158.015, 193.63]
 (* ivl_do_not_elide *) wire net__87; // loc: [176.865, 278.29]
 (* ivl_do_not_elide *) wire net__876; // loc: [156.635, 188.53]
 (* ivl_do_not_elide *) wire net__882; // loc: [183.81, 197.37]
 (* ivl_do_not_elide *) wire net__884; // loc: [169.515, 167.11]
 (* ivl_do_not_elide *) wire net__885; // loc: [166.295, 170.51]
 (* ivl_do_not_elide *) wire net__886; // loc: [154.79, 178.33]
 (* ivl_do_not_elide *) wire net__889; // loc: [162.65, 186.49]
 (* ivl_do_not_elide *) wire net__890; // loc: [155.705, 193.97]
 (* ivl_do_not_elide *) wire net__893; // loc: [186.535, 198.05]
 (* ivl_do_not_elide *) wire net__897; // loc: [186.075, 186.49]
 (* ivl_do_not_elide *) wire net__902; // loc: [174.545, 169.15]
 (* ivl_do_not_elide *) wire net__904; // loc: [165.825, 204.85]
 (* ivl_do_not_elide *) wire net__907; // loc: [182.39, 188.87]
 (* ivl_do_not_elide *) wire net__908; // loc: [182.85, 188.87]
 (* ivl_do_not_elide *) wire net__912; // loc: [184.215, 193.63]
 (* ivl_do_not_elide *) wire net__93; // loc: [168.595, 281.01]
 (* ivl_do_not_elide *) wire net__930; // loc: [158.905, 177.65]
 (* ivl_do_not_elide *) wire net__931; // loc: [149.725, 186.83]
 (* ivl_do_not_elide *) wire net__932; // loc: [153.845, 186.83]
 (* ivl_do_not_elide *) wire net__938; // loc: [155.735, 188.53]
 (* ivl_do_not_elide *) wire net__945; // loc: [162.155, 199.07]
 (* ivl_do_not_elide *) wire net__948; // loc: [162.11, 197.37]
 (* ivl_do_not_elide *) wire net__953; // loc: [162.11, 181.05]
 (* ivl_do_not_elide *) wire net__955; // loc: [158.905, 192.27]
 (* ivl_do_not_elide *) wire net__957; // loc: [164.445, 175.27]
 (* ivl_do_not_elide *) wire net__958; // loc: [187.015, 177.65]
 (* ivl_do_not_elide *) wire net__959; // loc: [180.095, 170.51]
 (* ivl_do_not_elide *) wire net__979; // loc: [166.29, 172.89]
 (* ivl_do_not_elide *) wire net__980; // loc: [162.145, 170.17]
 (* ivl_do_not_elide *) wire net__989; // loc: [168.125, 177.65]
 (* ivl_do_not_elide *) wire net__991; // loc: [155.705, 180.03]
 (* ivl_do_not_elide *) wire net__998; // loc: [176.91, 175.61]
 (* ivl_do_not_elide *) wire next_char_cnt_0; // loc: [27.375, 155.89]
 (* ivl_do_not_elide *) wire next_char_cnt_1; // loc: [35.63, 152.83]
 (* ivl_do_not_elide *) wire next_char_cnt_3; // loc: [29.675, 162.01]
 (* ivl_do_not_elide *) wire next_outputting; // loc: [31.055, 204.85]
 (* ivl_do_not_elide *) wire next_row_cnt_1; // loc: [39.795, 102.51]
 (* ivl_do_not_elide *) wire next_row_cnt_2; // loc: [32.89, 104.89]
 (* ivl_do_not_elide *) wire num_in_all_rows_2; // loc: [79.81, 93.67]
 (* ivl_do_not_elide *) wire op_show_star; // loc: [171.835, 212.67]
 (* ivl_do_not_elide *) wire op_show_tnt; // loc: [169.485, 217.09]
 (* ivl_do_not_elide *) wire out_char_0; // loc: [176.865, 226.61]
 (* ivl_do_not_elide *) wire out_char_1; // loc: [170.885, 224.91]
 (* ivl_do_not_elide *) wire out_char_2; // loc: [173.195, 219.47]
 (* ivl_do_not_elide *) wire out_char_3; // loc: [174.565, 224.91]
 (* ivl_do_not_elide *) wire out_char_4; // loc: [171.805, 221.17]
 (* ivl_do_not_elide *) wire out_char_5; // loc: [173.195, 221.17]
 (* ivl_do_not_elide *) wire out_char_6; // loc: [178.715, 219.47]
 (* ivl_do_not_elide *) wire out_char_7; // loc: [176.875, 215.73]
 (* ivl_do_not_elide *) wire output_chars_valid; // loc: [172.73, 258.91]
 (* ivl_do_not_elide *) wire outputting_01234_8_a_e; // loc: [178.25, 191.93]
 (* ivl_do_not_elide *) wire outputting_6_or_b; // loc: [160.31, 174.59]
 (* ivl_do_not_elide *) wire outputting_cnt_lt_15; // loc: [176.865, 248.71]
 (* ivl_do_not_elide *) wire row_cnt_0_xor_rc1; // loc: [166.29, 28.73]
 (* ivl_do_not_elide *) wire show_bb_char0; // loc: [174.105, 145.01]
 (* ivl_do_not_elide *) wire show_bb_char1; // loc: [168.585, 149.09]
 (* ivl_do_not_elide *) wire show_bb_char2; // loc: [171.345, 147.73]
 (* ivl_do_not_elide *) wire show_bb_char3; // loc: [175.03, 153.85]
 (* ivl_do_not_elide *) wire show_bb_char5; // loc: [175.03, 148.07]
 (* ivl_do_not_elide *) wire show_bb_char6; // loc: [174.57, 157.25]
 (* ivl_do_not_elide *) wire show_bb_es_char0; // loc: [176.895, 230.35]
 (* ivl_do_not_elide *) wire show_bb_es_char1; // loc: [167.185, 226.61]
 (* ivl_do_not_elide *) wire show_bb_es_char2; // loc: [164.885, 224.91]
 (* ivl_do_not_elide *) wire show_bb_es_char3; // loc: [173.215, 232.05]
 (* ivl_do_not_elide *) wire show_bb_es_char4; // loc: [170.865, 226.61]
 (* ivl_do_not_elide *) wire show_bb_es_char5; // loc: [173.215, 230.35]
 (* ivl_do_not_elide *) wire show_bb_es_char6; // loc: [181.035, 224.91]
 (* ivl_do_not_elide *) wire show_bb_es_char7; // loc: [179.195, 221.17]
 (* ivl_do_not_elide *) wire show_big_bang; // loc: [90.39, 53.21]
 (* ivl_do_not_elide *) wire show_empty_sky; // loc: [89.47, 41.99]
 (* ivl_do_not_elide *) wire show_es_char0; // loc: [168.59, 130.05]
 (* ivl_do_not_elide *) wire show_es_char1; // loc: [170.435, 134.81]
 (* ivl_do_not_elide *) wire show_es_char2; // loc: [175.005, 128.69]
 (* ivl_do_not_elide *) wire show_es_char3; // loc: [171.355, 132.43]
 (* ivl_do_not_elide *) wire show_es_char4; // loc: [171.345, 140.59]
 (* ivl_do_not_elide *) wire show_es_char5; // loc: [169.965, 134.81]
 (* ivl_do_not_elide *) wire show_es_char6; // loc: [174.575, 143.65]
 (* ivl_do_not_elide *) wire show_star_char0; // loc: [170.93, 175.61]
 (* ivl_do_not_elide *) wire show_star_char1; // loc: [164.49, 183.43]
 (* ivl_do_not_elide *) wire show_star_char2; // loc: [178.67, 177.99]
 (* ivl_do_not_elide *) wire show_star_char3; // loc: [173.19, 172.55]
 (* ivl_do_not_elide *) wire show_star_char4; // loc: [170.89, 183.43]
 (* ivl_do_not_elide *) wire show_star_char5; // loc: [175.95, 202.81]
 (* ivl_do_not_elide *) wire show_star_char6; // loc: [170.93, 194.31]
 (* ivl_do_not_elide *) wire show_star_char7; // loc: [172.77, 172.55]
 (* ivl_do_not_elide *) wire show_ta_char0; // loc: [172.715, 111.01]
 (* ivl_do_not_elide *) wire show_ta_char1; // loc: [173.645, 106.59]
 (* ivl_do_not_elide *) wire show_ta_char2; // loc: [171.805, 110.67]
 (* ivl_do_not_elide *) wire show_ta_char3; // loc: [175.495, 117.47]
 (* ivl_do_not_elide *) wire show_ta_char4; // loc: [171.79, 119.17]
 (* ivl_do_not_elide *) wire show_ta_char5; // loc: [172.265, 115.09]
 (* ivl_do_not_elide *) wire show_ta_char6; // loc: [180.09, 116.11]
 (* ivl_do_not_elide *) wire show_ta_char_masked0; // loc: [168.13, 208.59]
 (* ivl_do_not_elide *) wire show_ta_char_masked1; // loc: [178.71, 208.59]
 (* ivl_do_not_elide *) wire show_ta_char_masked2; // loc: [178.71, 210.29]
 (* ivl_do_not_elide *) wire show_ta_char_masked3; // loc: [167.21, 215.73]
 (* ivl_do_not_elide *) wire show_ta_char_masked4; // loc: [162.61, 210.29]
 (* ivl_do_not_elide *) wire show_ta_char_masked5; // loc: [182.85, 214.03]
 (* ivl_do_not_elide *) wire show_ta_char_masked6; // loc: [181.93, 215.73]
 (* ivl_do_not_elide *) wire show_ta_char_masked7; // loc: [180.09, 214.03]
 (* ivl_do_not_elide *) wire show_tnt_char0; // loc: [171.81, 96.39]
 (* ivl_do_not_elide *) wire show_tnt_char1; // loc: [173.655, 85.17]
 (* ivl_do_not_elide *) wire show_tnt_char2; // loc: [170.43, 100.13]
 (* ivl_do_not_elide *) wire show_tnt_char3; // loc: [173.69, 94.01]
 (* ivl_do_not_elide *) wire show_tnt_char4; // loc: [173.655, 88.57]
 (* ivl_do_not_elide *) wire show_tnt_char5; // loc: [173.655, 101.49]
 (* ivl_do_not_elide *) wire show_tnt_char6; // loc: [171.795, 100.13]
 (* ivl_do_not_elide *) wire show_tnt_or_star_char0; // loc: [165.805, 214.03]
 (* ivl_do_not_elide *) wire show_tnt_or_star_char1; // loc: [167.645, 210.29]
 (* ivl_do_not_elide *) wire show_tnt_or_star_char2; // loc: [177.355, 210.29]
 (* ivl_do_not_elide *) wire show_tnt_or_star_char3; // loc: [175.515, 215.73]
 (* ivl_do_not_elide *) wire show_tnt_or_star_char4; // loc: [171.325, 210.29]
 (* ivl_do_not_elide *) wire show_tnt_or_star_char5; // loc: [176.435, 214.03]
 (* ivl_do_not_elide *) wire show_tnt_or_star_char6; // loc: [171.835, 208.59]
 (* ivl_do_not_elide *) wire show_tnt_or_star_char7; // loc: [175.515, 208.59]
 (* ivl_do_not_elide *) wire show_try_again; // loc: [164.455, 214.03]
 (* ivl_do_not_elide *) wire succ_cond2; // loc: [173.19, 269.79]
 (* ivl_do_not_elide *) wire succ_cond3; // loc: [172.265, 279.65]
 (* ivl_do_not_elide *) wire succ_lat; // loc: [170.425, 281.01]
 (* ivl_do_not_elide *) wire total_inky_cnt_22; // loc: [80.265, 39.95]
 (* ivl_do_not_elide *) wire two_have_touched; // loc: [175.03, 276.25]
 (* ivl_do_not_elide *) wire two_in_each_group; // loc: [79.35, 26.01]
 (* ivl_do_not_elide *) wire two_in_grp_A; // loc: [108.765, 78.03]
 (* ivl_do_not_elide *) wire two_in_grp_B; // loc: [110.605, 139.57]
 (* ivl_do_not_elide *) wire two_in_grp_C; // loc: [112.93, 83.81]
 (* ivl_do_not_elide *) wire two_in_grp_D; // loc: [121.185, 101.49]
 (* ivl_do_not_elide *) wire two_in_grp_F; // loc: [111.09, 128.35]
 (* ivl_do_not_elide *) wire two_in_grp_G; // loc: [116.585, 150.45]
 (* ivl_do_not_elide *) wire two_in_grp_J; // loc: [121.185, 52.53]
 (* ivl_do_not_elide *) wire two_in_grp_N; // loc: [109.71, 100.13]
 (* ivl_do_not_elide *) wire two_in_grp_S; // loc: [120.265, 121.55]
 (* ivl_do_not_elide *) wire two_in_grp_ST; // loc: [111.09, 63.07]
 (* ivl_do_not_elide *) wire two_in_grp_T; // loc: [116.585, 112.37]
 (* ivl_do_not_elide *) wire two_never_touched; // loc: [85.33, 145.69]
 (* ivl_do_not_elide *) wire two_touch_left_right; // loc: [83.925, 161.33]
 

//// Partition 
 
//// Inputs
//clk
 
//// Outputs
//clk2
//clk3_1
//clk3_2
assign clk2 = (clk); // loc: [113.39, 164.05]
assign clk3_1 = (clk2); // loc: [86.71, 77.35]
assign clk3_2 = (clk2); // loc: [98.21, 74.97]
assign clk4_1 = (clk3_1); // loc: [85.79, 77.35]
assign clk4_2 = (clk3_2); // loc: [100.05, 71.91]
 

//// Partition Count Cols
 
//// Inputs
//clk3_6
//input_unmasked
//rst_n
 
//// Outputs
//col_cnt_0
//col_cnt_1
//col_cnt_2
//col_cnt_3
//last_in_row
    // loc: [35.185, 151.81]
    always @(posedge clk3_6 or negedge rst_n)
        if (!rst_n) col_cnt_0 <= 0;
        else               col_cnt_0 <= next_char_cnt_0; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic col_cnt_0_changed;
                 always @(posedge clk3_6 or negedge rst_n)
                     if (!rst_n) col_cnt_0_changed <= 0;
                     else if (!enable && !col_cnt_0_changed) col_cnt_0_changed <= (col_cnt_0 != next_char_cnt_0);
                 p_col_cnt_0_never_changed: assert property ( !col_cnt_0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic col_cnt_0_changed;
                 always @(posedge clk3_6 or negedge rst_n)
                     if (!rst_n) col_cnt_0_changed <= 0;
                     else if (!col_cnt_0_changed) col_cnt_0_changed <= (col_cnt_0 != next_char_cnt_0);
                 p_col_cnt_0_never_changed: assert property ( outputting_cnt_lt_15 || !col_cnt_0_changed);
 `endif
 
    
    // loc: [39.785, 147.39]
    always @(posedge clk3_6 or negedge rst_n)
        if (!rst_n) col_cnt_1 <= 0;
        else               col_cnt_1 <= next_char_cnt_1; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic col_cnt_1_changed;
                 always @(posedge clk3_6 or negedge rst_n)
                     if (!rst_n) col_cnt_1_changed <= 0;
                     else if (!enable && !col_cnt_1_changed) col_cnt_1_changed <= (col_cnt_1 != next_char_cnt_1);
                 p_col_cnt_1_never_changed: assert property ( !col_cnt_1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic col_cnt_1_changed;
                 always @(posedge clk3_6 or negedge rst_n)
                     if (!rst_n) col_cnt_1_changed <= 0;
                     else if (!col_cnt_1_changed) col_cnt_1_changed <= (col_cnt_1 != next_char_cnt_1);
                 p_col_cnt_1_never_changed: assert property ( outputting_cnt_lt_15 || !col_cnt_1_changed);
 `endif
 
    
    // loc: [26.915, 146.37]
    always @(posedge clk3_6 or negedge rst_n)
        if (!rst_n) col_cnt_2 <= 0;
        else               col_cnt_2 <= net__1426; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic col_cnt_2_changed;
                 always @(posedge clk3_6 or negedge rst_n)
                     if (!rst_n) col_cnt_2_changed <= 0;
                     else if (!enable && !col_cnt_2_changed) col_cnt_2_changed <= (col_cnt_2 != net__1426);
                 p_col_cnt_2_never_changed: assert property ( !col_cnt_2_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic col_cnt_2_changed;
                 always @(posedge clk3_6 or negedge rst_n)
                     if (!rst_n) col_cnt_2_changed <= 0;
                     else if (!col_cnt_2_changed) col_cnt_2_changed <= (col_cnt_2 != net__1426);
                 p_col_cnt_2_never_changed: assert property ( outputting_cnt_lt_15 || !col_cnt_2_changed);
 `endif
 
    
    // loc: [37.945, 158.27]
    always @(posedge clk3_6 or negedge rst_n)
        if (!rst_n) col_cnt_3 <= 0;
        else               col_cnt_3 <= next_char_cnt_3; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic col_cnt_3_changed;
                 always @(posedge clk3_6 or negedge rst_n)
                     if (!rst_n) col_cnt_3_changed <= 0;
                     else if (!enable && !col_cnt_3_changed) col_cnt_3_changed <= (col_cnt_3 != next_char_cnt_3);
                 p_col_cnt_3_never_changed: assert property ( !col_cnt_3_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic col_cnt_3_changed;
                 always @(posedge clk3_6 or negedge rst_n)
                     if (!rst_n) col_cnt_3_changed <= 0;
                     else if (!col_cnt_3_changed) col_cnt_3_changed <= (col_cnt_3 != next_char_cnt_3);
                 p_col_cnt_3_never_changed: assert property ( outputting_cnt_lt_15 || !col_cnt_3_changed);
 `endif
 
    
assign last_in_row = (!col_cnt_0&!col_cnt_2&col_cnt_3&col_cnt_1); // loc: [24.615, 153.17]
assign net__1126 = !(col_cnt_0 ^ input_unmasked); // loc: [28.25, 153.85]
assign net__1137 = (!col_cnt_1&!col_cnt_3) | (!col_cnt_0&!col_cnt_3) | (!col_cnt_2&!col_cnt_3) | (!input_unmasked&!col_cnt_3); // loc: [28.29, 156.91]
assign net__1138 = (col_cnt_1&col_cnt_0&col_cnt_2&input_unmasked); // loc: [30.125, 148.75]
assign net__1148 = (col_cnt_1&col_cnt_0&input_unmasked); // loc: [24.61, 148.07]
assign net__1150 = (!col_cnt_0&!col_cnt_1) | (!input_unmasked&!col_cnt_1); // loc: [37.03, 151.81]
assign net__1426 = col_cnt_2 ^ net__1148; // loc: [34.73, 142.97]
assign next_char_cnt_0 = (!last_in_row&!net__1126); // loc: [27.375, 155.89]
assign next_char_cnt_1 = (!input_unmasked&!net__1150&!net__1148) | (!last_in_row&!net__1150&!net__1148); // loc: [35.63, 152.83]
assign next_char_cnt_3 = (!input_unmasked&!net__1138&!net__1137) | (!input_unmasked&!col_cnt_3&!net__1137) | (!last_in_row&!net__1138&!net__1137) | (!last_in_row&!col_cnt_3&!net__1137); // loc: [29.675, 162.01]
 

//// Partition Count Rows
 
//// Inputs
//clk3_1
//clk3_4
//input_unmasked
//last_in_row
//rst_n
 
//// Outputs
//last_row
//row_cnt_0
//row_cnt_1
//row_cnt_2
//row_cnt_3
assign Nlast_row = (row_cnt_2) | (!row_cnt_3) | (!row_cnt_1); // loc: [33.835, 101.83]
assign last_row = (!row_cnt_0&!Nlast_row); // loc: [31.515, 94.35]
assign net__1405 = (!row_cnt_2) | (!row_cnt_3) | (!net__1450); // loc: [32.885, 107.27]
assign net__1443 = (last_in_row&input_unmasked&Nlast_row); // loc: [30.59, 96.73]
assign net__1450 = (last_in_row&input_unmasked&row_cnt_1&row_cnt_0); // loc: [29.205, 101.49]
assign net__1455 = (row_cnt_2&net__1450) | (row_cnt_3); // loc: [27.375, 106.59]
assign net__1461 = (row_cnt_0&net__1405&net__1455) | (Nlast_row&net__1405&net__1455) | (net__1466&net__1405&net__1455); // loc: [34.725, 96.73]
assign net__1463 = (last_in_row&input_unmasked&row_cnt_0) | (row_cnt_1); // loc: [28.745, 99.79]
assign net__1466 = (!last_in_row) | (!input_unmasked); // loc: [38.865, 99.45]
assign net__1472 = row_cnt_0 ? net__1466 : net__1443; // loc: [40.245, 95.71]
assign net__1486 = (!net__1450); // loc: [34.27, 107.61]
assign next_row_cnt_1 = (Nlast_row&net__1463&net__1486) | (net__1466&net__1463&net__1486); // loc: [39.795, 102.51]
assign next_row_cnt_2 = row_cnt_2 ^ net__1450; // loc: [32.89, 104.89]
    // loc: [32.895, 92.99]
    always @(posedge clk3_1 or negedge rst_n)
        if (!rst_n) row_cnt_0 <= 0;
        else               row_cnt_0 <= net__1472; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic row_cnt_0_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) row_cnt_0_changed <= 0;
                     else if (!enable && !row_cnt_0_changed) row_cnt_0_changed <= (row_cnt_0 != net__1472);
                 p_row_cnt_0_never_changed: assert property ( !row_cnt_0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic row_cnt_0_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) row_cnt_0_changed <= 0;
                     else if (!row_cnt_0_changed) row_cnt_0_changed <= (row_cnt_0 != net__1472);
                 p_row_cnt_0_never_changed: assert property ( outputting_cnt_lt_15 || !row_cnt_0_changed);
 `endif
 
    
    // loc: [33.815, 103.87]
    always @(posedge clk3_4 or negedge rst_n)
        if (!rst_n) row_cnt_1 <= 0;
        else               row_cnt_1 <= next_row_cnt_1; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic row_cnt_1_changed;
                 always @(posedge clk3_4 or negedge rst_n)
                     if (!rst_n) row_cnt_1_changed <= 0;
                     else if (!enable && !row_cnt_1_changed) row_cnt_1_changed <= (row_cnt_1 != next_row_cnt_1);
                 p_row_cnt_1_never_changed: assert property ( !row_cnt_1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic row_cnt_1_changed;
                 always @(posedge clk3_4 or negedge rst_n)
                     if (!rst_n) row_cnt_1_changed <= 0;
                     else if (!row_cnt_1_changed) row_cnt_1_changed <= (row_cnt_1 != next_row_cnt_1);
                 p_row_cnt_1_never_changed: assert property ( outputting_cnt_lt_15 || !row_cnt_1_changed);
 `endif
 
    
    // loc: [37.945, 109.31]
    always @(posedge clk3_4 or negedge rst_n)
        if (!rst_n) row_cnt_2 <= 0;
        else               row_cnt_2 <= next_row_cnt_2; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic row_cnt_2_changed;
                 always @(posedge clk3_4 or negedge rst_n)
                     if (!rst_n) row_cnt_2_changed <= 0;
                     else if (!enable && !row_cnt_2_changed) row_cnt_2_changed <= (row_cnt_2 != next_row_cnt_2);
                 p_row_cnt_2_never_changed: assert property ( !row_cnt_2_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic row_cnt_2_changed;
                 always @(posedge clk3_4 or negedge rst_n)
                     if (!rst_n) row_cnt_2_changed <= 0;
                     else if (!row_cnt_2_changed) row_cnt_2_changed <= (row_cnt_2 != next_row_cnt_2);
                 p_row_cnt_2_never_changed: assert property ( outputting_cnt_lt_15 || !row_cnt_2_changed);
 `endif
 
    
    // loc: [37.945, 98.43]
    always @(posedge clk3_4 or negedge rst_n)
        if (!rst_n) row_cnt_3 <= 0;
        else               row_cnt_3 <= net__1461; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic row_cnt_3_changed;
                 always @(posedge clk3_4 or negedge rst_n)
                     if (!rst_n) row_cnt_3_changed <= 0;
                     else if (!enable && !row_cnt_3_changed) row_cnt_3_changed <= (row_cnt_3 != net__1461);
                 p_row_cnt_3_never_changed: assert property ( !row_cnt_3_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic row_cnt_3_changed;
                 always @(posedge clk3_4 or negedge rst_n)
                     if (!rst_n) row_cnt_3_changed <= 0;
                     else if (!row_cnt_3_changed) row_cnt_3_changed <= (row_cnt_3 != net__1461);
                 p_row_cnt_3_never_changed: assert property ( outputting_cnt_lt_15 || !row_cnt_3_changed);
 `endif
 
    
 

//// Partition Output logic non-star messages
 
//// Inputs
//outputting_cnt_0
//outputting_cnt_1
//outputting_cnt_2
//outputting_cnt_3
 
//// Outputs
//hi
//lo
//show_bb_char0
//show_bb_char1
//show_bb_char2
//show_bb_char3
//show_bb_char5
//show_bb_char6
//show_es_char0
//show_es_char1
//show_es_char2
//show_es_char3
//show_es_char4
//show_es_char5
//show_es_char6
//show_ta_char0
//show_ta_char1
//show_ta_char2
//show_ta_char3
//show_ta_char4
//show_ta_char5
//show_ta_char6
//show_tnt_char0
//show_tnt_char1
//show_tnt_char2
//show_tnt_char3
//show_tnt_char4
//show_tnt_char5
//show_tnt_char6
assign hi = 1; // loc: [166.02, 85.83]
assign hi = 1; // loc: [166.02, 85.83]
assign hi = 1; // loc: [166.02, 85.83]
assign hi = 1; // loc: [166.02, 85.83]
assign hi = 1; // loc: [166.02, 85.83]
assign lo = 0; // loc: [166.655, 85.51]
assign lo = 0; // loc: [166.655, 85.51]
assign lo = 0; // loc: [166.655, 85.51]
assign lo = 0; // loc: [166.655, 85.51]
assign lo = 0; // loc: [166.655, 85.51]
assign net__1079 = (!outputting_cnt_0&!outputting_cnt_2&outputting_cnt_1); // loc: [174.135, 151.81]
assign net__1083 = (!outputting_cnt_2&outputting_cnt_1); // loc: [176.385, 150.45]
assign net__1088 = (!outputting_cnt_0&!outputting_cnt_1); // loc: [171.355, 155.89]
assign net__1090 = (!outputting_cnt_1&outputting_cnt_0); // loc: [170.455, 150.45]
assign net__1093 = (outputting_cnt_0&outputting_cnt_1&outputting_cnt_2); // loc: [171.81, 153.51]
assign net__1096 = (!outputting_cnt_0); // loc: [171.81, 158.95]
assign net__1677 = (!outputting_cnt_0&!outputting_cnt_1); // loc: [167.215, 94.35]
assign net__1685 = (!outputting_cnt_3&outputting_cnt_2&outputting_cnt_1&outputting_cnt_0); // loc: [176.865, 116.45]
assign net__1686 = (!outputting_cnt_3&!net__1692); // loc: [167.215, 132.43]
assign net__1691 = (outputting_cnt_1&net__1738); // loc: [167.67, 89.25]
assign net__1692 = (!outputting_cnt_1&outputting_cnt_0); // loc: [171.785, 128.69]
assign net__1693 = (!outputting_cnt_0&!outputting_cnt_2) | (!outputting_cnt_3&!outputting_cnt_2); // loc: [170.43, 131.07]
assign net__1694 = (!outputting_cnt_0&!outputting_cnt_3) | (!outputting_cnt_1&!outputting_cnt_3); // loc: [179.17, 113.73]
assign net__1696 = (!outputting_cnt_0) | (!net__1703); // loc: [179.175, 134.47]
assign net__1703 = (outputting_cnt_2) | (outputting_cnt_3); // loc: [168.595, 137.87]
assign net__1708 = outputting_cnt_2 ? outputting_cnt_3 : outputting_cnt_1; // loc: [169.055, 138.21]
assign net__1709 = (!outputting_cnt_1&!outputting_cnt_2) | (!outputting_cnt_3); // loc: [175.035, 137.87]
assign net__1715 = (!outputting_cnt_3); // loc: [175.49, 145.69]
assign net__1720 = (outputting_cnt_0) | (!outputting_cnt_1); // loc: [175.485, 134.13]
assign net__1731 = (!outputting_cnt_0&!outputting_cnt_1&!outputting_cnt_2&outputting_cnt_3); // loc: [175.03, 112.71]
assign net__1737 = (net__1738&net__1783) | (outputting_cnt_1); // loc: [166.755, 90.27]
assign net__1738 = (outputting_cnt_0) | (!outputting_cnt_2); // loc: [175.485, 94.35]
assign net__1743 = (outputting_cnt_2) | (!outputting_cnt_3); // loc: [179.625, 96.05]
assign net__1746 = (!outputting_cnt_2&!net__1677&!net__1780); // loc: [174.545, 96.39]
assign net__1748 = (!outputting_cnt_2&outputting_cnt_0); // loc: [170.915, 88.91]
assign net__1754 = (!outputting_cnt_1&!outputting_cnt_3); // loc: [175.025, 106.93]
assign net__1756 = (!outputting_cnt_0&!outputting_cnt_1&!outputting_cnt_2); // loc: [167.645, 112.71]
assign net__1761 = (!outputting_cnt_2) | (!outputting_cnt_3); // loc: [175.025, 99.45]
assign net__1763 = (!outputting_cnt_0) | (!outputting_cnt_1); // loc: [168.125, 96.39]
assign net__1773 = (!net__1677&net__1738&net__1779); // loc: [169.515, 91.29]
assign net__1775 = (!net__1780&!net__1779) | (!net__1743&!net__1779) | (!net__1781&!net__1779); // loc: [174.115, 91.63]
assign net__1779 = (!outputting_cnt_0&!outputting_cnt_3) | (!outputting_cnt_1&!outputting_cnt_3); // loc: [180.55, 92.99]
assign net__1780 = (outputting_cnt_0&outputting_cnt_1); // loc: [169.05, 84.83]
assign net__1781 = (outputting_cnt_3) | (!outputting_cnt_2); // loc: [182.855, 94.35]
assign net__1783 = (outputting_cnt_2) | (!outputting_cnt_0); // loc: [171.345, 85.17]
assign net__1786 = (!outputting_cnt_1&outputting_cnt_2); // loc: [174.595, 83.47]
assign net__1790 = (net__1780&net__1743&net__1781) | (net__1748) | (net__1779); // loc: [181.005, 90.61]
assign show_bb_char0 = (net__1093&net__1715) | (net__1090&net__1715) | (net__1079&net__1715); // loc: [174.105, 145.01]
assign show_bb_char1 = (net__1096&net__1715) | (net__1093&net__1715); // loc: [168.585, 149.09]
assign show_bb_char2 = (net__1096&net__1715&outputting_cnt_1) | (outputting_cnt_2&net__1715&outputting_cnt_1); // loc: [171.345, 147.73]
assign show_bb_char3 = (!outputting_cnt_0&!outputting_cnt_3&!net__1083&!net__1088) | (!outputting_cnt_2&!outputting_cnt_3&!net__1083&!net__1088); // loc: [175.03, 153.85]
assign show_bb_char5 = (outputting_cnt_0&net__1715&net__1083); // loc: [175.03, 148.07]
assign show_bb_char6 = (!outputting_cnt_0&!outputting_cnt_3) | (!net__1083&!outputting_cnt_3); // loc: [174.57, 157.25]
assign show_es_char0 = (!net__1703&!net__1708) | (!net__1692&!net__1708); // loc: [168.59, 130.05]
assign show_es_char1 = (!outputting_cnt_3&outputting_cnt_2&outputting_cnt_1); // loc: [170.435, 134.81]
assign show_es_char2 = (!net__1703&net__1720); // loc: [175.005, 128.69]
assign show_es_char3 = (net__1703&net__1686&net__1720) | (net__1692&net__1686&net__1720) | (net__1703&net__1693&net__1720) | (net__1692&net__1693&net__1720); // loc: [171.355, 132.43]
assign show_es_char4 = (outputting_cnt_1&net__1696&net__1709) | (net__1703&net__1696&net__1709); // loc: [171.345, 140.59]
assign show_es_char5 = (!outputting_cnt_3&net__1692&outputting_cnt_2); // loc: [169.965, 134.81]
assign show_es_char6 = (outputting_cnt_1&net__1709) | (net__1696&net__1709); // loc: [174.575, 143.65]
assign show_ta_char0 = (outputting_cnt_1&net__1694) | (outputting_cnt_2&net__1694) | (outputting_cnt_1&net__1685) | (outputting_cnt_2&net__1685); // loc: [172.715, 111.01]
assign show_ta_char1 = (outputting_cnt_0&net__1754) | (net__1731); // loc: [173.645, 106.59]
assign show_ta_char2 = (outputting_cnt_0&outputting_cnt_2&net__1754) | (net__1756); // loc: [171.805, 110.67]
assign show_ta_char3 = (outputting_cnt_1&show_ta_char4) | (net__1731) | (net__1685); // loc: [175.495, 117.47]
assign show_ta_char4 = (!outputting_cnt_0&!outputting_cnt_2&!outputting_cnt_3) | (!outputting_cnt_1&!outputting_cnt_2&!outputting_cnt_3); // loc: [171.79, 119.17]
assign show_ta_char5 = (!outputting_cnt_2&!outputting_cnt_3&outputting_cnt_0&outputting_cnt_1); // loc: [172.265, 115.09]
assign show_ta_char6 = (net__1694) | (net__1685) | (net__1731); // loc: [180.09, 116.11]
assign show_tnt_char0 = (!net__1677&!net__1743) | (net__1773); // loc: [171.81, 96.39]
assign show_tnt_char1 = (net__1786&net__1790) | (net__1775&net__1790) | (net__1746&net__1790); // loc: [173.655, 85.17]
assign show_tnt_char2 = (net__1763&net__1761); // loc: [170.43, 100.13]
assign show_tnt_char3 = !(net__1773 ^ net__1737); // loc: [173.69, 94.01]
assign show_tnt_char4 = (!net__1786&!net__1775&!net__1691) | (!net__1743&!outputting_cnt_0); // loc: [173.655, 88.57]
assign show_tnt_char5 = (!outputting_cnt_3&!net__1763); // loc: [173.655, 101.49]
assign show_tnt_char6 = (outputting_cnt_3&net__1761) | (net__1763&net__1761) | (outputting_cnt_3&net__1677) | (net__1763&net__1677); // loc: [171.795, 100.13]
 

//// Partition Output logic starbist
 
//// Inputs
//I
//clk2
//clk3_9
//input_unmasked
//output_chars_valid
//outputting_cnt_0
//outputting_cnt_1
//outputting_cnt_2
//outputting_cnt_3
//rst_n
 
//// Outputs
//clk3_3
//show_star_char0
//show_star_char1
//show_star_char2
//show_star_char3
//show_star_char4
//show_star_char5
//show_star_char6
//show_star_char7
assign clk3_13 = (clk2); // loc: [161.23, 180.71]
assign clk3_3 = (clk2); // loc: [146.97, 178.33]
assign clk4_13 = (clk3_13); // loc: [155.71, 178.33]
assign clk4_3 = (clk3_3); // loc: [148.81, 175.27]
assign net__1011 = (!net__850&net__884); // loc: [172.295, 166.77]
assign net__1012 = (!I&input_unmasked) | (!net__998&input_unmasked); // loc: [174.595, 168.13]
assign net__1021 = (!net__998&!net__745); // loc: [185.615, 175.95]
assign net__1023 = (!input_unmasked&!net__998); // loc: [173.655, 165.07]
assign net__1026 = (!net__885) | (!net__862); // loc: [171.815, 164.73]
assign net__1027 = (!net__979&!net__1026) | (!net__726); // loc: [180.085, 172.21]
assign net__1040 = (output_bisty_flop7&net__890) | (input_unmasked&output_bisty_flop6) | (net__1021); // loc: [187.475, 181.73]
assign net__1062 = (net__979&net__1011) | (net__979&net__1026) | (net__862&net__1011) | (net__685&net__1011) | (net__862&net__1026) | (net__685&net__1026); // loc: [172.265, 170.85]
assign net__679 = !(output_bisty_flop2 ^ output_bisty_flop5); // loc: [167.71, 191.93]
assign net__681 = (net__811&outputting_cnt_2) | (outputting_cnt_0&net__718); // loc: [167.185, 203.15]
assign net__685 = (!outputting_cnt_2&!net__1011); // loc: [168.135, 170.51]
assign net__688 = (outputting_cnt_2&net__886&net__884) | (net__897); // loc: [164.445, 172.21]
assign net__704 = (!outputting_cnt_1) | (!outputting_cnt_3); // loc: [155.255, 183.43]
assign net__707 = (net__890&output_bisty_flop4) | (input_unmasked&output_bisty_flop3) | (net__893); // loc: [187.475, 192.61]
assign net__708 = (!input_unmasked&output_chars_valid); // loc: [159.365, 197.71]
assign net__709 = (!output_bisty_flop2) | (!net__758); // loc: [164.445, 202.81]
assign net__718 = (!outputting_cnt_2&!outputting_cnt_3); // loc: [151.565, 183.09]
assign net__721 = (net__708&net__709&net__931) | (net__932); // loc: [158.465, 183.09]
assign net__726 = (outputting_cnt_0&outputting_cnt_2) | (net__886) | (net__938); // loc: [174.105, 182.75]
assign net__729 = (net__1023&net__882) | (input_unmasked&output_bisty_flop2) | (net__890); // loc: [187.935, 182.75]
assign net__731 = !(output_bisty_flop5 ^ output_bisty_flop7); // loc: [168.63, 186.49]
assign net__735 = output_bisty_flop3 ^ output_bisty_flop1; // loc: [171.35, 205.19]
assign net__740 = (!net__771&!net__745) | (!net__773&!net__745); // loc: [178.71, 201.79]
assign net__745 = (input_unmasked) | (!output_chars_valid); // loc: [169.515, 204.85]
assign net__747 = (!net__745&!net__822); // loc: [177.785, 204.85]
assign net__758 = !(output_bisty_flop6 ^ net__889); // loc: [178.21, 186.49]
assign net__771 = output_bisty_flop2 ^ output_bisty_flop1; // loc: [172.73, 199.75]
assign net__773 = output_bisty_flop0 ^ output_bisty_flop4; // loc: [183.77, 175.61]
assign net__811 = (outputting_cnt_1) | (!outputting_cnt_0); // loc: [156.635, 192.27]
assign net__815 = (!net__811) | (!net__930); // loc: [152.945, 191.93]
assign net__822 = !(output_bisty_flop6 ^ net__908); // loc: [178.21, 181.05]
assign net__834 = (net__958&net__904) | (net__958&output_bisty_flop2) | (net__957&net__904) | (net__945&net__904) | (net__957&output_bisty_flop2) | (net__945&output_bisty_flop2); // loc: [163.985, 188.19]
assign net__841 = (output_bisty_flop1&net__890) | (input_unmasked&output_bisty_flop0) | (net__747); // loc: [161.205, 193.63]
assign net__850 = (!outputting_cnt_0&!outputting_cnt_1); // loc: [151.565, 188.53]
assign net__851 = (!outputting_cnt_0&!net__886); // loc: [160.775, 172.21]
assign net__854 = (net__851) | (net__850) | (net__718); // loc: [173.19, 193.97]
assign net__860 = (outputting_cnt_0&outputting_cnt_1&outputting_cnt_2); // loc: [175.03, 186.15]
assign net__862 = !(outputting_cnt_3 ^ net__860); // loc: [169.01, 186.49]
assign net__867 = (net__708&net__948) | (net__955); // loc: [158.015, 193.63]
assign net__876 = (output_bisty_flop0&net__745&net__959) | (net__904&net__745&net__959) | (output_bisty_flop0&net__953&net__959) | (net__904&net__953&net__959); // loc: [156.635, 188.53]
assign net__882 = !(output_bisty_flop0 ^ net__735); // loc: [183.81, 197.37]
assign net__884 = (!outputting_cnt_0) | (!outputting_cnt_1); // loc: [169.515, 167.11]
assign net__885 = (outputting_cnt_1) | (outputting_cnt_2); // loc: [166.295, 170.51]
assign net__886 = (!outputting_cnt_3); // loc: [154.79, 178.33]
assign net__889 = !(output_bisty_flop4 ^ output_bisty_flop3); // loc: [162.65, 186.49]
assign net__890 = (!output_chars_valid&!input_unmasked); // loc: [155.705, 193.97]
assign net__893 = (net__771&net__740) | (net__773&net__740); // loc: [186.535, 198.05]
assign net__897 = (!outputting_cnt_0&!net__885) | (!outputting_cnt_0&!net__884) | (!net__886&!net__885) | (!net__886&!net__884); // loc: [186.075, 186.49]
assign net__902 = (!input_unmasked&!net__882&net__998); // loc: [174.545, 169.15]
assign net__904 = (output_chars_valid) | (input_unmasked); // loc: [165.825, 204.85]
assign net__907 = output_bisty_flop0 ^ net__758; // loc: [182.39, 188.87]
assign net__908 = output_bisty_flop3 ^ output_bisty_flop7; // loc: [182.85, 188.87]
assign net__912 = (output_bisty_flop3&net__902) | (net__904&net__902) | (output_bisty_flop3&net__729) | (net__904&net__729); // loc: [184.215, 193.63]
assign net__930 = (net__862&net__991) | (net__851&net__885); // loc: [158.905, 177.65]
assign net__931 = (output_bisty_flop2) | (net__758); // loc: [149.725, 186.83]
assign net__932 = (net__890&output_bisty_flop6) | (input_unmasked&output_bisty_flop5); // loc: [153.845, 186.83]
assign net__938 = (!outputting_cnt_0&outputting_cnt_1); // loc: [155.735, 188.53]
assign net__945 = (input_unmasked&output_bisty_flop1) | (net__890); // loc: [162.155, 199.07]
assign net__948 = !(net__679 ^ net__735); // loc: [162.11, 197.37]
assign net__953 = !(output_bisty_flop6 ^ net__679); // loc: [162.11, 181.05]
assign net__955 = (output_bisty_flop5&net__890) | (input_unmasked&output_bisty_flop4); // loc: [158.905, 192.27]
assign net__957 = (!input_unmasked&net__998&net__907); // loc: [164.445, 175.27]
assign net__958 = (!net__907&net__1023); // loc: [187.015, 177.65]
assign net__959 = (!I&!net__998) | (!net__1012); // loc: [180.095, 170.51]
assign net__979 = (!net__980); // loc: [166.29, 172.89]
assign net__980 = (!outputting_cnt_2) | (!net__938); // loc: [162.145, 170.17]
assign net__989 = (outputting_cnt_2&net__704) | (net__851&net__704) | (net__938&net__704); // loc: [168.125, 177.65]
assign net__991 = (outputting_cnt_0) | (outputting_cnt_2) | (!outputting_cnt_1); // loc: [155.705, 180.03]
assign net__998 = !(net__889 ^ net__731); // loc: [176.91, 175.61]
    // loc: [181.94, 200.77]
    always @(posedge clk3_9 or negedge rst_n)
        if (!rst_n) output_bisty_flop0 <= 1;
        else               output_bisty_flop0 <= net__876;
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic output_bisty_flop0_changed;
                 always @(posedge clk3_9 or negedge rst_n)
                     if (!rst_n) output_bisty_flop0_changed <= 0;
                     else if (!enable && !output_bisty_flop0_changed) output_bisty_flop0_changed <= (output_bisty_flop0 != net__876);
                 p_output_bisty_flop0_never_changed: assert property ( !output_bisty_flop0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic output_bisty_flop0_changed;
                 always @(posedge clk3_9 or negedge rst_n)
                     if (!rst_n) output_bisty_flop0_changed <= 0;
                     else if (!output_bisty_flop0_changed) output_bisty_flop0_changed <= (output_bisty_flop0 != net__876);
                 p_output_bisty_flop0_never_changed: assert property ( outputting_cnt_lt_15 || !output_bisty_flop0_changed);
 `endif
 
    
    // loc: [176.865, 196.35]
    always @(posedge clk3_13 or negedge rst_n)
        if (!rst_n) output_bisty_flop1 <= 0;
        else               output_bisty_flop1 <= net__841; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic output_bisty_flop1_changed;
                 always @(posedge clk3_13 or negedge rst_n)
                     if (!rst_n) output_bisty_flop1_changed <= 0;
                     else if (!enable && !output_bisty_flop1_changed) output_bisty_flop1_changed <= (output_bisty_flop1 != net__841);
                 p_output_bisty_flop1_never_changed: assert property ( !output_bisty_flop1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic output_bisty_flop1_changed;
                 always @(posedge clk3_13 or negedge rst_n)
                     if (!rst_n) output_bisty_flop1_changed <= 0;
                     else if (!output_bisty_flop1_changed) output_bisty_flop1_changed <= (output_bisty_flop1 != net__841);
                 p_output_bisty_flop1_never_changed: assert property ( outputting_cnt_lt_15 || !output_bisty_flop1_changed);
 `endif
 
    
    // loc: [176.88, 190.91]
    always @(posedge clk3_13 or negedge rst_n)
        if (!rst_n) output_bisty_flop2 <= 1;
        else               output_bisty_flop2 <= net__834;
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic output_bisty_flop2_changed;
                 always @(posedge clk3_13 or negedge rst_n)
                     if (!rst_n) output_bisty_flop2_changed <= 0;
                     else if (!enable && !output_bisty_flop2_changed) output_bisty_flop2_changed <= (output_bisty_flop2 != net__834);
                 p_output_bisty_flop2_never_changed: assert property ( !output_bisty_flop2_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic output_bisty_flop2_changed;
                 always @(posedge clk3_13 or negedge rst_n)
                     if (!rst_n) output_bisty_flop2_changed <= 0;
                     else if (!output_bisty_flop2_changed) output_bisty_flop2_changed <= (output_bisty_flop2 != net__834);
                 p_output_bisty_flop2_never_changed: assert property ( outputting_cnt_lt_15 || !output_bisty_flop2_changed);
 `endif
 
    
    // loc: [174.575, 195.33]
    always @(posedge clk3_13 or negedge rst_n)
        if (!rst_n) output_bisty_flop3 <= 0;
        else               output_bisty_flop3 <= net__912; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic output_bisty_flop3_changed;
                 always @(posedge clk3_13 or negedge rst_n)
                     if (!rst_n) output_bisty_flop3_changed <= 0;
                     else if (!enable && !output_bisty_flop3_changed) output_bisty_flop3_changed <= (output_bisty_flop3 != net__912);
                 p_output_bisty_flop3_never_changed: assert property ( !output_bisty_flop3_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic output_bisty_flop3_changed;
                 always @(posedge clk3_13 or negedge rst_n)
                     if (!rst_n) output_bisty_flop3_changed <= 0;
                     else if (!output_bisty_flop3_changed) output_bisty_flop3_changed <= (output_bisty_flop3 != net__912);
                 p_output_bisty_flop3_never_changed: assert property ( outputting_cnt_lt_15 || !output_bisty_flop3_changed);
 `endif
 
    
    // loc: [183.765, 184.45]
    always @(posedge clk3_13 or negedge rst_n)
        if (!rst_n) output_bisty_flop4 <= 0;
        else               output_bisty_flop4 <= net__707; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic output_bisty_flop4_changed;
                 always @(posedge clk3_13 or negedge rst_n)
                     if (!rst_n) output_bisty_flop4_changed <= 0;
                     else if (!enable && !output_bisty_flop4_changed) output_bisty_flop4_changed <= (output_bisty_flop4 != net__707);
                 p_output_bisty_flop4_never_changed: assert property ( !output_bisty_flop4_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic output_bisty_flop4_changed;
                 always @(posedge clk3_13 or negedge rst_n)
                     if (!rst_n) output_bisty_flop4_changed <= 0;
                     else if (!output_bisty_flop4_changed) output_bisty_flop4_changed <= (output_bisty_flop4 != net__707);
                 p_output_bisty_flop4_never_changed: assert property ( outputting_cnt_lt_15 || !output_bisty_flop4_changed);
 `endif
 
    
    // loc: [175.96, 189.89]
    always @(posedge clk3_13 or negedge rst_n)
        if (!rst_n) output_bisty_flop5 <= 1;
        else               output_bisty_flop5 <= net__867;
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic output_bisty_flop5_changed;
                 always @(posedge clk3_13 or negedge rst_n)
                     if (!rst_n) output_bisty_flop5_changed <= 0;
                     else if (!enable && !output_bisty_flop5_changed) output_bisty_flop5_changed <= (output_bisty_flop5 != net__867);
                 p_output_bisty_flop5_never_changed: assert property ( !output_bisty_flop5_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic output_bisty_flop5_changed;
                 always @(posedge clk3_13 or negedge rst_n)
                     if (!rst_n) output_bisty_flop5_changed <= 0;
                     else if (!output_bisty_flop5_changed) output_bisty_flop5_changed <= (output_bisty_flop5 != net__867);
                 p_output_bisty_flop5_never_changed: assert property ( outputting_cnt_lt_15 || !output_bisty_flop5_changed);
 `endif
 
    
    // loc: [177.785, 179.01]
    always @(posedge clk3_3 or negedge rst_n)
        if (!rst_n) output_bisty_flop6 <= 0;
        else               output_bisty_flop6 <= net__721; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic output_bisty_flop6_changed;
                 always @(posedge clk3_3 or negedge rst_n)
                     if (!rst_n) output_bisty_flop6_changed <= 0;
                     else if (!enable && !output_bisty_flop6_changed) output_bisty_flop6_changed <= (output_bisty_flop6 != net__721);
                 p_output_bisty_flop6_never_changed: assert property ( !output_bisty_flop6_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic output_bisty_flop6_changed;
                 always @(posedge clk3_3 or negedge rst_n)
                     if (!rst_n) output_bisty_flop6_changed <= 0;
                     else if (!output_bisty_flop6_changed) output_bisty_flop6_changed <= (output_bisty_flop6 != net__721);
                 p_output_bisty_flop6_never_changed: assert property ( outputting_cnt_lt_15 || !output_bisty_flop6_changed);
 `endif
 
    
    // loc: [168.58, 180.03]
    always @(posedge clk3_13 or negedge rst_n)
        if (!rst_n) output_bisty_flop7 <= 1;
        else               output_bisty_flop7 <= net__1040;
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic output_bisty_flop7_changed;
                 always @(posedge clk3_13 or negedge rst_n)
                     if (!rst_n) output_bisty_flop7_changed <= 0;
                     else if (!enable && !output_bisty_flop7_changed) output_bisty_flop7_changed <= (output_bisty_flop7 != net__1040);
                 p_output_bisty_flop7_never_changed: assert property ( !output_bisty_flop7_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic output_bisty_flop7_changed;
                 always @(posedge clk3_13 or negedge rst_n)
                     if (!rst_n) output_bisty_flop7_changed <= 0;
                     else if (!output_bisty_flop7_changed) output_bisty_flop7_changed <= (output_bisty_flop7 != net__1040);
                 p_output_bisty_flop7_never_changed: assert property ( outputting_cnt_lt_15 || !output_bisty_flop7_changed);
 `endif
 
    
assign outputting_01234_8_a_e = output_bisty_flop1 ^ net__885; // loc: [178.25, 191.93]
assign outputting_6_or_b = (!net__980&!net__851) | (!net__704&!net__851); // loc: [160.31, 174.59]
assign show_star_char0 = !(output_bisty_flop0 ^ outputting_6_or_b); // loc: [170.93, 175.61]
assign show_star_char1 = !(net__854 ^ outputting_01234_8_a_e); // loc: [164.49, 183.43]
assign show_star_char2 = !(output_bisty_flop2 ^ net__1027); // loc: [178.67, 177.99]
assign show_star_char3 = output_bisty_flop3 ^ net__1062; // loc: [173.19, 172.55]
assign show_star_char4 = output_bisty_flop4 ^ net__989; // loc: [170.89, 183.43]
assign show_star_char5 = output_bisty_flop5 ^ net__815; // loc: [175.95, 202.81]
assign show_star_char6 = !(output_bisty_flop6 ^ net__681); // loc: [170.93, 194.31]
assign show_star_char7 = !(output_bisty_flop7 ^ net__688); // loc: [172.77, 172.55]
 

//// Partition Output mux messages
 
//// Inputs
//TNT_not_STAR
//clk2
//lo
//outputting_latched
//show_bb_char0
//show_bb_char1
//show_bb_char2
//show_bb_char3
//show_bb_char5
//show_bb_char6
//show_big_bang
//show_empty_sky
//show_es_char0
//show_es_char1
//show_es_char2
//show_es_char3
//show_es_char4
//show_es_char5
//show_es_char6
//show_star_char0
//show_star_char1
//show_star_char2
//show_star_char3
//show_star_char4
//show_star_char5
//show_star_char6
//show_star_char7
//show_ta_char0
//show_ta_char1
//show_ta_char2
//show_ta_char3
//show_ta_char4
//show_ta_char5
//show_ta_char6
//show_tnt_char0
//show_tnt_char1
//show_tnt_char2
//show_tnt_char3
//show_tnt_char4
//show_tnt_char5
//show_tnt_char6
//success
 
//// Outputs
//clk3_14
//clk3_9
//output_chars_valid
//outputting_cnt_0
//outputting_cnt_1
//outputting_cnt_2
//outputting_cnt_3
assign O[0] = (outputting_latched&out_char_0&outputting_cnt_lt_15); // loc: [180.55, 245.99]
assign O[1] = (outputting_latched&out_char_1&outputting_cnt_lt_15); // loc: [179.17, 243.61]
assign O[2] = (outputting_latched&out_char_2&outputting_cnt_lt_15); // loc: [183.31, 245.99]
assign O[3] = (outputting_latched&out_char_3&outputting_cnt_lt_15); // loc: [179.17, 254.49]
assign O[4] = (outputting_latched&out_char_4&outputting_cnt_lt_15); // loc: [182.85, 249.05]
assign O[5] = (outputting_latched&out_char_5&outputting_cnt_lt_15); // loc: [176.41, 238.17]
assign O[6] = (outputting_latched&out_char_6&outputting_cnt_lt_15); // loc: [167.67, 249.05]
assign O[7] = (outputting_latched&out_char_7&outputting_cnt_lt_15); // loc: [177.33, 245.99]
assign bb_char_mask = (!net__8&!net__10&net__123); // loc: [169.485, 218.11]
assign clk3_14 = (clk2); // loc: [161.23, 227.29]
assign clk3_9 = (clk2); // loc: [150.65, 224.23]
assign clk4_14 = (clk3_14); // loc: [157.09, 224.23]
assign es_char_mask = (!net__8&!net__123&!net__10); // loc: [168.615, 221.51]
assign net__10 = (!net__129); // loc: [163.53, 245.99]
assign net__108 = (!outputting_cnt_lt_15&outputting_latched) | (!net__155&outputting_latched); // loc: [180.525, 250.75]
assign net__113 = (!outputting_cnt_0&outputting_latched) | (!outputting_cnt_lt_15&outputting_latched); // loc: [173.625, 256.19]
assign net__115 = (outputting_cnt_1&outputting_cnt_0) | (outputting_cnt_2); // loc: [168.595, 257.89]
assign net__121 = (success&!show_big_bang) | (TNT_not_STAR&!show_big_bang); // loc: [161.69, 250.75]
assign net__123 = (!show_empty_sky&!net__121); // loc: [166.755, 257.55]
assign net__129 = (show_empty_sky) | (success) | (show_big_bang) | (!TNT_not_STAR); // loc: [166.745, 250.75]
assign net__14 = (!net__123&!net__8) | (!net__10&!net__8); // loc: [165.37, 218.11]
assign net__142 = (!success); // loc: [162.61, 249.05]
assign net__155 = !(outputting_cnt_1 ^ outputting_cnt_0); // loc: [174.61, 246.33]
assign net__165 = (!net__191&outputting_latched) | (!net__50&outputting_latched); // loc: [173.625, 239.87]
assign net__173 = (outputting_cnt_3&net__115&outputting_latched) | (net__50&net__115&outputting_latched); // loc: [168.595, 243.95]
assign net__191 = (!outputting_cnt_3); // loc: [169.51, 240.55]
assign net__50 = (!outputting_cnt_2) | (!outputting_cnt_1) | (!outputting_cnt_0); // loc: [168.125, 254.15]
assign net__8 = (!net__142&!show_big_bang&!show_empty_sky) | (!TNT_not_STAR&!show_big_bang&!show_empty_sky); // loc: [165.81, 245.31]
assign op_show_star = (!net__123&!net__10&net__8); // loc: [171.835, 212.67]
assign op_show_tnt = (!net__8&!net__123&net__10); // loc: [169.485, 217.09]
assign out_char_0 = (show_try_again&show_ta_char_masked0) | (show_bb_es_char0&show_ta_char_masked0) | (show_tnt_or_star_char0&show_ta_char_masked0); // loc: [176.865, 226.61]
assign out_char_1 = (show_try_again&show_ta_char_masked1) | (show_bb_es_char1&show_ta_char_masked1) | (show_tnt_or_star_char1&show_ta_char_masked1); // loc: [170.885, 224.91]
assign out_char_2 = (show_try_again&show_ta_char_masked2) | (show_bb_es_char2&show_ta_char_masked2) | (show_tnt_or_star_char2&show_ta_char_masked2); // loc: [173.195, 219.47]
assign out_char_3 = (show_try_again&show_ta_char_masked3) | (show_bb_es_char3&show_ta_char_masked3) | (show_tnt_or_star_char3&show_ta_char_masked3); // loc: [174.565, 224.91]
assign out_char_4 = (show_try_again&show_ta_char_masked4) | (show_bb_es_char4&show_ta_char_masked4) | (show_tnt_or_star_char4&show_ta_char_masked4); // loc: [171.805, 221.17]
assign out_char_5 = (show_try_again&show_ta_char_masked5) | (show_bb_es_char5&show_ta_char_masked5) | (show_tnt_or_star_char5&show_ta_char_masked5); // loc: [173.195, 221.17]
assign out_char_6 = (show_try_again&show_ta_char_masked6) | (show_bb_es_char6&show_ta_char_masked6) | (show_tnt_or_star_char6&show_ta_char_masked6); // loc: [178.715, 219.47]
assign out_char_7 = (show_try_again&show_ta_char_masked7) | (show_bb_es_char7&show_ta_char_masked7) | (show_tnt_or_star_char7&show_ta_char_masked7); // loc: [176.875, 215.73]
assign output_chars_valid = (outputting_latched&outputting_cnt_lt_15); // loc: [172.73, 258.91]
    // loc: [168.685, 249.73]
    always @(posedge clk3_14)
                    outputting_cnt_0 <= net__113;
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic outputting_cnt_0_changed;
                 always @(posedge clk3_14 or negedge rst_n)
                     if (!rst_n) outputting_cnt_0_changed <= 0;
                     else if (!enable && !outputting_cnt_0_changed) outputting_cnt_0_changed <= (outputting_cnt_0 != net__113);
                 p_outputting_cnt_0_never_changed: assert property ( !outputting_cnt_0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic outputting_cnt_0_changed;
                 always @(posedge clk3_14 or negedge rst_n)
                     if (!rst_n) outputting_cnt_0_changed <= 0;
                     else if (!outputting_cnt_0_changed) outputting_cnt_0_changed <= (outputting_cnt_0 != net__113);
                 p_outputting_cnt_0_never_changed: assert property ( outputting_cnt_lt_15 || !outputting_cnt_0_changed);
 `endif
 
    
    // loc: [169.605, 255.17]
    always @(posedge clk3_14)
                    outputting_cnt_1 <= net__108;
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic outputting_cnt_1_changed;
                 always @(posedge clk3_14 or negedge rst_n)
                     if (!rst_n) outputting_cnt_1_changed <= 0;
                     else if (!enable && !outputting_cnt_1_changed) outputting_cnt_1_changed <= (outputting_cnt_1 != net__108);
                 p_outputting_cnt_1_never_changed: assert property ( !outputting_cnt_1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic outputting_cnt_1_changed;
                 always @(posedge clk3_14 or negedge rst_n)
                     if (!rst_n) outputting_cnt_1_changed <= 0;
                     else if (!outputting_cnt_1_changed) outputting_cnt_1_changed <= (outputting_cnt_1 != net__108);
                 p_outputting_cnt_1_never_changed: assert property ( outputting_cnt_lt_15 || !outputting_cnt_1_changed);
 `endif
 
    
    // loc: [176.775, 250.75]
    always @(posedge clk3_9)
                    outputting_cnt_2 <= net__173;
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic outputting_cnt_2_changed;
                 always @(posedge clk3_9 or negedge rst_n)
                     if (!rst_n) outputting_cnt_2_changed <= 0;
                     else if (!enable && !outputting_cnt_2_changed) outputting_cnt_2_changed <= (outputting_cnt_2 != net__173);
                 p_outputting_cnt_2_never_changed: assert property ( !outputting_cnt_2_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic outputting_cnt_2_changed;
                 always @(posedge clk3_9 or negedge rst_n)
                     if (!rst_n) outputting_cnt_2_changed <= 0;
                     else if (!outputting_cnt_2_changed) outputting_cnt_2_changed <= (outputting_cnt_2 != net__173);
                 p_outputting_cnt_2_never_changed: assert property ( outputting_cnt_lt_15 || !outputting_cnt_2_changed);
 `endif
 
    
    // loc: [175.855, 244.29]
    always @(posedge clk3_9)
                    outputting_cnt_3 <= net__165;
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic outputting_cnt_3_changed;
                 always @(posedge clk3_9 or negedge rst_n)
                     if (!rst_n) outputting_cnt_3_changed <= 0;
                     else if (!enable && !outputting_cnt_3_changed) outputting_cnt_3_changed <= (outputting_cnt_3 != net__165);
                 p_outputting_cnt_3_never_changed: assert property ( !outputting_cnt_3_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic outputting_cnt_3_changed;
                 always @(posedge clk3_9 or negedge rst_n)
                     if (!rst_n) outputting_cnt_3_changed <= 0;
                     else if (!outputting_cnt_3_changed) outputting_cnt_3_changed <= (outputting_cnt_3 != net__165);
                 p_outputting_cnt_3_never_changed: assert property ( outputting_cnt_lt_15 || !outputting_cnt_3_changed);
 `endif
 
    
assign outputting_cnt_lt_15 = (!outputting_cnt_3) | (!outputting_cnt_2) | (!outputting_cnt_1) | (!outputting_cnt_0); // loc: [176.865, 248.71]
assign show_bb_es_char0 = (es_char_mask&show_es_char0) | (show_bb_char0&bb_char_mask); // loc: [176.895, 230.35]
assign show_bb_es_char1 = (es_char_mask&show_es_char1) | (show_bb_char1&bb_char_mask); // loc: [167.185, 226.61]
assign show_bb_es_char2 = (es_char_mask&show_es_char2) | (show_bb_char2&bb_char_mask); // loc: [164.885, 224.91]
assign show_bb_es_char3 = (es_char_mask&show_es_char3) | (show_bb_char3&bb_char_mask); // loc: [173.215, 232.05]
assign show_bb_es_char4 = (es_char_mask&show_es_char4) | (lo&bb_char_mask); // loc: [170.865, 226.61]
assign show_bb_es_char5 = (es_char_mask&show_es_char5) | (show_bb_char5&bb_char_mask); // loc: [173.215, 230.35]
assign show_bb_es_char6 = (es_char_mask&show_es_char6) | (show_bb_char6&bb_char_mask); // loc: [181.035, 224.91]
assign show_bb_es_char7 = (es_char_mask&lo) | (lo&bb_char_mask); // loc: [179.195, 221.17]
assign show_ta_char_masked0 = (show_ta_char0) | (op_show_star) | (net__14); // loc: [168.13, 208.59]
assign show_ta_char_masked1 = (show_ta_char1) | (op_show_star) | (net__14); // loc: [178.71, 208.59]
assign show_ta_char_masked2 = (show_ta_char2) | (op_show_star) | (net__14); // loc: [178.71, 210.29]
assign show_ta_char_masked3 = (show_ta_char3) | (op_show_star) | (net__14); // loc: [167.21, 215.73]
assign show_ta_char_masked4 = (show_ta_char4) | (op_show_star) | (net__14); // loc: [162.61, 210.29]
assign show_ta_char_masked5 = (show_ta_char5) | (op_show_star) | (net__14); // loc: [182.85, 214.03]
assign show_ta_char_masked6 = (show_ta_char6) | (op_show_star) | (net__14); // loc: [181.93, 215.73]
assign show_ta_char_masked7 = (lo) | (op_show_star) | (net__14); // loc: [180.09, 214.03]
assign show_tnt_or_star_char0 = (op_show_tnt&show_tnt_char0) | (show_star_char0&op_show_star); // loc: [165.805, 214.03]
assign show_tnt_or_star_char1 = (op_show_tnt&show_tnt_char1) | (show_star_char1&op_show_star); // loc: [167.645, 210.29]
assign show_tnt_or_star_char2 = (op_show_tnt&show_tnt_char2) | (show_star_char2&op_show_star); // loc: [177.355, 210.29]
assign show_tnt_or_star_char3 = (op_show_tnt&show_tnt_char3) | (show_star_char3&op_show_star); // loc: [175.515, 215.73]
assign show_tnt_or_star_char4 = (op_show_tnt&show_tnt_char4) | (show_star_char4&op_show_star); // loc: [171.325, 210.29]
assign show_tnt_or_star_char5 = (op_show_tnt&show_tnt_char5) | (show_star_char5&op_show_star); // loc: [176.435, 214.03]
assign show_tnt_or_star_char6 = (op_show_tnt&show_tnt_char6) | (show_star_char6&op_show_star); // loc: [171.835, 208.59]
assign show_tnt_or_star_char7 = (op_show_tnt&lo) | (show_star_char7&op_show_star); // loc: [175.515, 208.59]
assign show_try_again = (!op_show_star&!net__14); // loc: [164.455, 214.03]
 

//// Partition Two in each row
 
//// Inputs
//I
//clk2
//col_cnt_0
//col_cnt_1
//col_cnt_2
//col_cnt_3
//input_unmasked
//last_in_row
//rst_n
 
//// Outputs
//clk3_4
//clk4_4_1
//col_cnt_eq_5
//hi
//lo
//n_first_col
//n_first_col_2
//num_in_all_rows_2
    // loc: [89.925, 92.99]
    always @(posedge clk3_4 or negedge rst_n)
        if (!rst_n) Merr_lat <= 0;
        else               Merr_lat <= net__1355; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic Merr_lat_changed;
                 always @(posedge clk3_4 or negedge rst_n)
                     if (!rst_n) Merr_lat_changed <= 0;
                     else if (!enable && !Merr_lat_changed) Merr_lat_changed <= (Merr_lat != net__1355);
                 p_Merr_lat_never_changed: assert property ( !Merr_lat_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic Merr_lat_changed;
                 always @(posedge clk3_4 or negedge rst_n)
                     if (!rst_n) Merr_lat_changed <= 0;
                     else if (!Merr_lat_changed) Merr_lat_changed <= (Merr_lat != net__1355);
                 p_Merr_lat_never_changed: assert property ( outputting_cnt_lt_15 || !Merr_lat_changed);
 `endif
 
    
assign clk3_4 = (clk2); // loc: [77.51, 107.61]
assign clk4_4_1 = (clk2); // loc: [89.47, 109.99]
assign clk4_4_2 = (clk3_4); // loc: [72.91, 107.61]
assign clk5_4 = (clk4_4_1); // loc: [87.17, 113.05]
assign col_cnt_eq_5 = (col_cnt_0) | (col_cnt_2) | (!col_cnt_3) | (!col_cnt_1); // loc: [81.625, 105.23]
assign hi = 1; // loc: [166.02, 85.83]
assign lo = 0; // loc: [166.655, 85.51]
assign n_first_col = (col_cnt_0) | (col_cnt_1) | (col_cnt_2) | (col_cnt_3); // loc: [81.195, 106.93]
assign n_first_col_2 = (n_first_col); // loc: [86.245, 101.15]
assign n_input_unmasked = (!input_unmasked); // loc: [76.59, 104.55]
assign net__1260 = (!num_in_row_0) | (!I); // loc: [78.435, 110.33]
assign net__1267 = (!last_in_row); // loc: [79.35, 96.73]
assign net__1349 = n_input_unmasked ? net__1367 : last_in_row; // loc: [77.055, 101.15]
assign net__1355 = (last_in_row&input_unmasked&net__1385) | (Merr_lat); // loc: [83.025, 96.05]
assign net__1364 = (net__1369&net__1267) | (n_input_unmasked&num_in_row_0); // loc: [80.295, 105.23]
assign net__1366 = (num_in_row_0) | (I); // loc: [83.035, 112.37]
assign net__1367 = (!num_in_row_1); // loc: [88.55, 102.17]
assign net__1369 = (num_in_row_1&net__1366&input_unmasked) | (net__1260&net__1366&input_unmasked); // loc: [82.105, 107.95]
assign net__1371 = (!net__1367&!net__1349) | (!net__1260&!net__1349); // loc: [79.35, 98.43]
assign net__1385 = num_in_row_1 ? net__1366 : net__1260; // loc: [81.195, 101.15]
assign num_in_all_rows_2 = (!Merr_lat); // loc: [79.81, 93.67]
    // loc: [88.085, 109.31]
    always @(posedge clk3_4 or negedge rst_n)
        if (!rst_n) num_in_row_0 <= 0;
        else               num_in_row_0 <= net__1364; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic num_in_row_0_changed;
                 always @(posedge clk3_4 or negedge rst_n)
                     if (!rst_n) num_in_row_0_changed <= 0;
                     else if (!enable && !num_in_row_0_changed) num_in_row_0_changed <= (num_in_row_0 != net__1364);
                 p_num_in_row_0_never_changed: assert property ( !num_in_row_0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic num_in_row_0_changed;
                 always @(posedge clk3_4 or negedge rst_n)
                     if (!rst_n) num_in_row_0_changed <= 0;
                     else if (!num_in_row_0_changed) num_in_row_0_changed <= (num_in_row_0 != net__1364);
                 p_num_in_row_0_never_changed: assert property ( outputting_cnt_lt_15 || !num_in_row_0_changed);
 `endif
 
    
    // loc: [90.845, 98.43]
    always @(posedge clk3_4 or negedge rst_n)
        if (!rst_n) num_in_row_1 <= 0;
        else               num_in_row_1 <= net__1371; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic num_in_row_1_changed;
                 always @(posedge clk3_4 or negedge rst_n)
                     if (!rst_n) num_in_row_1_changed <= 0;
                     else if (!enable && !num_in_row_1_changed) num_in_row_1_changed <= (num_in_row_1 != net__1371);
                 p_num_in_row_1_never_changed: assert property ( !num_in_row_1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic num_in_row_1_changed;
                 always @(posedge clk3_4 or negedge rst_n)
                     if (!rst_n) num_in_row_1_changed <= 0;
                     else if (!num_in_row_1_changed) num_in_row_1_changed <= (num_in_row_1 != net__1371);
                 p_num_in_row_1_never_changed: assert property ( outputting_cnt_lt_15 || !num_in_row_1_changed);
 `endif
 
    
 

//// Partition combine errors
 
//// Inputs
//I
//clk3_1
//clk3_2
//input_unmasked
//rst_n
//two_in_grp_A
//two_in_grp_B
//two_in_grp_C
//two_in_grp_D
//two_in_grp_F
//two_in_grp_G
//two_in_grp_J
//two_in_grp_N
//two_in_grp_S
//two_in_grp_ST
//two_in_grp_T
 
//// Outputs
//show_big_bang
//show_empty_sky
//total_inky_cnt_22
//two_in_each_group
    // loc: [81.655, 54.91]
    always @(posedge clk3_2 or negedge rst_n)
        if (!rst_n) inky_cnt_0 <= 0;
        else               inky_cnt_0 <= net__1530; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic inky_cnt_0_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) inky_cnt_0_changed <= 0;
                     else if (!enable && !inky_cnt_0_changed) inky_cnt_0_changed <= (inky_cnt_0 != net__1530);
                 p_inky_cnt_0_never_changed: assert property ( !inky_cnt_0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic inky_cnt_0_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) inky_cnt_0_changed <= 0;
                     else if (!inky_cnt_0_changed) inky_cnt_0_changed <= (inky_cnt_0 != net__1530);
                 p_inky_cnt_0_never_changed: assert property ( outputting_cnt_lt_15 || !inky_cnt_0_changed);
 `endif
 
    
    // loc: [81.655, 38.59]
    always @(posedge clk3_2 or negedge rst_n)
        if (!rst_n) inky_cnt_1 <= 0;
        else               inky_cnt_1 <= net__1589; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic inky_cnt_1_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) inky_cnt_1_changed <= 0;
                     else if (!enable && !inky_cnt_1_changed) inky_cnt_1_changed <= (inky_cnt_1 != net__1589);
                 p_inky_cnt_1_never_changed: assert property ( !inky_cnt_1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic inky_cnt_1_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) inky_cnt_1_changed <= 0;
                     else if (!inky_cnt_1_changed) inky_cnt_1_changed <= (inky_cnt_1 != net__1589);
                 p_inky_cnt_1_never_changed: assert property ( outputting_cnt_lt_15 || !inky_cnt_1_changed);
 `endif
 
    
    // loc: [91.765, 44.03]
    always @(posedge clk3_1 or negedge rst_n)
        if (!rst_n) inky_cnt_2 <= 0;
        else               inky_cnt_2 <= net__1511; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic inky_cnt_2_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) inky_cnt_2_changed <= 0;
                     else if (!enable && !inky_cnt_2_changed) inky_cnt_2_changed <= (inky_cnt_2 != net__1511);
                 p_inky_cnt_2_never_changed: assert property ( !inky_cnt_2_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic inky_cnt_2_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) inky_cnt_2_changed <= 0;
                     else if (!inky_cnt_2_changed) inky_cnt_2_changed <= (inky_cnt_2 != net__1511);
                 p_inky_cnt_2_never_changed: assert property ( outputting_cnt_lt_15 || !inky_cnt_2_changed);
 `endif
 
    
    // loc: [90.845, 49.47]
    always @(posedge clk3_1 or negedge rst_n)
        if (!rst_n) inky_cnt_3 <= 0;
        else               inky_cnt_3 <= net__1513; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic inky_cnt_3_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) inky_cnt_3_changed <= 0;
                     else if (!enable && !inky_cnt_3_changed) inky_cnt_3_changed <= (inky_cnt_3 != net__1513);
                 p_inky_cnt_3_never_changed: assert property ( !inky_cnt_3_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic inky_cnt_3_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) inky_cnt_3_changed <= 0;
                     else if (!inky_cnt_3_changed) inky_cnt_3_changed <= (inky_cnt_3 != net__1513);
                 p_inky_cnt_3_never_changed: assert property ( outputting_cnt_lt_15 || !inky_cnt_3_changed);
 `endif
 
    
    // loc: [86.705, 37.57]
    always @(posedge clk3_1 or negedge rst_n)
        if (!rst_n) inky_cnt_4 <= 0;
        else               inky_cnt_4 <= net__1506; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic inky_cnt_4_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) inky_cnt_4_changed <= 0;
                     else if (!enable && !inky_cnt_4_changed) inky_cnt_4_changed <= (inky_cnt_4 != net__1506);
                 p_inky_cnt_4_never_changed: assert property ( !inky_cnt_4_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic inky_cnt_4_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) inky_cnt_4_changed <= 0;
                     else if (!inky_cnt_4_changed) inky_cnt_4_changed <= (inky_cnt_4 != net__1506);
                 p_inky_cnt_4_never_changed: assert property ( outputting_cnt_lt_15 || !inky_cnt_4_changed);
 `endif
 
    
    // loc: [77.515, 43.01]
    always @(posedge clk3_1 or negedge rst_n)
        if (!rst_n) inky_cnt_5 <= 0;
        else               inky_cnt_5 <= net__1612; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic inky_cnt_5_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) inky_cnt_5_changed <= 0;
                     else if (!enable && !inky_cnt_5_changed) inky_cnt_5_changed <= (inky_cnt_5 != net__1612);
                 p_inky_cnt_5_never_changed: assert property ( !inky_cnt_5_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic inky_cnt_5_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) inky_cnt_5_changed <= 0;
                     else if (!inky_cnt_5_changed) inky_cnt_5_changed <= (inky_cnt_5 != net__1612);
                 p_inky_cnt_5_never_changed: assert property ( outputting_cnt_lt_15 || !inky_cnt_5_changed);
 `endif
 
    
    // loc: [84.865, 48.45]
    always @(posedge clk3_1 or negedge rst_n)
        if (!rst_n) inky_cnt_6 <= 0;
        else               inky_cnt_6 <= net__1523; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic inky_cnt_6_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) inky_cnt_6_changed <= 0;
                     else if (!enable && !inky_cnt_6_changed) inky_cnt_6_changed <= (inky_cnt_6 != net__1523);
                 p_inky_cnt_6_never_changed: assert property ( !inky_cnt_6_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic inky_cnt_6_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) inky_cnt_6_changed <= 0;
                     else if (!inky_cnt_6_changed) inky_cnt_6_changed <= (inky_cnt_6 != net__1523);
                 p_inky_cnt_6_never_changed: assert property ( outputting_cnt_lt_15 || !inky_cnt_6_changed);
 `endif
 
    
    // loc: [78.435, 59.33]
    always @(posedge clk3_2 or negedge rst_n)
        if (!rst_n) inky_cnt_7 <= 0;
        else               inky_cnt_7 <= net__1577; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic inky_cnt_7_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) inky_cnt_7_changed <= 0;
                     else if (!enable && !inky_cnt_7_changed) inky_cnt_7_changed <= (inky_cnt_7 != net__1577);
                 p_inky_cnt_7_never_changed: assert property ( !inky_cnt_7_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic inky_cnt_7_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) inky_cnt_7_changed <= 0;
                     else if (!inky_cnt_7_changed) inky_cnt_7_changed <= (inky_cnt_7 != net__1577);
                 p_inky_cnt_7_never_changed: assert property ( outputting_cnt_lt_15 || !inky_cnt_7_changed);
 `endif
 
    
assign net__1504 = (!net__1554) | (!net__1588); // loc: [67.385, 47.43]
assign net__1505 = (inky_cnt_1&inky_cnt_2&net__1554); // loc: [69.69, 47.77]
assign net__1506 = !(inky_cnt_4 ^ net__1504); // loc: [82.61, 45.05]
assign net__1511 = (!net__1505&net__1593); // loc: [84.435, 34.51]
assign net__1512 = (inky_cnt_4&inky_cnt_5); // loc: [69.23, 45.73]
assign net__1513 = (inky_cnt_3&net__1504) | (net__1505&net__1504); // loc: [71.985, 45.73]
assign net__1515 = (!net__1554); // loc: [76.13, 44.71]
assign net__1523 = (!net__1576&net__1605); // loc: [77.075, 57.97]
assign net__1530 = (!net__1554&!net__1584); // loc: [76.595, 50.83]
assign net__1534 = (!inky_cnt_1&inky_cnt_0); // loc: [86.735, 52.53]
assign net__1554 = (inky_cnt_0&I&input_unmasked); // loc: [80.27, 61.03]
assign net__1563 = (!inky_cnt_2&!inky_cnt_7&inky_cnt_6&inky_cnt_3); // loc: [80.725, 49.81]
assign net__1576 = (inky_cnt_6&net__1512&net__1554&net__1588); // loc: [75.215, 52.53]
assign net__1577 = inky_cnt_7 ^ net__1576; // loc: [83.95, 52.87]
assign net__1584 = (!I&!inky_cnt_0) | (!input_unmasked&!inky_cnt_0); // loc: [78.43, 54.91]
assign net__1588 = (inky_cnt_1&inky_cnt_2&inky_cnt_3); // loc: [91.77, 50.15]
assign net__1589 = (I&input_unmasked&net__1534) | (net__1515&inky_cnt_1); // loc: [91.765, 48.11]
assign net__1593 = (inky_cnt_1&net__1554) | (inky_cnt_2); // loc: [94.525, 46.75]
assign net__1594 = (inky_cnt_4&net__1554&net__1588) | (inky_cnt_5); // loc: [74.285, 50.83]
assign net__1599 = (inky_cnt_0) | (inky_cnt_3) | (inky_cnt_7); // loc: [75.67, 56.27]
assign net__1603 = (!inky_cnt_5&!inky_cnt_6&!net__1599); // loc: [75.695, 47.43]
assign net__1605 = (net__1512&net__1554&net__1588) | (inky_cnt_6); // loc: [71.535, 52.53]
assign net__1610 = (!inky_cnt_4) | (!inky_cnt_5); // loc: [77.055, 39.61]
assign net__1612 = (net__1610&net__1594) | (net__1504&net__1594); // loc: [74.285, 41.31]
assign net__1615 = (two_in_grp_B&two_in_grp_F&two_in_grp_G); // loc: [76.59, 26.01]
assign net__1652 = (two_in_grp_D&two_in_grp_N&two_in_grp_S&two_in_grp_T); // loc: [80.735, 19.89]
assign net__1655 = (two_in_grp_ST&two_in_grp_J&two_in_grp_A&two_in_grp_C); // loc: [82.575, 25.33]
assign show_big_bang = (net__1563&net__1534&net__1512); // loc: [90.39, 53.21]
assign show_empty_sky = (!inky_cnt_1&!inky_cnt_2&!inky_cnt_4&net__1603); // loc: [89.47, 41.99]
assign total_inky_cnt_22 = (inky_cnt_1&inky_cnt_2&inky_cnt_4&net__1603); // loc: [80.265, 39.95]
assign two_in_each_group = (net__1652&net__1655&net__1615); // loc: [79.35, 26.01]
 

//// Partition count num in each col
 
//// Inputs
//I
//clk2
//clk3_9
//col_cnt_0
//col_cnt_1
//col_cnt_2
//col_cnt_3
//input_unmasked
//rst_n
 
//// Outputs
//clk3_11
//exact_two_used_col0
//exact_two_used_col1
//exact_two_used_col10
//exact_two_used_col2
//exact_two_used_col3
//exact_two_used_col4
//exact_two_used_col5
//exact_two_used_col6
//exact_two_used_col7
//exact_two_used_col8
//exact_two_used_col9
assign char_0 = (!col_cnt_1&!col_cnt_0&!col_cnt_3&!col_cnt_2); // loc: [120.315, 194.99]
assign char_10 = (!col_cnt_0&!col_cnt_2&col_cnt_3&col_cnt_1); // loc: [127.655, 283.73]
assign char_3 = (!col_cnt_3&!col_cnt_2&col_cnt_0&col_cnt_1); // loc: [119.365, 223.89]
assign char_5 = (!col_cnt_1&!col_cnt_3&col_cnt_2&col_cnt_0); // loc: [117.995, 234.77]
assign char_6 = (!col_cnt_0&!col_cnt_3&col_cnt_2&col_cnt_1); // loc: [121.675, 254.83]
assign char_7 = (!col_cnt_3&col_cnt_2&col_cnt_0&col_cnt_1); // loc: [125.815, 253.47]
assign char_9 = (!col_cnt_1&!col_cnt_2&col_cnt_3&col_cnt_0); // loc: [114.765, 283.73]
assign clk3_11 = (clk2); // loc: [105.11, 200.09]
assign clk3_12 = (clk2); // loc: [112.47, 205.53]
assign clk3_8 = (clk2); // loc: [123.97, 249.05]
assign clk3_8 = (clk2); // loc: [123.97, 249.05]
assign clk4_11 = (clk3_11); // loc: [103.27, 197.03]
assign clk4_12 = (clk3_12); // loc: [109.71, 207.91]
assign clk4_8_1 = (clk3_8); // loc: [117.07, 251.43]
assign clk4_8_2 = (clk3_8); // loc: [130.41, 249.05]
assign exact_two_used_col0 = (!used_col0&two_used_col0); // loc: [116.585, 188.53]
assign exact_two_used_col1 = (two_used_col1&net__615); // loc: [107.41, 208.93]
assign exact_two_used_col10 = (!used_col10&two_used_col10); // loc: [105.545, 284.75]
assign exact_two_used_col2 = (two_used_col2&net__567); // loc: [111.09, 215.39]
assign exact_two_used_col3 = (!used_col3&two_used_col3); // loc: [113.825, 219.47]
assign exact_two_used_col4 = (two_used_col4&net__435); // loc: [111.09, 237.15]
assign exact_two_used_col5 = (!used_col5&two_used_col5); // loc: [110.145, 241.23]
assign exact_two_used_col6 = (!used_col6&two_used_col6); // loc: [116.585, 248.37]
assign exact_two_used_col7 = (!used_col7&two_used_col7); // loc: [110.605, 259.25]
assign exact_two_used_col8 = (two_used_col8&net__356); // loc: [106.49, 279.65]
assign exact_two_used_col9 = (!used_col9&two_used_col9); // loc: [123.945, 275.57]
assign n_char_1 = (col_cnt_1) | (col_cnt_3) | (col_cnt_2) | (!col_cnt_0); // loc: [114.775, 200.77]
assign n_char_8 = (col_cnt_1) | (col_cnt_0) | (col_cnt_2) | (!col_cnt_3); // loc: [114.775, 271.49]
assign n_trig_two_used_0 = (!I) | (!input_unmasked) | (!used_col0) | (!char_0); // loc: [117.065, 191.93]
assign n_trig_two_used_10 = (!I) | (!input_unmasked) | (!used_col10) | (!char_10); // loc: [109.705, 286.79]
assign n_trig_two_used_3 = (!I) | (!input_unmasked) | (!used_col3) | (!char_3); // loc: [117.065, 221.51]
assign n_trig_two_used_5 = (!I) | (!input_unmasked) | (!used_col5) | (!char_5); // loc: [113.385, 235.45]
assign n_trig_two_used_6 = (!I) | (!input_unmasked) | (!used_col6) | (!char_6); // loc: [117.065, 254.15]
assign n_trig_two_used_7 = (!I) | (!input_unmasked) | (!used_col7) | (!char_7); // loc: [112.465, 257.21]
assign n_trig_two_used_9 = (!I) | (!input_unmasked) | (!used_col9) | (!char_9); // loc: [112.925, 278.97]
assign net__24 = (two_used_col3&net__505) | (n_trig_two_used_3&net__505); // loc: [115.235, 225.25]
assign net__25 = (two_used_col3) | (!n_trig_two_used_3); // loc: [111.545, 219.47]
assign net__253 = (!I) | (!input_unmasked); // loc: [123.965, 235.45]
assign net__256 = (!net__519&!net__253); // loc: [122.125, 235.79]
    // loc: [122.585, 233.41]
    always @(posedge clk3_12 or negedge rst_n)
        if (!rst_n) net__282 <= 0;
        else               net__282 <= net__489; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic net__282_changed;
                 always @(posedge clk3_12 or negedge rst_n)
                     if (!rst_n) net__282_changed <= 0;
                     else if (!enable && !net__282_changed) net__282_changed <= (net__282 != net__489);
                 p_net__282_never_changed: assert property ( !net__282_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic net__282_changed;
                 always @(posedge clk3_12 or negedge rst_n)
                     if (!rst_n) net__282_changed <= 0;
                     else if (!net__282_changed) net__282_changed <= (net__282 != net__489);
                 p_net__282_never_changed: assert property ( outputting_cnt_lt_15 || !net__282_changed);
 `endif
 
    
    // loc: [124.885, 282.37]
    always @(posedge clk3_8 or negedge rst_n)
        if (!rst_n) net__301 <= 0;
        else               net__301 <= net__316; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic net__301_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) net__301_changed <= 0;
                     else if (!enable && !net__301_changed) net__301_changed <= (net__301 != net__316);
                 p_net__301_never_changed: assert property ( !net__301_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic net__301_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) net__301_changed <= 0;
                     else if (!net__301_changed) net__301_changed <= (net__301 != net__316);
                 p_net__301_never_changed: assert property ( outputting_cnt_lt_15 || !net__301_changed);
 `endif
 
    
assign net__302 = (I&input_unmasked&char_9) | (used_col9); // loc: [125.815, 281.01]
assign net__311 = (I&input_unmasked&char_10) | (used_col10); // loc: [126.735, 286.45]
assign net__316 = (net__301&net__366) | (net__372&net__366); // loc: [117.985, 269.79]
assign net__330 = (two_used_col9&net__302) | (n_trig_two_used_9&net__302); // loc: [112.475, 280.67]
assign net__345 = (two_used_col10&net__311) | (n_trig_two_used_10&net__311); // loc: [106.025, 286.11]
assign net__351 = (two_used_col10) | (!n_trig_two_used_10); // loc: [109.715, 284.75]
assign net__356 = (!net__301); // loc: [115.23, 281.69]
assign net__366 = (two_used_col8) | (net__356) | (n_char_8) | (net__367); // loc: [111.545, 273.87]
assign net__367 = (!I) | (!input_unmasked); // loc: [116.605, 268.09]
assign net__372 = (!n_char_8&!net__367); // loc: [115.695, 268.43]
assign net__374 = (two_used_col9) | (!n_trig_two_used_9); // loc: [110.165, 279.31]
assign net__377 = (net__301&net__372) | (two_used_col8); // loc: [110.635, 275.23]
assign net__396 = (I&input_unmasked&char_7) | (used_col7); // loc: [117.535, 262.99]
assign net__400 = (two_used_col7&net__396) | (n_trig_two_used_7&net__396); // loc: [108.785, 257.89]
assign net__420 = (two_used_col7) | (!n_trig_two_used_7); // loc: [115.685, 262.99]
assign net__435 = (!net__282); // loc: [108.33, 235.11]
assign net__436 = (two_used_col5) | (!n_trig_two_used_5); // loc: [110.635, 235.79]
assign net__453 = (two_used_col6) | (!n_trig_two_used_6); // loc: [114.765, 246.67]
assign net__465 = (two_used_col5&net__475) | (n_trig_two_used_5&net__475); // loc: [115.235, 241.57]
assign net__475 = (I&input_unmasked&char_5) | (used_col5); // loc: [123.515, 237.49]
assign net__488 = (net__282&net__256) | (two_used_col4); // loc: [110.635, 231.71]
assign net__489 = (net__282&net__515) | (net__256&net__515); // loc: [115.235, 230.69]
assign net__505 = (I&input_unmasked&char_3) | (used_col3); // loc: [120.755, 221.17]
assign net__515 = (two_used_col4) | (net__435) | (net__519) | (net__253); // loc: [125.815, 232.05]
assign net__519 = (col_cnt_1) | (col_cnt_0) | (col_cnt_3) | (!col_cnt_2); // loc: [119.365, 227.97]
assign net__527 = (I&input_unmasked&char_6) | (used_col6); // loc: [125.345, 252.11]
assign net__531 = (two_used_col6&net__527) | (n_trig_two_used_6&net__527); // loc: [127.195, 248.03]
assign net__552 = (two_used_col0) | (!n_trig_two_used_0); // loc: [114.765, 186.83]
assign net__564 = (!I) | (!input_unmasked); // loc: [123.965, 216.07]
assign net__565 = (col_cnt_0) | (col_cnt_3) | (col_cnt_2) | (!col_cnt_1); // loc: [114.765, 207.23]
assign net__567 = (!net__611); // loc: [109.71, 216.41]
assign net__568 = (two_used_col2) | (net__567) | (net__565) | (net__564); // loc: [125.355, 214.03]
    // loc: [124.885, 207.23]
    always @(posedge clk3_9 or negedge rst_n)
        if (!rst_n) net__571 <= 0;
        else               net__571 <= net__577; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic net__571_changed;
                 always @(posedge clk3_9 or negedge rst_n)
                     if (!rst_n) net__571_changed <= 0;
                     else if (!enable && !net__571_changed) net__571_changed <= (net__571 != net__577);
                 p_net__571_never_changed: assert property ( !net__571_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic net__571_changed;
                 always @(posedge clk3_9 or negedge rst_n)
                     if (!rst_n) net__571_changed <= 0;
                     else if (!net__571_changed) net__571_changed <= (net__571 != net__577);
                 p_net__571_never_changed: assert property ( outputting_cnt_lt_15 || !net__571_changed);
 `endif
 
    
assign net__574 = (!n_char_1&!net__618); // loc: [111.545, 199.41]
assign net__577 = (net__571&net__620) | (net__574&net__620); // loc: [112.475, 203.49]
assign net__579 = (net__571&net__574) | (two_used_col1); // loc: [119.825, 203.49]
assign net__589 = (net__611&net__595) | (two_used_col2); // loc: [112.465, 214.37]
assign net__594 = (net__611&net__568) | (net__595&net__568); // loc: [112.475, 209.95]
assign net__595 = (!net__565&!net__564); // loc: [114.305, 210.29]
    // loc: [113.855, 212.67]
    always @(posedge clk3_9 or negedge rst_n)
        if (!rst_n) net__611 <= 0;
        else               net__611 <= net__594; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic net__611_changed;
                 always @(posedge clk3_9 or negedge rst_n)
                     if (!rst_n) net__611_changed <= 0;
                     else if (!enable && !net__611_changed) net__611_changed <= (net__611 != net__594);
                 p_net__611_never_changed: assert property ( !net__611_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic net__611_changed;
                 always @(posedge clk3_9 or negedge rst_n)
                     if (!rst_n) net__611_changed <= 0;
                     else if (!net__611_changed) net__611_changed <= (net__611 != net__594);
                 p_net__611_never_changed: assert property ( outputting_cnt_lt_15 || !net__611_changed);
 `endif
 
    
assign net__615 = (!net__571); // loc: [109.25, 210.97]
assign net__618 = (!I) | (!input_unmasked); // loc: [117.525, 199.75]
assign net__620 = (two_used_col1) | (net__615) | (n_char_1) | (net__618); // loc: [116.615, 203.15]
assign net__643 = (I&input_unmasked&char_0) | (used_col0); // loc: [120.755, 192.27]
assign net__648 = (two_used_col0&net__643) | (n_trig_two_used_0&net__643); // loc: [119.825, 188.19]
    // loc: [123.045, 184.45]
    always @(posedge clk3_11 or negedge rst_n)
        if (!rst_n) two_used_col0 <= 0;
        else               two_used_col0 <= net__552; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic two_used_col0_changed;
                 always @(posedge clk3_11 or negedge rst_n)
                     if (!rst_n) two_used_col0_changed <= 0;
                     else if (!enable && !two_used_col0_changed) two_used_col0_changed <= (two_used_col0 != net__552);
                 p_two_used_col0_never_changed: assert property ( !two_used_col0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic two_used_col0_changed;
                 always @(posedge clk3_11 or negedge rst_n)
                     if (!rst_n) two_used_col0_changed <= 0;
                     else if (!two_used_col0_changed) two_used_col0_changed <= (two_used_col0 != net__552);
                 p_two_used_col0_never_changed: assert property ( outputting_cnt_lt_15 || !two_used_col0_changed);
 `endif
 
    
    // loc: [114.315, 206.21]
    always @(posedge clk3_9 or negedge rst_n)
        if (!rst_n) two_used_col1 <= 0;
        else               two_used_col1 <= net__579; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic two_used_col1_changed;
                 always @(posedge clk3_9 or negedge rst_n)
                     if (!rst_n) two_used_col1_changed <= 0;
                     else if (!enable && !two_used_col1_changed) two_used_col1_changed <= (two_used_col1 != net__579);
                 p_two_used_col1_never_changed: assert property ( !two_used_col1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic two_used_col1_changed;
                 always @(posedge clk3_9 or negedge rst_n)
                     if (!rst_n) two_used_col1_changed <= 0;
                     else if (!two_used_col1_changed) two_used_col1_changed <= (two_used_col1 != net__579);
                 p_two_used_col1_never_changed: assert property ( outputting_cnt_lt_15 || !two_used_col1_changed);
 `endif
 
    
    // loc: [114.315, 287.81]
    always @(posedge clk3_8 or negedge rst_n)
        if (!rst_n) two_used_col10 <= 0;
        else               two_used_col10 <= net__351; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic two_used_col10_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) two_used_col10_changed <= 0;
                     else if (!enable && !two_used_col10_changed) two_used_col10_changed <= (two_used_col10 != net__351);
                 p_two_used_col10_never_changed: assert property ( !two_used_col10_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic two_used_col10_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) two_used_col10_changed <= 0;
                     else if (!two_used_col10_changed) two_used_col10_changed <= (two_used_col10 != net__351);
                 p_two_used_col10_never_changed: assert property ( outputting_cnt_lt_15 || !two_used_col10_changed);
 `endif
 
    
    // loc: [124.885, 211.65]
    always @(posedge clk3_12 or negedge rst_n)
        if (!rst_n) two_used_col2 <= 0;
        else               two_used_col2 <= net__589; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic two_used_col2_changed;
                 always @(posedge clk3_12 or negedge rst_n)
                     if (!rst_n) two_used_col2_changed <= 0;
                     else if (!enable && !two_used_col2_changed) two_used_col2_changed <= (two_used_col2 != net__589);
                 p_two_used_col2_never_changed: assert property ( !two_used_col2_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic two_used_col2_changed;
                 always @(posedge clk3_12 or negedge rst_n)
                     if (!rst_n) two_used_col2_changed <= 0;
                     else if (!two_used_col2_changed) two_used_col2_changed <= (two_used_col2 != net__589);
                 p_two_used_col2_never_changed: assert property ( outputting_cnt_lt_15 || !two_used_col2_changed);
 `endif
 
    
    // loc: [123.045, 217.09]
    always @(posedge clk3_12 or negedge rst_n)
        if (!rst_n) two_used_col3 <= 0;
        else               two_used_col3 <= net__25; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic two_used_col3_changed;
                 always @(posedge clk3_12 or negedge rst_n)
                     if (!rst_n) two_used_col3_changed <= 0;
                     else if (!enable && !two_used_col3_changed) two_used_col3_changed <= (two_used_col3 != net__25);
                 p_two_used_col3_never_changed: assert property ( !two_used_col3_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic two_used_col3_changed;
                 always @(posedge clk3_12 or negedge rst_n)
                     if (!rst_n) two_used_col3_changed <= 0;
                     else if (!two_used_col3_changed) two_used_col3_changed <= (two_used_col3 != net__25);
                 p_two_used_col3_never_changed: assert property ( outputting_cnt_lt_15 || !two_used_col3_changed);
 `endif
 
    
    // loc: [124.885, 228.99]
    always @(posedge clk3_12 or negedge rst_n)
        if (!rst_n) two_used_col4 <= 0;
        else               two_used_col4 <= net__488; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic two_used_col4_changed;
                 always @(posedge clk3_12 or negedge rst_n)
                     if (!rst_n) two_used_col4_changed <= 0;
                     else if (!enable && !two_used_col4_changed) two_used_col4_changed <= (two_used_col4 != net__488);
                 p_two_used_col4_never_changed: assert property ( !two_used_col4_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic two_used_col4_changed;
                 always @(posedge clk3_12 or negedge rst_n)
                     if (!rst_n) two_used_col4_changed <= 0;
                     else if (!two_used_col4_changed) two_used_col4_changed <= (two_used_col4 != net__488);
                 p_two_used_col4_never_changed: assert property ( outputting_cnt_lt_15 || !two_used_col4_changed);
 `endif
 
    
    // loc: [114.315, 238.85]
    always @(posedge clk3_8 or negedge rst_n)
        if (!rst_n) two_used_col5 <= 0;
        else               two_used_col5 <= net__436; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic two_used_col5_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) two_used_col5_changed <= 0;
                     else if (!enable && !two_used_col5_changed) two_used_col5_changed <= (two_used_col5 != net__436);
                 p_two_used_col5_never_changed: assert property ( !two_used_col5_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic two_used_col5_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) two_used_col5_changed <= 0;
                     else if (!two_used_col5_changed) two_used_col5_changed <= (two_used_col5 != net__436);
                 p_two_used_col5_never_changed: assert property ( outputting_cnt_lt_15 || !two_used_col5_changed);
 `endif
 
    
    // loc: [123.045, 244.29]
    always @(posedge clk3_8 or negedge rst_n)
        if (!rst_n) two_used_col6 <= 0;
        else               two_used_col6 <= net__453; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic two_used_col6_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) two_used_col6_changed <= 0;
                     else if (!enable && !two_used_col6_changed) two_used_col6_changed <= (two_used_col6 != net__453);
                 p_two_used_col6_never_changed: assert property ( !two_used_col6_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic two_used_col6_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) two_used_col6_changed <= 0;
                     else if (!two_used_col6_changed) two_used_col6_changed <= (two_used_col6 != net__453);
                 p_two_used_col6_never_changed: assert property ( outputting_cnt_lt_15 || !two_used_col6_changed);
 `endif
 
    
    // loc: [122.585, 260.61]
    always @(posedge clk3_8 or negedge rst_n)
        if (!rst_n) two_used_col7 <= 0;
        else               two_used_col7 <= net__420; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic two_used_col7_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) two_used_col7_changed <= 0;
                     else if (!enable && !two_used_col7_changed) two_used_col7_changed <= (two_used_col7 != net__420);
                 p_two_used_col7_never_changed: assert property ( !two_used_col7_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic two_used_col7_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) two_used_col7_changed <= 0;
                     else if (!two_used_col7_changed) two_used_col7_changed <= (two_used_col7 != net__420);
                 p_two_used_col7_never_changed: assert property ( outputting_cnt_lt_15 || !two_used_col7_changed);
 `endif
 
    
    // loc: [114.315, 276.93]
    always @(posedge clk3_8 or negedge rst_n)
        if (!rst_n) two_used_col8 <= 0;
        else               two_used_col8 <= net__377; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic two_used_col8_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) two_used_col8_changed <= 0;
                     else if (!enable && !two_used_col8_changed) two_used_col8_changed <= (two_used_col8 != net__377);
                 p_two_used_col8_never_changed: assert property ( !two_used_col8_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic two_used_col8_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) two_used_col8_changed <= 0;
                     else if (!two_used_col8_changed) two_used_col8_changed <= (two_used_col8 != net__377);
                 p_two_used_col8_never_changed: assert property ( outputting_cnt_lt_15 || !two_used_col8_changed);
 `endif
 
    
    // loc: [123.045, 272.51]
    always @(posedge clk3_8 or negedge rst_n)
        if (!rst_n) two_used_col9 <= 0;
        else               two_used_col9 <= net__374; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic two_used_col9_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) two_used_col9_changed <= 0;
                     else if (!enable && !two_used_col9_changed) two_used_col9_changed <= (two_used_col9 != net__374);
                 p_two_used_col9_never_changed: assert property ( !two_used_col9_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic two_used_col9_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) two_used_col9_changed <= 0;
                     else if (!two_used_col9_changed) two_used_col9_changed <= (two_used_col9 != net__374);
                 p_two_used_col9_never_changed: assert property ( outputting_cnt_lt_15 || !two_used_col9_changed);
 `endif
 
    
    // loc: [125.345, 185.47]
    always @(posedge clk3_11 or negedge rst_n)
        if (!rst_n) used_col0 <= 0;
        else               used_col0 <= net__648; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic used_col0_changed;
                 always @(posedge clk3_11 or negedge rst_n)
                     if (!rst_n) used_col0_changed <= 0;
                     else if (!enable && !used_col0_changed) used_col0_changed <= (used_col0 != net__648);
                 p_used_col0_never_changed: assert property ( !used_col0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic used_col0_changed;
                 always @(posedge clk3_11 or negedge rst_n)
                     if (!rst_n) used_col0_changed <= 0;
                     else if (!used_col0_changed) used_col0_changed <= (used_col0 != net__648);
                 p_used_col0_never_changed: assert property ( outputting_cnt_lt_15 || !used_col0_changed);
 `endif
 
    
    // loc: [124.885, 283.39]
    always @(posedge clk3_8 or negedge rst_n)
        if (!rst_n) used_col10 <= 0;
        else               used_col10 <= net__345; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic used_col10_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) used_col10_changed <= 0;
                     else if (!enable && !used_col10_changed) used_col10_changed <= (used_col10 != net__345);
                 p_used_col10_never_changed: assert property ( !used_col10_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic used_col10_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) used_col10_changed <= 0;
                     else if (!used_col10_changed) used_col10_changed <= (used_col10 != net__345);
                 p_used_col10_never_changed: assert property ( outputting_cnt_lt_15 || !used_col10_changed);
 `endif
 
    
    // loc: [125.345, 218.11]
    always @(posedge clk3_12 or negedge rst_n)
        if (!rst_n) used_col3 <= 0;
        else               used_col3 <= net__24; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic used_col3_changed;
                 always @(posedge clk3_12 or negedge rst_n)
                     if (!rst_n) used_col3_changed <= 0;
                     else if (!enable && !used_col3_changed) used_col3_changed <= (used_col3 != net__24);
                 p_used_col3_never_changed: assert property ( !used_col3_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic used_col3_changed;
                 always @(posedge clk3_12 or negedge rst_n)
                     if (!rst_n) used_col3_changed <= 0;
                     else if (!used_col3_changed) used_col3_changed <= (used_col3 != net__24);
                 p_used_col3_never_changed: assert property ( outputting_cnt_lt_15 || !used_col3_changed);
 `endif
 
    
    // loc: [124.885, 239.87]
    always @(posedge clk3_12 or negedge rst_n)
        if (!rst_n) used_col5 <= 0;
        else               used_col5 <= net__465; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic used_col5_changed;
                 always @(posedge clk3_12 or negedge rst_n)
                     if (!rst_n) used_col5_changed <= 0;
                     else if (!enable && !used_col5_changed) used_col5_changed <= (used_col5 != net__465);
                 p_used_col5_never_changed: assert property ( !used_col5_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic used_col5_changed;
                 always @(posedge clk3_12 or negedge rst_n)
                     if (!rst_n) used_col5_changed <= 0;
                     else if (!used_col5_changed) used_col5_changed <= (used_col5 != net__465);
                 p_used_col5_never_changed: assert property ( outputting_cnt_lt_15 || !used_col5_changed);
 `endif
 
    
    // loc: [117.075, 245.31]
    always @(posedge clk3_8 or negedge rst_n)
        if (!rst_n) used_col6 <= 0;
        else               used_col6 <= net__531; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic used_col6_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) used_col6_changed <= 0;
                     else if (!enable && !used_col6_changed) used_col6_changed <= (used_col6 != net__531);
                 p_used_col6_never_changed: assert property ( !used_col6_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic used_col6_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) used_col6_changed <= 0;
                     else if (!used_col6_changed) used_col6_changed <= (used_col6 != net__531);
                 p_used_col6_never_changed: assert property ( outputting_cnt_lt_15 || !used_col6_changed);
 `endif
 
    
    // loc: [124.885, 256.19]
    always @(posedge clk3_8 or negedge rst_n)
        if (!rst_n) used_col7 <= 0;
        else               used_col7 <= net__400; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic used_col7_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) used_col7_changed <= 0;
                     else if (!enable && !used_col7_changed) used_col7_changed <= (used_col7 != net__400);
                 p_used_col7_never_changed: assert property ( !used_col7_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic used_col7_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) used_col7_changed <= 0;
                     else if (!used_col7_changed) used_col7_changed <= (used_col7 != net__400);
                 p_used_col7_never_changed: assert property ( outputting_cnt_lt_15 || !used_col7_changed);
 `endif
 
    
    // loc: [125.345, 277.95]
    always @(posedge clk3_8 or negedge rst_n)
        if (!rst_n) used_col9 <= 0;
        else               used_col9 <= net__330; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic used_col9_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) used_col9_changed <= 0;
                     else if (!enable && !used_col9_changed) used_col9_changed <= (used_col9 != net__330);
                 p_used_col9_never_changed: assert property ( !used_col9_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic used_col9_changed;
                 always @(posedge clk3_8 or negedge rst_n)
                     if (!rst_n) used_col9_changed <= 0;
                     else if (!used_col9_changed) used_col9_changed <= (used_col9 != net__330);
                 p_used_col9_never_changed: assert property ( outputting_cnt_lt_15 || !used_col9_changed);
 `endif
 
    
 

//// Partition outputting, block further inputs
 
//// Inputs
//clk3_11
//enable
//last_in_row
//last_row
//rst_n
 
//// Outputs
//input_unmasked
//outputting
assign input_unmasked = (!outputting&enable); // loc: [30.565, 199.41]
assign next_outputting = (last_in_row&last_row&input_unmasked) | (outputting); // loc: [31.055, 204.85]
    // loc: [30.595, 201.79]
    always @(posedge clk3_11 or negedge rst_n)
        if (!rst_n) outputting <= 0;
        else               outputting <= next_outputting; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic outputting_changed;
                 always @(posedge clk3_11 or negedge rst_n)
                     if (!rst_n) outputting_changed <= 0;
                     else if (!enable && !outputting_changed) outputting_changed <= (outputting != next_outputting);
                 p_outputting_never_changed: assert property ( !outputting_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic outputting_changed;
                 always @(posedge clk3_11 or negedge rst_n)
                     if (!rst_n) outputting_changed <= 0;
                     else if (!outputting_changed) outputting_changed <= (outputting != next_outputting);
                 p_outputting_never_changed: assert property ( outputting_cnt_lt_15 || !outputting_changed);
 `endif
 
    
 

//// Partition row + col in -> group id
 
//// Inputs
//col_cnt_0
//col_cnt_1
//col_cnt_2
//col_cnt_3
//row_cnt_0
//row_cnt_1
//row_cnt_2
//row_cnt_3
 
//// Outputs
//group_select0
//group_select1
//group_select2
//group_select3
assign cols_6_to_10 = net__2292 ^ net__2293; // loc: [176.87, 41.99]
assign group_select0 = (cols_6_to_10&net__2297&net__2259) | (net__2296&net__2297&net__2259); // loc: [166.745, 48.11]
assign group_select1 = (net__2381&net__2259&net__2283) | (net__2305&net__2259&net__2283); // loc: [184.695, 42.67]
assign group_select2 = (cols_6_to_10&net__2276&net__2259) | (net__2242&net__2276&net__2259); // loc: [173.185, 53.55]
assign group_select3 = (cols_6_to_10&net__2238&net__2259) | (net__2246&net__2238&net__2259); // loc: [171.345, 49.81]
assign net__2203 = !(col_cnt_1 ^ row_cnt_0_xor_rc1); // loc: [166.25, 20.23]
assign net__2206 = (!col_cnt_3) | (!net__2222); // loc: [163.985, 50.49]
assign net__2207 = (!net__2235&!net__2234) | (!net__2206&!net__2234); // loc: [166.75, 49.47]
assign net__2214 = row_cnt_0 ^ row_cnt_2; // loc: [165.37, 31.11]
assign net__2215 = (!net__2329&!net__2321); // loc: [160.775, 18.19]
assign net__2217 = (!row_cnt_1) | (!row_cnt_2); // loc: [154.335, 36.55]
assign net__2218 = row_cnt_3 ^ net__2214; // loc: [165.37, 36.55]
assign net__2222 = !(net__2217 ^ net__2218); // loc: [170.93, 41.99]
assign net__2228 = (!net__2243&!net__2255) | (!net__2463&!net__2255); // loc: [184.69, 44.03]
assign net__2229 = (!net__2292&!net__2293); // loc: [160.315, 45.39]
assign net__2230 = !(col_cnt_3 ^ net__2222); // loc: [172.77, 45.05]
assign net__2234 = (net__2339) | (net__2309) | (net__2352); // loc: [163.07, 45.39]
assign net__2235 = (net__2217) | (!net__2218); // loc: [165.375, 45.39]
assign net__2238 = (net__2300&net__2228) | (net__2255&net__2505) | (net__2279); // loc: [174.085, 45.73]
assign net__2242 = net__2243 ? net__2486 : net__2501; // loc: [178.255, 45.73]
assign net__2243 = net__2273 ^ net__2382; // loc: [176.87, 36.55]
assign net__2245 = (net__2385&net__2299&net__2404); // loc: [187.91, 44.71]
assign net__2246 = (!net__2243&!net__2252) | (!net__2266); // loc: [178.715, 52.53]
assign net__2250 = (!net__2306&!net__2245) | (!net__2255); // loc: [180.095, 50.83]
assign net__2252 = (net__2255&net__2500) | (net__2255&net__2398) | (net__2376&net__2500) | (net__2479&net__2500) | (net__2376&net__2398) | (net__2479&net__2398); // loc: [184.685, 35.87]
assign net__2253 = (row_cnt_0&row_cnt_2&row_cnt_3) | (row_cnt_1&row_cnt_2&row_cnt_3); // loc: [165.835, 28.05]
assign net__2254 = (!net__2418); // loc: [176.41, 12.07]
assign net__2255 = net__2269 ^ net__2267; // loc: [176.87, 31.11]
assign net__2257 = net__2359 ^ net__2457; // loc: [174.11, 25.67]
assign net__2259 = (!net__2229&!net__2253); // loc: [170.435, 56.27]
assign net__2261 = (net__2393&net__2255&net__2394) | (net__2306) | (net__2245); // loc: [168.595, 12.75]
assign net__2262 = (net__2286&net__2261&net__2250); // loc: [173.65, 55.59]
assign net__2263 = (!net__2257&!net__2254) | (!net__2255); // loc: [175.955, 56.27]
assign net__2266 = (net__2255) | (net__2286) | (net__2443) | (net__2416); // loc: [162.145, 19.89]
assign net__2267 = (!net__2207&!net__2289); // loc: [169.055, 52.53]
assign net__2269 = (net__2359&net__2310) | (net__2318); // loc: [158.475, 30.43]
assign net__2273 = (net__2269&net__2267) | (net__2207); // loc: [172.265, 52.19]
assign net__2276 = (net__2243&net__2295) | (net__2294) | (net__2279); // loc: [179.165, 46.75]
assign net__2277 = (!net__2333&!net__2286) | (!net__2511&!net__2286); // loc: [186.07, 37.57]
assign net__2279 = !(net__2292 ^ net__2293); // loc: [175.99, 47.43]
assign net__2281 = (net__2333&net__2286&net__2373) | (net__2306&net__2286&net__2373); // loc: [161.225, 31.79]
assign net__2283 = (net__2279) | (net__2281) | (net__2277); // loc: [176.87, 50.83]
assign net__2286 = !(net__2273 ^ net__2382); // loc: [175.99, 34.17]
assign net__2289 = (net__2235&net__2206&net__2234); // loc: [162.15, 47.77]
assign net__2292 = (!net__2273&!net__2343) | (!net__2315&!net__2343); // loc: [158.93, 43.01]
assign net__2293 = (net__2217&net__2309) | (net__2364); // loc: [163.985, 41.31]
assign net__2294 = (net__2215&net__2442&net__2286) | (net__2263&net__2442&net__2286) | (net__2215&net__2255&net__2286) | (net__2263&net__2255&net__2286); // loc: [168.585, 18.19]
assign net__2295 = (net__2255&net__2383&net__2552) | (net__2559&net__2330); // loc: [178.255, 20.91]
assign net__2296 = (net__2243&net__2491) | (net__2262); // loc: [187.445, 41.31]
assign net__2297 = (!net__2243&!net__2480) | (!net__2355) | (!cols_6_to_10); // loc: [178.71, 38.93]
assign net__2299 = (!net__2321); // loc: [176.87, 33.83]
assign net__2300 = (net__2243) | (net__2301); // loc: [185.155, 47.09]
assign net__2301 = (!net__2257&!net__2332); // loc: [152.495, 30.77]
assign net__2305 = (net__2243&net__2308&net__2307) | (cols_6_to_10); // loc: [182.845, 47.09]
assign net__2306 = (!net__2385&!net__2360); // loc: [186.065, 19.89]
assign net__2307 = (!net__2255) | (!net__2474); // loc: [186.535, 25.67]
assign net__2308 = (net__2329&net__2560) | (!net__2330); // loc: [181.465, 18.19]
assign net__2309 = (!net__2387&!net__2375); // loc: [152.945, 39.95]
assign net__2310 = (!net__2230) | (!net__2311); // loc: [165.365, 52.87]
assign net__2311 = (!col_cnt_2&net__2334) | (!net__2379&net__2334) | (!col_cnt_2&row_cnt_2) | (!net__2379&row_cnt_2); // loc: [169.52, 34.85]
assign net__2315 = (!net__2354&!net__2374) | (!row_cnt_1&!net__2358); // loc: [162.615, 39.61]
assign net__2316 = (!col_cnt_0) | (!row_cnt_0); // loc: [157.095, 25.67]
assign net__2318 = (!net__2230&!net__2311); // loc: [156.625, 41.65]
assign net__2321 = (!net__2337&!net__2412); // loc: [157.095, 23.63]
assign net__2323 = (net__2402) | (net__2394); // loc: [156.635, 18.19]
assign net__2325 = (!net__2329) | (!net__2415); // loc: [155.705, 14.79]
assign net__2329 = !(net__2393 ^ net__2430); // loc: [177.83, 20.23]
assign net__2330 = (!net__2257&!net__2255) | (!net__2360&!net__2255); // loc: [161.69, 27.71]
assign net__2331 = (!net__2384&!net__2385); // loc: [151.115, 29.07]
assign net__2332 = (!net__2393) | (!net__2394); // loc: [152.485, 28.73]
assign net__2333 = (!net__2255) | (!net__2383); // loc: [156.635, 28.73]
assign net__2334 = (!row_cnt_0) | (!row_cnt_1); // loc: [158.935, 28.73]
assign net__2337 = (!col_cnt_0&!row_cnt_0); // loc: [158.005, 25.33]
assign net__2339 = (!row_cnt_1&!net__2358); // loc: [157.095, 30.77]
assign net__2343 = (!row_cnt_0&!row_cnt_1&row_cnt_2&row_cnt_3); // loc: [175.485, 28.05]
assign net__2352 = (net__2387&net__2358&net__2375); // loc: [157.09, 39.27]
assign net__2353 = (!net__2255) | (!net__2476); // loc: [187.915, 28.73]
assign net__2354 = (!row_cnt_1&!row_cnt_2) | (!row_cnt_3&!row_cnt_2); // loc: [160.31, 37.57]
assign net__2355 = (net__2255&net__2323) | (net__2377) | (net__2286); // loc: [161.695, 35.87]
assign net__2358 = (!row_cnt_3) | (!net__2214); // loc: [153.405, 34.17]
assign net__2359 = (col_cnt_1&row_cnt_0_xor_rc1&net__2553) | (net__2393&net__2430); // loc: [163.995, 22.61]
assign net__2360 = (!net__2329&!net__2415); // loc: [160.765, 12.75]
assign net__2364 = (!row_cnt_3&!net__2309) | (!net__2217&!net__2309); // loc: [159.85, 38.59]
assign net__2366 = (!row_cnt_1&!row_cnt_2); // loc: [160.305, 25.33]
assign net__2373 = (net__2255) | (net__2301) | (net__2419); // loc: [162.61, 25.33]
assign net__2374 = (row_cnt_1&row_cnt_2&row_cnt_3) | (net__2309); // loc: [161.685, 34.51]
assign net__2375 = !(row_cnt_1 ^ row_cnt_3); // loc: [165.33, 39.61]
assign net__2376 = (net__2385&net__2329&net__2426); // loc: [171.35, 15.13]
assign net__2377 = net__2483 ? net__2385 : net__2306; // loc: [182.855, 34.85]
assign net__2379 = (!row_cnt_1&!net__2366) | (!net__2214&!net__2366); // loc: [158.01, 33.15]
assign net__2381 = (net__2331&net__2286&net__2353) | (net__2255&net__2286&net__2353) | (net__2376&net__2286&net__2353); // loc: [162.155, 33.83]
assign net__2382 = (!net__2343&net__2315); // loc: [155.225, 36.21]
assign net__2383 = (!net__2385) | (!net__2325); // loc: [183.315, 12.41]
assign net__2384 = (!net__2393) | (!net__2408); // loc: [153.405, 23.29]
assign net__2385 = !(net__2359 ^ net__2457); // loc: [182.89, 31.11]
assign net__2387 = (!row_cnt_0) | (!row_cnt_2); // loc: [155.255, 31.11]
assign net__2393 = !(net__2425 ^ net__2553); // loc: [173.69, 23.29]
assign net__2394 = (!net__2430&net__2412); // loc: [161.205, 23.63]
assign net__2395 = (!net__2407&!net__2337); // loc: [153.405, 25.33]
assign net__2396 = (net__2407) | (net__2337); // loc: [156.625, 19.89]
assign net__2398 = (!net__2257&!net__2360); // loc: [153.875, 18.19]
assign net__2400 = (!net__2360&!net__2383); // loc: [150.185, 23.63]
assign net__2401 = (!net__2384&!net__2257); // loc: [152.035, 25.33]
assign net__2402 = net__2393 ^ net__2430; // loc: [174.57, 17.85]
assign net__2404 = (!net__2396) | (!net__2329); // loc: [153.405, 14.79]
assign net__2407 = (col_cnt_0&row_cnt_0); // loc: [167.21, 24.99]
assign net__2408 = (!net__2203&!net__2396); // loc: [154.785, 19.89]
assign net__2412 = (!net__2203) | (!net__2316); // loc: [162.155, 14.79]
assign net__2413 = (!net__2393) | (!net__2321); // loc: [164.455, 14.79]
assign net__2415 = (!net__2395&!net__2394); // loc: [159.395, 14.45]
assign net__2416 = (net__2408&net__2257) | (net__2418&net__2257); // loc: [163.995, 18.53]
assign net__2418 = (net__2402) | (net__2415); // loc: [159.855, 12.75]
assign net__2419 = (!net__2257&!net__2323); // loc: [187.915, 14.45]
assign net__2425 = (!col_cnt_1) | (!row_cnt_0_xor_rc1); // loc: [162.605, 12.41]
assign net__2426 = (net__2396&net__2394); // loc: [160.77, 19.55]
assign net__2427 = (net__2332&net__2404); // loc: [167.21, 13.09]
assign net__2430 = (!net__2203&!net__2316); // loc: [158.475, 18.19]
assign net__2438 = (net__2408) | (net__2329) | (net__2415); // loc: [159.85, 23.63]
assign net__2442 = (net__2257&net__2552) | (net__2427&net__2552); // loc: [182.385, 18.53]
assign net__2443 = (net__2408) | (net__2415) | (net__2215); // loc: [187.91, 23.63]
assign net__2457 = !(net__2230 ^ net__2311); // loc: [176.91, 39.61]
assign net__2459 = (net__2418&net__2385) | (net__2325&net__2306); // loc: [176.895, 23.63]
assign net__2463 = (net__2385&!net__2401) | (net__2413&!net__2401); // loc: [183.31, 27.71]
assign net__2466 = (net__2408&net__2560) | (net__2383&net__2560); // loc: [178.705, 13.09]
assign net__2470 = (!net__2385&!net__2438); // loc: [187.455, 12.75]
assign net__2474 = (!net__2408&!net__2257&!net__2402) | (!net__2384); // loc: [178.705, 22.61]
assign net__2476 = net__2257 ? net__2443 : net__2438; // loc: [181.925, 29.41]
assign net__2479 = (!net__2385&!net__2438) | (!net__2426&!net__2438); // loc: [180.09, 15.81]
assign net__2480 = net__2255 ? net__2459 : net__2499; // loc: [181.005, 35.87]
assign net__2483 = (net__2426) | (!net__2323); // loc: [184.235, 23.63]
assign net__2486 = net__2255 ? net__2571 : net__2466; // loc: [170.885, 14.11]
assign net__2491 = (net__2255&net__2401) | (!net__2508); // loc: [186.065, 39.95]
assign net__2499 = (net__2419) | (net__2512); // loc: [188.375, 39.95]
assign net__2500 = (!net__2385&!net__2215&!net__2254) | (!net__2255); // loc: [180.545, 26.35]
assign net__2501 = (net__2255&net__2400) | (net__2255&net__2500) | (net__2376&net__2400) | (net__2470&net__2400) | (net__2376&net__2500) | (net__2470&net__2500); // loc: [180.545, 41.31]
assign net__2503 = (net__2408) | (net__2257) | (net__2418); // loc: [186.99, 18.19]
assign net__2505 = (!net__2503&!net__2243) | (!net__2385&!net__2325); // loc: [180.545, 34.17]
assign net__2508 = (net__2385&net__2413) | (net__2416) | (net__2255); // loc: [186.065, 30.43]
assign net__2511 = (net__2255) | (net__2306) | (net__2551); // loc: [176.87, 18.19]
assign net__2512 = (net__2257&net__2323) | (net__2321&net__2323); // loc: [184.695, 19.55]
assign net__2551 = (net__2408&net__2385&net__2384) | (net__2402&net__2385&net__2384); // loc: [174.105, 15.47]
assign net__2552 = (net__2385) | (net__2323); // loc: [183.765, 12.75]
assign net__2553 = col_cnt_2 ^ net__2379; // loc: [173.65, 25.67]
assign net__2559 = (net__2257&net__2552) | (net__2483&net__2552) | (net__2257&net__2395) | (net__2483&net__2395); // loc: [175.045, 13.09]
assign net__2560 = (net__2385) | (net__2415); // loc: [184.225, 14.45]
assign net__2571 = (net__2257&net__2332&net__2404) | (net__2426); // loc: [181.015, 14.45]
assign row_cnt_0_xor_rc1 = row_cnt_0 ^ row_cnt_1; // loc: [166.29, 28.73]
 

//// Partition success gen, tnt vs star
 
//// Inputs
//clk3_14
//exact_two_in_each_col
//num_in_all_rows_2
//outputting
//rst_n
//total_inky_cnt_22
//two_in_each_group
//two_never_touched
 
//// Outputs
//TNT_not_STAR
//outputting_latched
//success
    // loc: [176.865, 272.51]
    always @(posedge clk3_14 or negedge rst_n)
        if (!rst_n) TNT_not_STAR <= 0;
        else               TNT_not_STAR <= net__68; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic TNT_not_STAR_changed;
                 always @(posedge clk3_14 or negedge rst_n)
                     if (!rst_n) TNT_not_STAR_changed <= 0;
                     else if (!enable && !TNT_not_STAR_changed) TNT_not_STAR_changed <= (TNT_not_STAR != net__68);
                 p_TNT_not_STAR_never_changed: assert property ( !TNT_not_STAR_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic TNT_not_STAR_changed;
                 always @(posedge clk3_14 or negedge rst_n)
                     if (!rst_n) TNT_not_STAR_changed <= 0;
                     else if (!TNT_not_STAR_changed) TNT_not_STAR_changed <= (TNT_not_STAR != net__68);
                 p_TNT_not_STAR_never_changed: assert property ( outputting_cnt_lt_15 || !TNT_not_STAR_changed);
 `endif
 
    
assign net__68 = (two_have_touched&succ_cond2&succ_cond3) | (TNT_not_STAR&succ_lat); // loc: [170.435, 276.59]
assign net__87 = (two_never_touched&succ_cond2&succ_cond3) | (success&succ_lat); // loc: [176.865, 278.29]
assign net__93 = (outputting) | (outputting_latched); // loc: [168.595, 281.01]
    // loc: [176.865, 283.39]
    always @(posedge clk3_14 or negedge rst_n)
        if (!rst_n) outputting_latched <= 0;
        else               outputting_latched <= net__93; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic outputting_latched_changed;
                 always @(posedge clk3_14 or negedge rst_n)
                     if (!rst_n) outputting_latched_changed <= 0;
                     else if (!enable && !outputting_latched_changed) outputting_latched_changed <= (outputting_latched != net__93);
                 p_outputting_latched_never_changed: assert property ( !outputting_latched_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic outputting_latched_changed;
                 always @(posedge clk3_14 or negedge rst_n)
                     if (!rst_n) outputting_latched_changed <= 0;
                     else if (!outputting_latched_changed) outputting_latched_changed <= (outputting_latched != net__93);
                 p_outputting_latched_never_changed: assert property ( outputting_cnt_lt_15 || !outputting_latched_changed);
 `endif
 
    
assign succ_cond2 = (num_in_all_rows_2&total_inky_cnt_22); // loc: [173.19, 269.79]
assign succ_cond3 = (!outputting_latched&outputting&two_in_each_group&exact_two_in_each_col); // loc: [172.265, 279.65]
assign succ_lat = (outputting_latched) | (!outputting); // loc: [170.425, 281.01]
    // loc: [181.005, 282.37]
    always @(posedge clk3_14 or negedge rst_n)
        if (!rst_n) success <= 0;
        else               success <= net__87; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic success_changed;
                 always @(posedge clk3_14 or negedge rst_n)
                     if (!rst_n) success_changed <= 0;
                     else if (!enable && !success_changed) success_changed <= (success != net__87);
                 p_success_never_changed: assert property ( !success_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic success_changed;
                 always @(posedge clk3_14 or negedge rst_n)
                     if (!rst_n) success_changed <= 0;
                     else if (!success_changed) success_changed <= (success != net__87);
                 p_success_never_changed: assert property ( outputting_cnt_lt_15 || !success_changed);
 `endif
 
    
assign two_have_touched = (!two_never_touched); // loc: [175.03, 276.25]
 

//// Partition two in each col and tnt
 
//// Inputs
//I
//clk2
//clk3_11
//clk4_4_1
//col_cnt_eq_5
//exact_two_used_col0
//exact_two_used_col1
//exact_two_used_col10
//exact_two_used_col2
//exact_two_used_col3
//exact_two_used_col4
//exact_two_used_col5
//exact_two_used_col6
//exact_two_used_col7
//exact_two_used_col8
//exact_two_used_col9
//hi
//input_unmasked
//n_first_col
//n_first_col_2
//rst_n
 
//// Outputs
//clk3_6
//exact_two_in_each_col
//two_never_touched
    // loc: [82.575, 158.27]
    always @(posedge clk3_11 or negedge rst_n)
        if (!rst_n) I_SHR0 <= 0;
        else               I_SHR0 <= net__1250; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic I_SHR0_changed;
                 always @(posedge clk3_11 or negedge rst_n)
                     if (!rst_n) I_SHR0_changed <= 0;
                     else if (!enable && !I_SHR0_changed) I_SHR0_changed <= (I_SHR0 != net__1250);
                 p_I_SHR0_never_changed: assert property ( !I_SHR0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic I_SHR0_changed;
                 always @(posedge clk3_11 or negedge rst_n)
                     if (!rst_n) I_SHR0_changed <= 0;
                     else if (!I_SHR0_changed) I_SHR0_changed <= (I_SHR0 != net__1250);
                 p_I_SHR0_never_changed: assert property ( outputting_cnt_lt_15 || !I_SHR0_changed);
 `endif
 
    
    // loc: [86.705, 157.25]
    always @(posedge clk3_6 or negedge rst_n)
        if (!rst_n) I_SHR1 <= 0;
        else               I_SHR1 <= net__1205; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic I_SHR1_changed;
                 always @(posedge clk3_6 or negedge rst_n)
                     if (!rst_n) I_SHR1_changed <= 0;
                     else if (!enable && !I_SHR1_changed) I_SHR1_changed <= (I_SHR1 != net__1205);
                 p_I_SHR1_never_changed: assert property ( !I_SHR1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic I_SHR1_changed;
                 always @(posedge clk3_6 or negedge rst_n)
                     if (!rst_n) I_SHR1_changed <= 0;
                     else if (!I_SHR1_changed) I_SHR1_changed <= (I_SHR1 != net__1205);
                 p_I_SHR1_never_changed: assert property ( outputting_cnt_lt_15 || !I_SHR1_changed);
 `endif
 
    
    // loc: [94.065, 147.39]
    always @(posedge clk3_7 or negedge rst_n)
        if (!rst_n) I_SHR10 <= 0;
        else               I_SHR10 <= net__1301; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic I_SHR10_changed;
                 always @(posedge clk3_7 or negedge rst_n)
                     if (!rst_n) I_SHR10_changed <= 0;
                     else if (!enable && !I_SHR10_changed) I_SHR10_changed <= (I_SHR10 != net__1301);
                 p_I_SHR10_never_changed: assert property ( !I_SHR10_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic I_SHR10_changed;
                 always @(posedge clk3_7 or negedge rst_n)
                     if (!rst_n) I_SHR10_changed <= 0;
                     else if (!I_SHR10_changed) I_SHR10_changed <= (I_SHR10 != net__1301);
                 p_I_SHR10_never_changed: assert property ( outputting_cnt_lt_15 || !I_SHR10_changed);
 `endif
 
    
    // loc: [93.145, 152.83]
    always @(posedge clk3_7 or negedge rst_n)
        if (!rst_n) I_SHR11 <= 0;
        else               I_SHR11 <= net__1195; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic I_SHR11_changed;
                 always @(posedge clk3_7 or negedge rst_n)
                     if (!rst_n) I_SHR11_changed <= 0;
                     else if (!enable && !I_SHR11_changed) I_SHR11_changed <= (I_SHR11 != net__1195);
                 p_I_SHR11_never_changed: assert property ( !I_SHR11_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic I_SHR11_changed;
                 always @(posedge clk3_7 or negedge rst_n)
                     if (!rst_n) I_SHR11_changed <= 0;
                     else if (!I_SHR11_changed) I_SHR11_changed <= (I_SHR11 != net__1195);
                 p_I_SHR11_never_changed: assert property ( outputting_cnt_lt_15 || !I_SHR11_changed);
 `endif
 
    
    // loc: [85.785, 163.71]
    always @(posedge clk3_11 or negedge rst_n)
        if (!rst_n) I_SHR2 <= 0;
        else               I_SHR2 <= net__1216; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic I_SHR2_changed;
                 always @(posedge clk3_11 or negedge rst_n)
                     if (!rst_n) I_SHR2_changed <= 0;
                     else if (!enable && !I_SHR2_changed) I_SHR2_changed <= (I_SHR2 != net__1216);
                 p_I_SHR2_never_changed: assert property ( !I_SHR2_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic I_SHR2_changed;
                 always @(posedge clk3_11 or negedge rst_n)
                     if (!rst_n) I_SHR2_changed <= 0;
                     else if (!I_SHR2_changed) I_SHR2_changed <= (I_SHR2 != net__1216);
                 p_I_SHR2_never_changed: assert property ( outputting_cnt_lt_15 || !I_SHR2_changed);
 `endif
 
    
    // loc: [78.435, 151.81]
    always @(posedge clk3_7 or negedge rst_n)
        if (!rst_n) I_SHR3 <= 0;
        else               I_SHR3 <= net__1204; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic I_SHR3_changed;
                 always @(posedge clk3_7 or negedge rst_n)
                     if (!rst_n) I_SHR3_changed <= 0;
                     else if (!enable && !I_SHR3_changed) I_SHR3_changed <= (I_SHR3 != net__1204);
                 p_I_SHR3_never_changed: assert property ( !I_SHR3_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic I_SHR3_changed;
                 always @(posedge clk3_7 or negedge rst_n)
                     if (!rst_n) I_SHR3_changed <= 0;
                     else if (!I_SHR3_changed) I_SHR3_changed <= (I_SHR3 != net__1204);
                 p_I_SHR3_never_changed: assert property ( outputting_cnt_lt_15 || !I_SHR3_changed);
 `endif
 
    
    // loc: [83.945, 146.37]
    always @(posedge clk3_6 or negedge rst_n)
        if (!rst_n) I_SHR4 <= 0;
        else               I_SHR4 <= net__1168; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic I_SHR4_changed;
                 always @(posedge clk3_6 or negedge rst_n)
                     if (!rst_n) I_SHR4_changed <= 0;
                     else if (!enable && !I_SHR4_changed) I_SHR4_changed <= (I_SHR4 != net__1168);
                 p_I_SHR4_never_changed: assert property ( !I_SHR4_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic I_SHR4_changed;
                 always @(posedge clk3_6 or negedge rst_n)
                     if (!rst_n) I_SHR4_changed <= 0;
                     else if (!I_SHR4_changed) I_SHR4_changed <= (I_SHR4 != net__1168);
                 p_I_SHR4_never_changed: assert property ( outputting_cnt_lt_15 || !I_SHR4_changed);
 `endif
 
    
    // loc: [77.515, 140.93]
    always @(posedge clk4_4_1 or negedge rst_n)
        if (!rst_n) I_SHR5 <= 0;
        else               I_SHR5 <= net__1331; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic I_SHR5_changed;
                 always @(posedge clk4_4_1 or negedge rst_n)
                     if (!rst_n) I_SHR5_changed <= 0;
                     else if (!enable && !I_SHR5_changed) I_SHR5_changed <= (I_SHR5 != net__1331);
                 p_I_SHR5_never_changed: assert property ( !I_SHR5_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic I_SHR5_changed;
                 always @(posedge clk4_4_1 or negedge rst_n)
                     if (!rst_n) I_SHR5_changed <= 0;
                     else if (!I_SHR5_changed) I_SHR5_changed <= (I_SHR5 != net__1331);
                 p_I_SHR5_never_changed: assert property ( outputting_cnt_lt_15 || !I_SHR5_changed);
 `endif
 
    
    // loc: [76.135, 147.39]
    always @(posedge clk3_7 or negedge rst_n)
        if (!rst_n) I_SHR6 <= 0;
        else               I_SHR6 <= net__1304; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic I_SHR6_changed;
                 always @(posedge clk3_7 or negedge rst_n)
                     if (!rst_n) I_SHR6_changed <= 0;
                     else if (!enable && !I_SHR6_changed) I_SHR6_changed <= (I_SHR6 != net__1304);
                 p_I_SHR6_never_changed: assert property ( !I_SHR6_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic I_SHR6_changed;
                 always @(posedge clk3_7 or negedge rst_n)
                     if (!rst_n) I_SHR6_changed <= 0;
                     else if (!I_SHR6_changed) I_SHR6_changed <= (I_SHR6 != net__1304);
                 p_I_SHR6_never_changed: assert property ( outputting_cnt_lt_15 || !I_SHR6_changed);
 `endif
 
    
    // loc: [78.435, 135.49]
    always @(posedge clk4_4_1 or negedge rst_n)
        if (!rst_n) I_SHR7 <= 0;
        else               I_SHR7 <= net__1335; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic I_SHR7_changed;
                 always @(posedge clk4_4_1 or negedge rst_n)
                     if (!rst_n) I_SHR7_changed <= 0;
                     else if (!enable && !I_SHR7_changed) I_SHR7_changed <= (I_SHR7 != net__1335);
                 p_I_SHR7_never_changed: assert property ( !I_SHR7_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic I_SHR7_changed;
                 always @(posedge clk4_4_1 or negedge rst_n)
                     if (!rst_n) I_SHR7_changed <= 0;
                     else if (!I_SHR7_changed) I_SHR7_changed <= (I_SHR7 != net__1335);
                 p_I_SHR7_never_changed: assert property ( outputting_cnt_lt_15 || !I_SHR7_changed);
 `endif
 
    
    // loc: [82.575, 136.51]
    always @(posedge clk4_4_1 or negedge rst_n)
        if (!rst_n) I_SHR8 <= 0;
        else               I_SHR8 <= net__1277; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic I_SHR8_changed;
                 always @(posedge clk4_4_1 or negedge rst_n)
                     if (!rst_n) I_SHR8_changed <= 0;
                     else if (!enable && !I_SHR8_changed) I_SHR8_changed <= (I_SHR8 != net__1277);
                 p_I_SHR8_never_changed: assert property ( !I_SHR8_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic I_SHR8_changed;
                 always @(posedge clk4_4_1 or negedge rst_n)
                     if (!rst_n) I_SHR8_changed <= 0;
                     else if (!I_SHR8_changed) I_SHR8_changed <= (I_SHR8 != net__1277);
                 p_I_SHR8_never_changed: assert property ( outputting_cnt_lt_15 || !I_SHR8_changed);
 `endif
 
    
    // loc: [91.765, 141.95]
    always @(posedge clk4_4_1 or negedge rst_n)
        if (!rst_n) I_SHR9 <= 0;
        else               I_SHR9 <= net__1303; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic I_SHR9_changed;
                 always @(posedge clk4_4_1 or negedge rst_n)
                     if (!rst_n) I_SHR9_changed <= 0;
                     else if (!enable && !I_SHR9_changed) I_SHR9_changed <= (I_SHR9 != net__1303);
                 p_I_SHR9_never_changed: assert property ( !I_SHR9_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic I_SHR9_changed;
                 always @(posedge clk4_4_1 or negedge rst_n)
                     if (!rst_n) I_SHR9_changed <= 0;
                     else if (!I_SHR9_changed) I_SHR9_changed <= (I_SHR9 != net__1303);
                 p_I_SHR9_never_changed: assert property ( outputting_cnt_lt_15 || !I_SHR9_changed);
 `endif
 
    
assign clk3_6 = (clk2); // loc: [60.95, 148.07]
assign clk3_7 = (clk2); // loc: [77.05, 151.13]
assign clk4_6 = (clk3_6); // loc: [60.03, 148.07]
assign clk4_7 = (clk3_7); // loc: [75.21, 142.63]
assign exact_two_in_each_col = (net__1173&net__1178&net__1164); // loc: [77.51, 158.95]
assign net__1164 = (exact_two_used_col9&exact_two_used_col8&exact_two_used_col10); // loc: [68.31, 153.51]
assign net__1165 = (hi&I_SHR10) | (col_cnt_eq_5&I_SHR9) | (two_touch_left_right); // loc: [69.205, 150.11]
assign net__1168 = input_unmasked ? I_SHR3 : I_SHR4; // loc: [76.135, 154.53]
assign net__1173 = (exact_two_used_col5&exact_two_used_col4&exact_two_used_col7&exact_two_used_col6); // loc: [71.535, 154.19]
assign net__1178 = (exact_two_used_col1&exact_two_used_col0&exact_two_used_col3&exact_two_used_col2); // loc: [74.755, 155.89]
assign net__1180 = (I&input_unmasked&net__1165) | (two_touched_any_dir_lat); // loc: [71.075, 155.89]
assign net__1195 = input_unmasked ? I_SHR10 : I_SHR11; // loc: [83.945, 154.53]
assign net__1204 = input_unmasked ? I_SHR2 : I_SHR3; // loc: [78.885, 160.99]
assign net__1205 = input_unmasked ? I_SHR0 : I_SHR1; // loc: [77.975, 159.97]
assign net__1216 = input_unmasked ? I_SHR1 : I_SHR2; // loc: [79.355, 160.99]
assign net__1250 = input_unmasked ? I : I_SHR0; // loc: [91.765, 155.55]
assign net__1277 = input_unmasked ? I_SHR7 : I_SHR8; // loc: [81.645, 138.21]
assign net__1301 = input_unmasked ? I_SHR9 : I_SHR10; // loc: [88.095, 144.67]
assign net__1303 = input_unmasked ? I_SHR8 : I_SHR9; // loc: [82.565, 143.65]
assign net__1304 = input_unmasked ? I_SHR5 : I_SHR6; // loc: [74.285, 144.67]
assign net__1331 = input_unmasked ? I_SHR4 : I_SHR5; // loc: [73.365, 149.09]
assign net__1335 = input_unmasked ? I_SHR6 : I_SHR7; // loc: [74.285, 143.65]
assign two_never_touched = (!two_touched_any_dir_lat); // loc: [85.33, 145.69]
assign two_touch_left_right = (n_first_col_2&I_SHR11) | (n_first_col&I_SHR0); // loc: [83.925, 161.33]
    // loc: [96.825, 151.81]
    always @(posedge clk3_7 or negedge rst_n)
        if (!rst_n) two_touched_any_dir_lat <= 0;
        else               two_touched_any_dir_lat <= net__1180; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic two_touched_any_dir_lat_changed;
                 always @(posedge clk3_7 or negedge rst_n)
                     if (!rst_n) two_touched_any_dir_lat_changed <= 0;
                     else if (!enable && !two_touched_any_dir_lat_changed) two_touched_any_dir_lat_changed <= (two_touched_any_dir_lat != net__1180);
                 p_two_touched_any_dir_lat_never_changed: assert property ( !two_touched_any_dir_lat_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic two_touched_any_dir_lat_changed;
                 always @(posedge clk3_7 or negedge rst_n)
                     if (!rst_n) two_touched_any_dir_lat_changed <= 0;
                     else if (!two_touched_any_dir_lat_changed) two_touched_any_dir_lat_changed <= (two_touched_any_dir_lat != net__1180);
                 p_two_touched_any_dir_lat_never_changed: assert property ( outputting_cnt_lt_15 || !two_touched_any_dir_lat_changed);
 `endif
 
    
 

//// Partition two in each group
 
//// Inputs
//I
//clk2
//clk3_11
//clk3_2
//clk3_3
//clk4_4_1
//group_select0
//group_select1
//group_select2
//group_select3
//input_unmasked
//rst_n
 
//// Outputs
//two_in_grp_A
//two_in_grp_B
//two_in_grp_C
//two_in_grp_D
//two_in_grp_F
//two_in_grp_G
//two_in_grp_J
//two_in_grp_N
//two_in_grp_S
//two_in_grp_ST
//two_in_grp_T
assign clk3_10 = (clk2); // loc: [121.67, 91.29]
assign clk3_5 = (clk2); // loc: [123.05, 85.85]
assign clk4_10 = (clk3_10); // loc: [128.57, 91.29]
assign clk4_5 = (clk3_5); // loc: [126.27, 85.85]
assign curr_cell_is_group_A = (!group_select2&!group_select3&group_select1&group_select0); // loc: [121.665, 69.87]
assign curr_cell_is_group_B = (!group_select0&!group_select3&group_select2&group_select1); // loc: [117.075, 131.41]
assign curr_cell_is_group_D = (!group_select0&!group_select2&group_select3&group_select1); // loc: [117.075, 87.89]
assign curr_cell_is_group_G = (!group_select1&!group_select3&group_select2&group_select0); // loc: [117.075, 142.29]
assign curr_cell_is_group_J = (!group_select0&!group_select1&!group_select2&!group_select3); // loc: [116.125, 58.99]
assign curr_cell_is_group_S = (!group_select2&group_select3&group_select1&group_select0); // loc: [118.445, 127.33]
assign curr_cell_is_group_T = (!group_select1&!group_select2&group_select3&group_select0); // loc: [117.075, 102.51]
assign curr_cell_isn_group_C = (group_select1) | (group_select2) | (group_select3) | (!group_select0); // loc: [112.475, 71.23]
assign curr_cell_isn_group_F = (group_select0) | (group_select1) | (group_select3) | (!group_select2); // loc: [123.045, 141.95]
assign curr_cell_isn_group_N = (group_select0) | (group_select1) | (group_select2) | (!group_select3); // loc: [117.525, 86.53]
assign curr_cell_isn_group_ST = (group_select0) | (group_select2) | (group_select3) | (!group_select1); // loc: [120.745, 60.35]
    // loc: [123.965, 75.65]
    always @(posedge clk3_2 or negedge rst_n)
        if (!rst_n) grp_A0 <= 0;
        else               grp_A0 <= net__2151; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_A0_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) grp_A0_changed <= 0;
                     else if (!enable && !grp_A0_changed) grp_A0_changed <= (grp_A0 != net__2151);
                 p_grp_A0_never_changed: assert property ( !grp_A0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_A0_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) grp_A0_changed <= 0;
                     else if (!grp_A0_changed) grp_A0_changed <= (grp_A0 != net__2151);
                 p_grp_A0_never_changed: assert property ( outputting_cnt_lt_15 || !grp_A0_changed);
 `endif
 
    
    // loc: [123.965, 82.11]
    always @(posedge clk3_2 or negedge rst_n)
        if (!rst_n) grp_A1 <= 0;
        else               grp_A1 <= net__1666; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_A1_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) grp_A1_changed <= 0;
                     else if (!enable && !grp_A1_changed) grp_A1_changed <= (grp_A1 != net__1666);
                 p_grp_A1_never_changed: assert property ( !grp_A1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_A1_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) grp_A1_changed <= 0;
                     else if (!grp_A1_changed) grp_A1_changed <= (grp_A1 != net__1666);
                 p_grp_A1_never_changed: assert property ( outputting_cnt_lt_15 || !grp_A1_changed);
 `endif
 
    
    // loc: [115.695, 140.93]
    always @(posedge clk3_3 or negedge rst_n)
        if (!rst_n) grp_B0 <= 0;
        else               grp_B0 <= net__1850; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_B0_changed;
                 always @(posedge clk3_3 or negedge rst_n)
                     if (!rst_n) grp_B0_changed <= 0;
                     else if (!enable && !grp_B0_changed) grp_B0_changed <= (grp_B0 != net__1850);
                 p_grp_B0_never_changed: assert property ( !grp_B0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_B0_changed;
                 always @(posedge clk3_3 or negedge rst_n)
                     if (!rst_n) grp_B0_changed <= 0;
                     else if (!grp_B0_changed) grp_B0_changed <= (grp_B0 != net__1850);
                 p_grp_B0_never_changed: assert property ( outputting_cnt_lt_15 || !grp_B0_changed);
 `endif
 
    
    // loc: [118.915, 135.49]
    always @(posedge clk3_3 or negedge rst_n)
        if (!rst_n) grp_B1 <= 0;
        else               grp_B1 <= net__1849; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_B1_changed;
                 always @(posedge clk3_3 or negedge rst_n)
                     if (!rst_n) grp_B1_changed <= 0;
                     else if (!enable && !grp_B1_changed) grp_B1_changed <= (grp_B1 != net__1849);
                 p_grp_B1_never_changed: assert property ( !grp_B1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_B1_changed;
                 always @(posedge clk3_3 or negedge rst_n)
                     if (!rst_n) grp_B1_changed <= 0;
                     else if (!grp_B1_changed) grp_B1_changed <= (grp_B1 != net__1849);
                 p_grp_B1_never_changed: assert property ( outputting_cnt_lt_15 || !grp_B1_changed);
 `endif
 
    
    // loc: [124.885, 76.67]
    always @(posedge clk3_5 or negedge rst_n)
        if (!rst_n) grp_C0 <= 0;
        else               grp_C0 <= net__2143; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_C0_changed;
                 always @(posedge clk3_5 or negedge rst_n)
                     if (!rst_n) grp_C0_changed <= 0;
                     else if (!enable && !grp_C0_changed) grp_C0_changed <= (grp_C0 != net__2143);
                 p_grp_C0_never_changed: assert property ( !grp_C0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_C0_changed;
                 always @(posedge clk3_5 or negedge rst_n)
                     if (!rst_n) grp_C0_changed <= 0;
                     else if (!grp_C0_changed) grp_C0_changed <= (grp_C0 != net__2143);
                 p_grp_C0_never_changed: assert property ( outputting_cnt_lt_15 || !grp_C0_changed);
 `endif
 
    
    // loc: [114.315, 81.09]
    always @(posedge clk3_5 or negedge rst_n)
        if (!rst_n) grp_C1 <= 0;
        else               grp_C1 <= net__1667; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_C1_changed;
                 always @(posedge clk3_5 or negedge rst_n)
                     if (!rst_n) grp_C1_changed <= 0;
                     else if (!enable && !grp_C1_changed) grp_C1_changed <= (grp_C1 != net__1667);
                 p_grp_C1_never_changed: assert property ( !grp_C1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_C1_changed;
                 always @(posedge clk3_5 or negedge rst_n)
                     if (!rst_n) grp_C1_changed <= 0;
                     else if (!grp_C1_changed) grp_C1_changed <= (grp_C1 != net__1667);
                 p_grp_C1_never_changed: assert property ( outputting_cnt_lt_15 || !grp_C1_changed);
 `endif
 
    
    // loc: [123.965, 98.43]
    always @(posedge clk3_10 or negedge rst_n)
        if (!rst_n) grp_D0 <= 0;
        else               grp_D0 <= net__2026; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_D0_changed;
                 always @(posedge clk3_10 or negedge rst_n)
                     if (!rst_n) grp_D0_changed <= 0;
                     else if (!enable && !grp_D0_changed) grp_D0_changed <= (grp_D0 != net__2026);
                 p_grp_D0_never_changed: assert property ( !grp_D0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_D0_changed;
                 always @(posedge clk3_10 or negedge rst_n)
                     if (!rst_n) grp_D0_changed <= 0;
                     else if (!grp_D0_changed) grp_D0_changed <= (grp_D0 != net__2026);
                 p_grp_D0_never_changed: assert property ( outputting_cnt_lt_15 || !grp_D0_changed);
 `endif
 
    
    // loc: [132.245, 97.41]
    always @(posedge clk3_10 or negedge rst_n)
        if (!rst_n) grp_D1 <= 0;
        else               grp_D1 <= net__2013; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_D1_changed;
                 always @(posedge clk3_10 or negedge rst_n)
                     if (!rst_n) grp_D1_changed <= 0;
                     else if (!enable && !grp_D1_changed) grp_D1_changed <= (grp_D1 != net__2013);
                 p_grp_D1_never_changed: assert property ( !grp_D1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_D1_changed;
                 always @(posedge clk3_10 or negedge rst_n)
                     if (!rst_n) grp_D1_changed <= 0;
                     else if (!grp_D1_changed) grp_D1_changed <= (grp_D1 != net__2013);
                 p_grp_D1_never_changed: assert property ( outputting_cnt_lt_15 || !grp_D1_changed);
 `endif
 
    
    // loc: [114.775, 136.51]
    always @(posedge clk3_3 or negedge rst_n)
        if (!rst_n) grp_F0 <= 0;
        else               grp_F0 <= net__1927; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_F0_changed;
                 always @(posedge clk3_3 or negedge rst_n)
                     if (!rst_n) grp_F0_changed <= 0;
                     else if (!enable && !grp_F0_changed) grp_F0_changed <= (grp_F0 != net__1927);
                 p_grp_F0_never_changed: assert property ( !grp_F0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_F0_changed;
                 always @(posedge clk3_3 or negedge rst_n)
                     if (!rst_n) grp_F0_changed <= 0;
                     else if (!grp_F0_changed) grp_F0_changed <= (grp_F0 != net__1927);
                 p_grp_F0_never_changed: assert property ( outputting_cnt_lt_15 || !grp_F0_changed);
 `endif
 
    
    // loc: [115.695, 130.05]
    always @(posedge clk3_3 or negedge rst_n)
        if (!rst_n) grp_F1 <= 0;
        else               grp_F1 <= net__1867; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_F1_changed;
                 always @(posedge clk3_3 or negedge rst_n)
                     if (!rst_n) grp_F1_changed <= 0;
                     else if (!enable && !grp_F1_changed) grp_F1_changed <= (grp_F1 != net__1867);
                 p_grp_F1_never_changed: assert property ( !grp_F1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_F1_changed;
                 always @(posedge clk3_3 or negedge rst_n)
                     if (!rst_n) grp_F1_changed <= 0;
                     else if (!grp_F1_changed) grp_F1_changed <= (grp_F1 != net__1867);
                 p_grp_F1_never_changed: assert property ( outputting_cnt_lt_15 || !grp_F1_changed);
 `endif
 
    
    // loc: [123.965, 147.39]
    always @(posedge clk3_11 or negedge rst_n)
        if (!rst_n) grp_G0 <= 0;
        else               grp_G0 <= net__1920; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_G0_changed;
                 always @(posedge clk3_11 or negedge rst_n)
                     if (!rst_n) grp_G0_changed <= 0;
                     else if (!enable && !grp_G0_changed) grp_G0_changed <= (grp_G0 != net__1920);
                 p_grp_G0_never_changed: assert property ( !grp_G0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_G0_changed;
                 always @(posedge clk3_11 or negedge rst_n)
                     if (!rst_n) grp_G0_changed <= 0;
                     else if (!grp_G0_changed) grp_G0_changed <= (grp_G0 != net__1920);
                 p_grp_G0_never_changed: assert property ( outputting_cnt_lt_15 || !grp_G0_changed);
 `endif
 
    
    // loc: [118.915, 146.37]
    always @(posedge clk3_3 or negedge rst_n)
        if (!rst_n) grp_G1 <= 0;
        else               grp_G1 <= net__673; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_G1_changed;
                 always @(posedge clk3_3 or negedge rst_n)
                     if (!rst_n) grp_G1_changed <= 0;
                     else if (!enable && !grp_G1_changed) grp_G1_changed <= (grp_G1 != net__673);
                 p_grp_G1_never_changed: assert property ( !grp_G1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_G1_changed;
                 always @(posedge clk3_3 or negedge rst_n)
                     if (!rst_n) grp_G1_changed <= 0;
                     else if (!grp_G1_changed) grp_G1_changed <= (grp_G1 != net__673);
                 p_grp_G1_never_changed: assert property ( outputting_cnt_lt_15 || !grp_G1_changed);
 `endif
 
    
    // loc: [123.965, 49.47]
    always @(posedge clk3_5 or negedge rst_n)
        if (!rst_n) grp_J0 <= 0;
        else               grp_J0 <= net__2176; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_J0_changed;
                 always @(posedge clk3_5 or negedge rst_n)
                     if (!rst_n) grp_J0_changed <= 0;
                     else if (!enable && !grp_J0_changed) grp_J0_changed <= (grp_J0 != net__2176);
                 p_grp_J0_never_changed: assert property ( !grp_J0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_J0_changed;
                 always @(posedge clk3_5 or negedge rst_n)
                     if (!rst_n) grp_J0_changed <= 0;
                     else if (!grp_J0_changed) grp_J0_changed <= (grp_J0 != net__2176);
                 p_grp_J0_never_changed: assert property ( outputting_cnt_lt_15 || !grp_J0_changed);
 `endif
 
    
    // loc: [127.185, 48.45]
    always @(posedge clk3_5 or negedge rst_n)
        if (!rst_n) grp_J1 <= 0;
        else               grp_J1 <= net__2091; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_J1_changed;
                 always @(posedge clk3_5 or negedge rst_n)
                     if (!rst_n) grp_J1_changed <= 0;
                     else if (!enable && !grp_J1_changed) grp_J1_changed <= (grp_J1 != net__2091);
                 p_grp_J1_never_changed: assert property ( !grp_J1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_J1_changed;
                 always @(posedge clk3_5 or negedge rst_n)
                     if (!rst_n) grp_J1_changed <= 0;
                     else if (!grp_J1_changed) grp_J1_changed <= (grp_J1 != net__2091);
                 p_grp_J1_never_changed: assert property ( outputting_cnt_lt_15 || !grp_J1_changed);
 `endif
 
    
    // loc: [114.315, 97.41]
    always @(posedge clk3_10 or negedge rst_n)
        if (!rst_n) grp_N0 <= 0;
        else               grp_N0 <= net__2029; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_N0_changed;
                 always @(posedge clk3_10 or negedge rst_n)
                     if (!rst_n) grp_N0_changed <= 0;
                     else if (!enable && !grp_N0_changed) grp_N0_changed <= (grp_N0 != net__2029);
                 p_grp_N0_never_changed: assert property ( !grp_N0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_N0_changed;
                 always @(posedge clk3_10 or negedge rst_n)
                     if (!rst_n) grp_N0_changed <= 0;
                     else if (!grp_N0_changed) grp_N0_changed <= (grp_N0 != net__2029);
                 p_grp_N0_never_changed: assert property ( outputting_cnt_lt_15 || !grp_N0_changed);
 `endif
 
    
    // loc: [124.885, 92.99]
    always @(posedge clk3_5 or negedge rst_n)
        if (!rst_n) grp_N1 <= 0;
        else               grp_N1 <= net__2038; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_N1_changed;
                 always @(posedge clk3_5 or negedge rst_n)
                     if (!rst_n) grp_N1_changed <= 0;
                     else if (!enable && !grp_N1_changed) grp_N1_changed <= (grp_N1 != net__2038);
                 p_grp_N1_never_changed: assert property ( !grp_N1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_N1_changed;
                 always @(posedge clk3_5 or negedge rst_n)
                     if (!rst_n) grp_N1_changed <= 0;
                     else if (!grp_N1_changed) grp_N1_changed <= (grp_N1 != net__2038);
                 p_grp_N1_never_changed: assert property ( outputting_cnt_lt_15 || !grp_N1_changed);
 `endif
 
    
    // loc: [123.045, 124.61]
    always @(posedge clk4_4_1 or negedge rst_n)
        if (!rst_n) grp_S0 <= 0;
        else               grp_S0 <= net__1943; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_S0_changed;
                 always @(posedge clk4_4_1 or negedge rst_n)
                     if (!rst_n) grp_S0_changed <= 0;
                     else if (!enable && !grp_S0_changed) grp_S0_changed <= (grp_S0 != net__1943);
                 p_grp_S0_never_changed: assert property ( !grp_S0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_S0_changed;
                 always @(posedge clk4_4_1 or negedge rst_n)
                     if (!rst_n) grp_S0_changed <= 0;
                     else if (!grp_S0_changed) grp_S0_changed <= (grp_S0 != net__1943);
                 p_grp_S0_never_changed: assert property ( outputting_cnt_lt_15 || !grp_S0_changed);
 `endif
 
    
    // loc: [124.885, 114.75]
    always @(posedge clk4_4_1 or negedge rst_n)
        if (!rst_n) grp_S1 <= 0;
        else               grp_S1 <= net__1840; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_S1_changed;
                 always @(posedge clk4_4_1 or negedge rst_n)
                     if (!rst_n) grp_S1_changed <= 0;
                     else if (!enable && !grp_S1_changed) grp_S1_changed <= (grp_S1 != net__1840);
                 p_grp_S1_never_changed: assert property ( !grp_S1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_S1_changed;
                 always @(posedge clk4_4_1 or negedge rst_n)
                     if (!rst_n) grp_S1_changed <= 0;
                     else if (!grp_S1_changed) grp_S1_changed <= (grp_S1 != net__1840);
                 p_grp_S1_never_changed: assert property ( outputting_cnt_lt_15 || !grp_S1_changed);
 `endif
 
    
    // loc: [115.695, 71.23]
    always @(posedge clk3_5 or negedge rst_n)
        if (!rst_n) grp_ST0 <= 0;
        else               grp_ST0 <= net__2104; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_ST0_changed;
                 always @(posedge clk3_5 or negedge rst_n)
                     if (!rst_n) grp_ST0_changed <= 0;
                     else if (!enable && !grp_ST0_changed) grp_ST0_changed <= (grp_ST0 != net__2104);
                 p_grp_ST0_never_changed: assert property ( !grp_ST0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_ST0_changed;
                 always @(posedge clk3_5 or negedge rst_n)
                     if (!rst_n) grp_ST0_changed <= 0;
                     else if (!grp_ST0_changed) grp_ST0_changed <= (grp_ST0 != net__2104);
                 p_grp_ST0_never_changed: assert property ( outputting_cnt_lt_15 || !grp_ST0_changed);
 `endif
 
    
    // loc: [123.045, 64.77]
    always @(posedge clk3_2 or negedge rst_n)
        if (!rst_n) grp_ST1 <= 0;
        else               grp_ST1 <= net__2114; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_ST1_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) grp_ST1_changed <= 0;
                     else if (!enable && !grp_ST1_changed) grp_ST1_changed <= (grp_ST1 != net__2114);
                 p_grp_ST1_never_changed: assert property ( !grp_ST1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_ST1_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) grp_ST1_changed <= 0;
                     else if (!grp_ST1_changed) grp_ST1_changed <= (grp_ST1 != net__2114);
                 p_grp_ST1_never_changed: assert property ( outputting_cnt_lt_15 || !grp_ST1_changed);
 `endif
 
    
    // loc: [115.695, 109.31]
    always @(posedge clk3_10 or negedge rst_n)
        if (!rst_n) grp_T0 <= 0;
        else               grp_T0 <= net__2012; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_T0_changed;
                 always @(posedge clk3_10 or negedge rst_n)
                     if (!rst_n) grp_T0_changed <= 0;
                     else if (!enable && !grp_T0_changed) grp_T0_changed <= (grp_T0 != net__2012);
                 p_grp_T0_never_changed: assert property ( !grp_T0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_T0_changed;
                 always @(posedge clk3_10 or negedge rst_n)
                     if (!rst_n) grp_T0_changed <= 0;
                     else if (!grp_T0_changed) grp_T0_changed <= (grp_T0 != net__2012);
                 p_grp_T0_never_changed: assert property ( outputting_cnt_lt_15 || !grp_T0_changed);
 `endif
 
    
    // loc: [118.915, 108.29]
    always @(posedge clk3_10 or negedge rst_n)
        if (!rst_n) grp_T1 <= 0;
        else               grp_T1 <= net__2003; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic grp_T1_changed;
                 always @(posedge clk3_10 or negedge rst_n)
                     if (!rst_n) grp_T1_changed <= 0;
                     else if (!enable && !grp_T1_changed) grp_T1_changed <= (grp_T1 != net__2003);
                 p_grp_T1_never_changed: assert property ( !grp_T1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic grp_T1_changed;
                 always @(posedge clk3_10 or negedge rst_n)
                     if (!rst_n) grp_T1_changed <= 0;
                     else if (!grp_T1_changed) grp_T1_changed <= (grp_T1 != net__2003);
                 p_grp_T1_never_changed: assert property ( outputting_cnt_lt_15 || !grp_T1_changed);
 `endif
 
    
assign n_set_A1 = (!I) | (!input_unmasked) | (!grp_A0) | (!curr_cell_is_group_A); // loc: [112.465, 77.69]
assign n_set_B1 = (!I) | (!input_unmasked) | (!grp_B0) | (!curr_cell_is_group_B); // loc: [117.075, 134.47]
assign n_set_D1 = (!I) | (!input_unmasked) | (!grp_D0) | (!curr_cell_is_group_D); // loc: [118.455, 90.95]
assign n_set_G1 = (!I) | (!input_unmasked) | (!grp_G0) | (!curr_cell_is_group_G); // loc: [114.765, 145.35]
assign n_set_J1 = (!I) | (!input_unmasked) | (!grp_J0) | (!curr_cell_is_group_J); // loc: [117.065, 52.87]
assign n_set_S1 = (!I) | (!input_unmasked) | (!grp_S0) | (!curr_cell_is_group_S); // loc: [116.145, 121.21]
assign n_set_T1 = (!I) | (!input_unmasked) | (!grp_T0) | (!curr_cell_is_group_T); // loc: [114.765, 107.27]
assign net__1666 = (grp_A1) | (!n_set_A1); // loc: [111.555, 79.73]
assign net__1667 = (grp_C0&net__2150) | (grp_C1); // loc: [110.635, 73.95]
assign net__1840 = (grp_S1) | (!n_set_S1); // loc: [114.305, 116.11]
assign net__1849 = (grp_B1) | (!n_set_B1); // loc: [126.275, 139.57]
assign net__1850 = (grp_B1&net__1884) | (n_set_B1&net__1884); // loc: [121.205, 132.77]
assign net__1865 = (!I) | (!input_unmasked); // loc: [123.965, 132.09]
assign net__1867 = (grp_F0&net__1874) | (grp_F1); // loc: [115.225, 132.77]
assign net__1874 = (!curr_cell_isn_group_F&!net__1865); // loc: [125.355, 137.87]
assign net__1884 = (I&input_unmasked&curr_cell_is_group_B) | (grp_B0); // loc: [112.465, 132.43]
assign net__1917 = (I&input_unmasked&curr_cell_is_group_G) | (grp_G0); // loc: [112.935, 143.31]
assign net__1920 = (grp_G1&net__1917) | (n_set_G1&net__1917); // loc: [112.465, 149.09]
assign net__1924 = (grp_F1) | (net__1930) | (curr_cell_isn_group_F) | (net__1865); // loc: [110.625, 134.13]
assign net__1927 = (grp_F0&net__1924) | (net__1874&net__1924); // loc: [111.545, 138.21]
assign net__1930 = (!grp_F0); // loc: [114.31, 129.37]
assign net__1939 = (I&input_unmasked&curr_cell_is_group_S) | (grp_S0); // loc: [118.905, 117.81]
assign net__1943 = (grp_S1&net__1939) | (n_set_S1&net__1939); // loc: [119.825, 117.47]
assign net__1973 = (grp_N1) | (net__1995) | (curr_cell_isn_group_N) | (net__2048); // loc: [123.055, 88.91]
assign net__1975 = (I&input_unmasked&curr_cell_is_group_D) | (grp_D0); // loc: [112.925, 96.05]
assign net__1991 = (I&input_unmasked&curr_cell_is_group_T) | (grp_T0); // loc: [116.605, 105.23]
assign net__1995 = (!grp_N0); // loc: [114.31, 102.17]
assign net__2003 = (grp_T1) | (!n_set_T1); // loc: [120.755, 112.37]
assign net__2012 = (grp_T1&net__1991) | (n_set_T1&net__1991); // loc: [119.375, 105.57]
assign net__2013 = (grp_D1) | (!n_set_D1); // loc: [121.665, 105.23]
assign net__2026 = (grp_D1&net__1975) | (n_set_D1&net__1975); // loc: [112.465, 100.13]
assign net__2029 = (grp_N0&net__1973) | (net__2031&net__1973); // loc: [110.165, 94.69]
assign net__2031 = (!curr_cell_isn_group_N&!net__2048); // loc: [114.305, 88.91]
assign net__2038 = (grp_N0&net__2031) | (grp_N1); // loc: [115.225, 94.69]
assign net__2045 = (!grp_C0); // loc: [114.31, 74.97]
assign net__2048 = (!I) | (!input_unmasked); // loc: [112.935, 90.95]
assign net__2081 = (!I) | (!input_unmasked); // loc: [114.775, 61.37]
assign net__2082 = (!curr_cell_isn_group_ST&!net__2081); // loc: [123.055, 67.15]
assign net__2091 = (grp_J1) | (!n_set_J1); // loc: [118.445, 45.39]
assign net__2097 = (I&input_unmasked&curr_cell_is_group_A) | (grp_A0); // loc: [124.895, 74.29]
assign net__2104 = (grp_ST0&net__2162) | (net__2082&net__2162); // loc: [120.755, 67.49]
assign net__2114 = (grp_ST0&net__2082) | (grp_ST1); // loc: [112.475, 67.49]
assign net__2122 = (!I) | (!input_unmasked); // loc: [111.085, 69.19]
assign net__2143 = (grp_C0&net__2155) | (net__2150&net__2155); // loc: [117.535, 67.49]
assign net__2150 = (!curr_cell_isn_group_C&!net__2122); // loc: [110.635, 72.59]
assign net__2151 = (grp_A1&net__2097) | (n_set_A1&net__2097); // loc: [117.535, 68.51]
assign net__2155 = (grp_C1) | (net__2045) | (curr_cell_isn_group_C) | (net__2122); // loc: [107.405, 74.29]
assign net__2157 = (!grp_ST0); // loc: [114.31, 69.53]
assign net__2162 = (grp_ST1) | (net__2157) | (curr_cell_isn_group_ST) | (net__2081); // loc: [117.535, 61.71]
assign net__2176 = (grp_J1&net__2189) | (n_set_J1&net__2189); // loc: [115.685, 46.75]
assign net__2189 = (I&input_unmasked&curr_cell_is_group_J) | (grp_J0); // loc: [115.235, 56.27]
assign net__673 = (grp_G1) | (!n_set_G1); // loc: [120.755, 150.45]
assign two_in_grp_A = (!grp_A0&grp_A1); // loc: [108.765, 78.03]
assign two_in_grp_B = (!grp_B0&grp_B1); // loc: [110.605, 139.57]
assign two_in_grp_C = (grp_C1&net__2045); // loc: [112.93, 83.81]
assign two_in_grp_D = (!grp_D0&grp_D1); // loc: [121.185, 101.49]
assign two_in_grp_F = (grp_F1&net__1930); // loc: [111.09, 128.35]
assign two_in_grp_G = (!grp_G0&grp_G1); // loc: [116.585, 150.45]
assign two_in_grp_J = (!grp_J0&grp_J1); // loc: [121.185, 52.53]
assign two_in_grp_N = (grp_N1&net__1995); // loc: [109.71, 100.13]
assign two_in_grp_S = (!grp_S0&grp_S1); // loc: [120.265, 121.55]
assign two_in_grp_ST = (grp_ST1&net__2157); // loc: [111.09, 63.07]
assign two_in_grp_T = (!grp_T0&grp_T1); // loc: [116.585, 112.37]
endmodule