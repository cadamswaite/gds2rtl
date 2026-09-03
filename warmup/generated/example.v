module demo (A, B, S, clk, en, rst_n);
 input A;
 input B;
 input clk;
 input en;
 input rst_n;
 output S; // loc: [73.365, 48.11]
 (* ivl_do_not_elide *) reg A_SH0; // loc: [38.865, 71.23]
 (* ivl_do_not_elide *) reg A_SH1; // loc: [38.865, 65.79]
 (* ivl_do_not_elide *) reg A_SH2; // loc: [38.865, 76.67]
 (* ivl_do_not_elide *) reg A_SH3; // loc: [35.185, 70.21]
 (* ivl_do_not_elide *) reg A_SH4; // loc: [35.185, 75.65]
 (* ivl_do_not_elide *) reg A_SH5; // loc: [45.305, 70.21]
 (* ivl_do_not_elide *) reg A_SH6; // loc: [45.305, 75.65]
 (* ivl_do_not_elide *) reg A_SH7; // loc: [38.865, 60.35]
 (* ivl_do_not_elide *) reg B_SH0; // loc: [38.865, 27.71]
 (* ivl_do_not_elide *) reg B_SH1; // loc: [38.865, 33.15]
 (* ivl_do_not_elide *) reg B_SH2; // loc: [35.185, 32.13]
 (* ivl_do_not_elide *) reg B_SH3; // loc: [45.305, 32.13]
 (* ivl_do_not_elide *) reg B_SH4; // loc: [38.865, 22.27]
 (* ivl_do_not_elide *) reg B_SH5; // loc: [38.865, 38.59]
 (* ivl_do_not_elide *) reg B_SH6; // loc: [26.915, 26.69]
 (* ivl_do_not_elide *) reg B_SH7; // loc: [35.185, 37.57]
 (* ivl_do_not_elide *) wire SUM0; // loc: [67.85, 35.87]
 (* ivl_do_not_elide *) wire SUM1; // loc: [75.71, 25.67]
 (* ivl_do_not_elide *) wire SUM2; // loc: [75.67, 31.11]
 (* ivl_do_not_elide *) wire SUM3; // loc: [80.73, 28.73]
 (* ivl_do_not_elide *) wire SUM4; // loc: [74.29, 23.29]
 (* ivl_do_not_elide *) wire SUM5; // loc: [74.29, 34.17]
 (* ivl_do_not_elide *) wire SUM6; // loc: [68.35, 28.73]
 (* ivl_do_not_elide *) wire SUM7; // loc: [70.11, 20.23]
 (* ivl_do_not_elide *) wire SUM8; // loc: [68.31, 31.11]
 (* ivl_do_not_elide *) wire clk2; // loc: [40.25, 49.81]
 (* ivl_do_not_elide *) wire clk3_1; // loc: [39.33, 44.37]
 (* ivl_do_not_elide *) wire clk3_2; // loc: [27.37, 64.43]
 (* ivl_do_not_elide *) wire net__120; // loc: [25.985, 30.43]
 (* ivl_do_not_elide *) wire net__121; // loc: [33.805, 19.55]
 (* ivl_do_not_elide *) wire net__139; // loc: [21.845, 30.43]
 (* ivl_do_not_elide *) wire net__14; // loc: [72.45, 53.21]
 (* ivl_do_not_elide *) wire net__148; // loc: [30.135, 41.31]
 (* ivl_do_not_elide *) wire net__154; // loc: [29.665, 34.85]
 (* ivl_do_not_elide *) wire net__166; // loc: [36.575, 35.87]
 (* ivl_do_not_elide *) wire net__173; // loc: [36.575, 24.99]
 (* ivl_do_not_elide *) wire net__19; // loc: [30.135, 57.63]
 (* ivl_do_not_elide *) wire net__193; // loc: [29.665, 29.41]
 (* ivl_do_not_elide *) wire net__21; // loc: [25.995, 67.49]
 (* ivl_do_not_elide *) wire net__219; // loc: [69.23, 19.55]
 (* ivl_do_not_elide *) wire net__22; // loc: [39.795, 72.93]
 (* ivl_do_not_elide *) wire net__223; // loc: [60.955, 30.77]
 (* ivl_do_not_elide *) wire net__225; // loc: [65.545, 30.77]
 (* ivl_do_not_elide *) wire net__227; // loc: [76.135, 30.77]
 (* ivl_do_not_elide *) wire net__229; // loc: [80.735, 30.77]
 (* ivl_do_not_elide *) wire net__230; // loc: [67.845, 34.85]
 (* ivl_do_not_elide *) wire net__231; // loc: [65.545, 36.21]
 (* ivl_do_not_elide *) wire net__234; // loc: [83.035, 28.73]
 (* ivl_do_not_elide *) wire net__235; // loc: [65.555, 23.63]
 (* ivl_do_not_elide *) wire net__238; // loc: [71.99, 18.53]
 (* ivl_do_not_elide *) wire net__239; // loc: [68.305, 18.19]
 (* ivl_do_not_elide *) wire net__246; // loc: [75.67, 34.85]
 (* ivl_do_not_elide *) wire net__247; // loc: [79.815, 34.51]
 (* ivl_do_not_elide *) wire net__250; // loc: [77.05, 23.97]
 (* ivl_do_not_elide *) wire net__251; // loc: [76.135, 25.33]
 (* ivl_do_not_elide *) wire net__252; // loc: [81.195, 25.67]
 (* ivl_do_not_elide *) wire net__255; // loc: [75.675, 36.21]
 (* ivl_do_not_elide *) wire net__256; // loc: [73.365, 36.21]
 (* ivl_do_not_elide *) wire net__260; // loc: [71.99, 40.29]
 (* ivl_do_not_elide *) wire net__267; // loc: [65.095, 23.63]
 (* ivl_do_not_elide *) wire net__271; // loc: [68.305, 39.95]
 (* ivl_do_not_elide *) wire net__272; // loc: [70.145, 14.45]
 (* ivl_do_not_elide *) wire net__273; // loc: [62.795, 25.33]
 (* ivl_do_not_elide *) wire net__274; // loc: [63.705, 34.51]
 (* ivl_do_not_elide *) wire net__275; // loc: [68.285, 26.69]
 (* ivl_do_not_elide *) wire net__285; // loc: [59.565, 25.67]
 (* ivl_do_not_elide *) wire net__288; // loc: [59.115, 29.07]
 (* ivl_do_not_elide *) wire net__292; // loc: [65.085, 19.89]
 (* ivl_do_not_elide *) wire net__297; // loc: [79.815, 23.29]
 (* ivl_do_not_elide *) wire net__3; // loc: [71.075, 49.81]
 (* ivl_do_not_elide *) wire net__300; // loc: [61.87, 29.41]
 (* ivl_do_not_elide *) wire net__308; // loc: [74.29, 28.73]
 (* ivl_do_not_elide *) wire net__312; // loc: [84.875, 29.07]
 (* ivl_do_not_elide *) wire net__40; // loc: [25.985, 68.51]
 (* ivl_do_not_elide *) wire net__48; // loc: [30.135, 79.39]
 (* ivl_do_not_elide *) wire net__85; // loc: [29.665, 72.93]
 (* ivl_do_not_elide *) wire net__86; // loc: [25.995, 78.37]
 (* ivl_do_not_elide *) wire net__89; // loc: [25.985, 73.95]
 

//// Partition A Shift Reg
 
//// Inputs
//A
//clk2
//en
//rst_n
 
//// Outputs
//A_SH0
//A_SH1
//A_SH2
//A_SH3
//A_SH4
//A_SH5
//A_SH6
//A_SH7
    // loc: [38.865, 71.23]
    always @(posedge clk3_2 or negedge rst_n)
        if (!rst_n) A_SH0 <= 0;
        else               A_SH0 <= net__85; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic A_SH0_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH0_changed <= 0;
                     else if (!enable && !A_SH0_changed) A_SH0_changed <= (A_SH0 != net__85);
                 p_A_SH0_never_changed: assert property ( !A_SH0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic A_SH0_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH0_changed <= 0;
                     else if (!A_SH0_changed) A_SH0_changed <= (A_SH0 != net__85);
                 p_A_SH0_never_changed: assert property ( outputting_cnt_lt_15 || !A_SH0_changed);
 `endif
 
    
    // loc: [38.865, 65.79]
    always @(posedge clk3_2 or negedge rst_n)
        if (!rst_n) A_SH1 <= 0;
        else               A_SH1 <= net__19; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic A_SH1_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH1_changed <= 0;
                     else if (!enable && !A_SH1_changed) A_SH1_changed <= (A_SH1 != net__19);
                 p_A_SH1_never_changed: assert property ( !A_SH1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic A_SH1_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH1_changed <= 0;
                     else if (!A_SH1_changed) A_SH1_changed <= (A_SH1 != net__19);
                 p_A_SH1_never_changed: assert property ( outputting_cnt_lt_15 || !A_SH1_changed);
 `endif
 
    
    // loc: [38.865, 76.67]
    always @(posedge clk3_2 or negedge rst_n)
        if (!rst_n) A_SH2 <= 0;
        else               A_SH2 <= net__48; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic A_SH2_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH2_changed <= 0;
                     else if (!enable && !A_SH2_changed) A_SH2_changed <= (A_SH2 != net__48);
                 p_A_SH2_never_changed: assert property ( !A_SH2_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic A_SH2_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH2_changed <= 0;
                     else if (!A_SH2_changed) A_SH2_changed <= (A_SH2 != net__48);
                 p_A_SH2_never_changed: assert property ( outputting_cnt_lt_15 || !A_SH2_changed);
 `endif
 
    
    // loc: [35.185, 70.21]
    always @(posedge clk3_2 or negedge rst_n)
        if (!rst_n) A_SH3 <= 0;
        else               A_SH3 <= net__21; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic A_SH3_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH3_changed <= 0;
                     else if (!enable && !A_SH3_changed) A_SH3_changed <= (A_SH3 != net__21);
                 p_A_SH3_never_changed: assert property ( !A_SH3_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic A_SH3_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH3_changed <= 0;
                     else if (!A_SH3_changed) A_SH3_changed <= (A_SH3 != net__21);
                 p_A_SH3_never_changed: assert property ( outputting_cnt_lt_15 || !A_SH3_changed);
 `endif
 
    
    // loc: [35.185, 75.65]
    always @(posedge clk3_2 or negedge rst_n)
        if (!rst_n) A_SH4 <= 0;
        else               A_SH4 <= net__86; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic A_SH4_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH4_changed <= 0;
                     else if (!enable && !A_SH4_changed) A_SH4_changed <= (A_SH4 != net__86);
                 p_A_SH4_never_changed: assert property ( !A_SH4_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic A_SH4_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH4_changed <= 0;
                     else if (!A_SH4_changed) A_SH4_changed <= (A_SH4 != net__86);
                 p_A_SH4_never_changed: assert property ( outputting_cnt_lt_15 || !A_SH4_changed);
 `endif
 
    
    // loc: [45.305, 70.21]
    always @(posedge clk3_2 or negedge rst_n)
        if (!rst_n) A_SH5 <= 0;
        else               A_SH5 <= net__22; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic A_SH5_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH5_changed <= 0;
                     else if (!enable && !A_SH5_changed) A_SH5_changed <= (A_SH5 != net__22);
                 p_A_SH5_never_changed: assert property ( !A_SH5_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic A_SH5_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH5_changed <= 0;
                     else if (!A_SH5_changed) A_SH5_changed <= (A_SH5 != net__22);
                 p_A_SH5_never_changed: assert property ( outputting_cnt_lt_15 || !A_SH5_changed);
 `endif
 
    
    // loc: [45.305, 75.65]
    always @(posedge clk3_2 or negedge rst_n)
        if (!rst_n) A_SH6 <= 0;
        else               A_SH6 <= net__40; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic A_SH6_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH6_changed <= 0;
                     else if (!enable && !A_SH6_changed) A_SH6_changed <= (A_SH6 != net__40);
                 p_A_SH6_never_changed: assert property ( !A_SH6_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic A_SH6_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH6_changed <= 0;
                     else if (!A_SH6_changed) A_SH6_changed <= (A_SH6 != net__40);
                 p_A_SH6_never_changed: assert property ( outputting_cnt_lt_15 || !A_SH6_changed);
 `endif
 
    
    // loc: [38.865, 60.35]
    always @(posedge clk3_2 or negedge rst_n)
        if (!rst_n) A_SH7 <= 0;
        else               A_SH7 <= net__89; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic A_SH7_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH7_changed <= 0;
                     else if (!enable && !A_SH7_changed) A_SH7_changed <= (A_SH7 != net__89);
                 p_A_SH7_never_changed: assert property ( !A_SH7_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic A_SH7_changed;
                 always @(posedge clk3_2 or negedge rst_n)
                     if (!rst_n) A_SH7_changed <= 0;
                     else if (!A_SH7_changed) A_SH7_changed <= (A_SH7 != net__89);
                 p_A_SH7_never_changed: assert property ( outputting_cnt_lt_15 || !A_SH7_changed);
 `endif
 
    
assign clk3_2 = (clk2); // loc: [27.37, 64.43]
assign net__19 = en ? A_SH0 : A_SH1; // loc: [30.135, 57.63]
assign net__21 = en ? A_SH2 : A_SH3; // loc: [25.995, 67.49]
assign net__22 = en ? A_SH4 : A_SH5; // loc: [39.795, 72.93]
assign net__40 = en ? A_SH5 : A_SH6; // loc: [25.985, 68.51]
assign net__48 = en ? A_SH1 : A_SH2; // loc: [30.135, 79.39]
assign net__85 = en ? A : A_SH0; // loc: [29.665, 72.93]
assign net__86 = en ? A_SH3 : A_SH4; // loc: [25.995, 78.37]
assign net__89 = en ? A_SH6 : A_SH7; // loc: [25.985, 73.95]
 

//// Partition B Shift Reg
 
//// Inputs
//B
//clk
//en
//rst_n
 
//// Outputs
//B_SH0
//B_SH1
//B_SH2
//B_SH3
//B_SH4
//B_SH5
//B_SH6
//B_SH7
//clk2
    // loc: [38.865, 27.71]
    always @(posedge clk3_1 or negedge rst_n)
        if (!rst_n) B_SH0 <= 0;
        else               B_SH0 <= net__193; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic B_SH0_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH0_changed <= 0;
                     else if (!enable && !B_SH0_changed) B_SH0_changed <= (B_SH0 != net__193);
                 p_B_SH0_never_changed: assert property ( !B_SH0_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic B_SH0_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH0_changed <= 0;
                     else if (!B_SH0_changed) B_SH0_changed <= (B_SH0 != net__193);
                 p_B_SH0_never_changed: assert property ( outputting_cnt_lt_15 || !B_SH0_changed);
 `endif
 
    
    // loc: [38.865, 33.15]
    always @(posedge clk3_1 or negedge rst_n)
        if (!rst_n) B_SH1 <= 0;
        else               B_SH1 <= net__154; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic B_SH1_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH1_changed <= 0;
                     else if (!enable && !B_SH1_changed) B_SH1_changed <= (B_SH1 != net__154);
                 p_B_SH1_never_changed: assert property ( !B_SH1_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic B_SH1_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH1_changed <= 0;
                     else if (!B_SH1_changed) B_SH1_changed <= (B_SH1 != net__154);
                 p_B_SH1_never_changed: assert property ( outputting_cnt_lt_15 || !B_SH1_changed);
 `endif
 
    
    // loc: [35.185, 32.13]
    always @(posedge clk3_1 or negedge rst_n)
        if (!rst_n) B_SH2 <= 0;
        else               B_SH2 <= net__120; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic B_SH2_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH2_changed <= 0;
                     else if (!enable && !B_SH2_changed) B_SH2_changed <= (B_SH2 != net__120);
                 p_B_SH2_never_changed: assert property ( !B_SH2_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic B_SH2_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH2_changed <= 0;
                     else if (!B_SH2_changed) B_SH2_changed <= (B_SH2 != net__120);
                 p_B_SH2_never_changed: assert property ( outputting_cnt_lt_15 || !B_SH2_changed);
 `endif
 
    
    // loc: [45.305, 32.13]
    always @(posedge clk3_1 or negedge rst_n)
        if (!rst_n) B_SH3 <= 0;
        else               B_SH3 <= net__121; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic B_SH3_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH3_changed <= 0;
                     else if (!enable && !B_SH3_changed) B_SH3_changed <= (B_SH3 != net__121);
                 p_B_SH3_never_changed: assert property ( !B_SH3_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic B_SH3_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH3_changed <= 0;
                     else if (!B_SH3_changed) B_SH3_changed <= (B_SH3 != net__121);
                 p_B_SH3_never_changed: assert property ( outputting_cnt_lt_15 || !B_SH3_changed);
 `endif
 
    
    // loc: [38.865, 22.27]
    always @(posedge clk3_1 or negedge rst_n)
        if (!rst_n) B_SH4 <= 0;
        else               B_SH4 <= net__148; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic B_SH4_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH4_changed <= 0;
                     else if (!enable && !B_SH4_changed) B_SH4_changed <= (B_SH4 != net__148);
                 p_B_SH4_never_changed: assert property ( !B_SH4_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic B_SH4_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH4_changed <= 0;
                     else if (!B_SH4_changed) B_SH4_changed <= (B_SH4 != net__148);
                 p_B_SH4_never_changed: assert property ( outputting_cnt_lt_15 || !B_SH4_changed);
 `endif
 
    
    // loc: [38.865, 38.59]
    always @(posedge clk3_1 or negedge rst_n)
        if (!rst_n) B_SH5 <= 0;
        else               B_SH5 <= net__173; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic B_SH5_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH5_changed <= 0;
                     else if (!enable && !B_SH5_changed) B_SH5_changed <= (B_SH5 != net__173);
                 p_B_SH5_never_changed: assert property ( !B_SH5_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic B_SH5_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH5_changed <= 0;
                     else if (!B_SH5_changed) B_SH5_changed <= (B_SH5 != net__173);
                 p_B_SH5_never_changed: assert property ( outputting_cnt_lt_15 || !B_SH5_changed);
 `endif
 
    
    // loc: [26.915, 26.69]
    always @(posedge clk3_1 or negedge rst_n)
        if (!rst_n) B_SH6 <= 0;
        else               B_SH6 <= net__166; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic B_SH6_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH6_changed <= 0;
                     else if (!enable && !B_SH6_changed) B_SH6_changed <= (B_SH6 != net__166);
                 p_B_SH6_never_changed: assert property ( !B_SH6_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic B_SH6_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH6_changed <= 0;
                     else if (!B_SH6_changed) B_SH6_changed <= (B_SH6 != net__166);
                 p_B_SH6_never_changed: assert property ( outputting_cnt_lt_15 || !B_SH6_changed);
 `endif
 
    
    // loc: [35.185, 37.57]
    always @(posedge clk3_1 or negedge rst_n)
        if (!rst_n) B_SH7 <= 0;
        else               B_SH7 <= net__139; 
 `ifdef FORMAL_FLOPS_CHANGE_WHEN_ENABLES
                 logic B_SH7_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH7_changed <= 0;
                     else if (!enable && !B_SH7_changed) B_SH7_changed <= (B_SH7 != net__139);
                 p_B_SH7_never_changed: assert property ( !B_SH7_changed);
 `endif
 `ifdef FORMAL_FLOPS_CHANGE
                 logic B_SH7_changed;
                 always @(posedge clk3_1 or negedge rst_n)
                     if (!rst_n) B_SH7_changed <= 0;
                     else if (!B_SH7_changed) B_SH7_changed <= (B_SH7 != net__139);
                 p_B_SH7_never_changed: assert property ( outputting_cnt_lt_15 || !B_SH7_changed);
 `endif
 
    
assign clk2 = (clk); // loc: [40.25, 49.81]
assign clk3_1 = (clk2); // loc: [39.33, 44.37]
assign net__120 = en ? B_SH1 : B_SH2; // loc: [25.985, 30.43]
assign net__121 = en ? B_SH2 : B_SH3; // loc: [33.805, 19.55]
assign net__139 = en ? B_SH6 : B_SH7; // loc: [21.845, 30.43]
assign net__148 = en ? B_SH3 : B_SH4; // loc: [30.135, 41.31]
assign net__154 = en ? B_SH0 : B_SH1; // loc: [29.665, 34.85]
assign net__166 = en ? B_SH5 : B_SH6; // loc: [36.575, 35.87]
assign net__173 = en ? B_SH4 : B_SH5; // loc: [36.575, 24.99]
assign net__193 = en ? B : B_SH0; // loc: [29.665, 29.41]
 

//// Partition Check eq 1F0
 
//// Inputs
//SUM0
//SUM1
//SUM2
//SUM3
//SUM4
//SUM5
//SUM6
//SUM7
//SUM8
 
//// Outputs
//
assign S = (!SUM1&!SUM0&net__14&net__3); // loc: [73.365, 48.11]
assign net__14 = (SUM6&SUM7&SUM8); // loc: [72.45, 53.21]
assign net__3 = (!SUM3&!SUM2&SUM4&SUM5); // loc: [71.075, 49.81]
 

//// Partition Sum
 
//// Inputs
//A_SH0
//A_SH1
//A_SH2
//A_SH3
//A_SH4
//A_SH5
//A_SH6
//A_SH7
//B_SH0
//B_SH1
//B_SH2
//B_SH3
//B_SH4
//B_SH5
//B_SH6
//B_SH7
 
//// Outputs
//SUM0
//SUM1
//SUM2
//SUM3
//SUM4
//SUM5
//SUM6
//SUM7
//SUM8
assign SUM0 = (net__234&net__272); // loc: [67.85, 35.87]
assign SUM1 = !(net__234 ^ net__308); // loc: [75.71, 25.67]
assign SUM2 = net__251 ^ net__250; // loc: [75.67, 31.11]
assign SUM3 = net__274 ^ net__256; // loc: [80.73, 28.73]
assign SUM4 = net__239 ^ net__235; // loc: [74.29, 23.29]
assign SUM5 = net__231 ^ net__230; // loc: [74.29, 34.17]
assign SUM6 = !(net__285 ^ net__225); // loc: [68.35, 28.73]
assign SUM7 = !(net__312 ^ net__275); // loc: [70.11, 20.23]
assign SUM8 = (!net__223&!net__275) | (net__219); // loc: [68.31, 31.11]
assign net__219 = (B_SH7&A_SH7); // loc: [69.23, 19.55]
assign net__223 = (!B_SH7&!A_SH7); // loc: [60.955, 30.77]
assign net__225 = (net__239&net__235&net__231) | (net__273); // loc: [65.545, 30.77]
assign net__227 = (B_SH2&A_SH2&net__267) | (net__246); // loc: [76.135, 30.77]
assign net__229 = (!B_SH3&!A_SH3); // loc: [80.735, 30.77]
assign net__230 = (net__239&net__235) | (net__238); // loc: [67.845, 34.85]
assign net__231 = (!net__271&!net__260); // loc: [65.545, 36.21]
assign net__234 = (!B_SH0) | (!A_SH0); // loc: [83.035, 28.73]
assign net__235 = (net__251&net__250&net__274) | (net__227); // loc: [65.555, 23.63]
assign net__238 = (B_SH4&A_SH4); // loc: [71.99, 18.53]
assign net__239 = (!net__238&!net__288); // loc: [68.305, 18.19]
assign net__246 = (B_SH3&A_SH3); // loc: [75.67, 34.85]
assign net__247 = (B_SH6) | (A_SH6); // loc: [79.815, 34.51]
assign net__250 = (net__255&net__252); // loc: [77.05, 23.97]
assign net__251 = (B_SH0&A_SH0&net__308) | (net__300); // loc: [76.135, 25.33]
assign net__252 = (!B_SH2) | (!A_SH2); // loc: [81.195, 25.67]
assign net__255 = (B_SH2) | (A_SH2); // loc: [75.675, 36.21]
assign net__256 = (net__251&net__250) | (!net__252); // loc: [73.365, 36.21]
assign net__260 = (B_SH5&A_SH5); // loc: [71.99, 40.29]
assign net__267 = (B_SH3) | (A_SH3); // loc: [65.095, 23.63]
assign net__271 = (!B_SH5&!A_SH5); // loc: [68.305, 39.95]
assign net__272 = (B_SH0) | (A_SH0); // loc: [70.145, 14.45]
assign net__273 = (B_SH4&A_SH4&net__292) | (net__260); // loc: [62.795, 25.33]
assign net__274 = (!net__229&!net__246); // loc: [63.705, 34.51]
assign net__275 = (!net__247&net__297) | (!net__225&net__297); // loc: [68.285, 26.69]
assign net__285 = (!net__297) | (!net__247); // loc: [59.565, 25.67]
assign net__288 = (!B_SH4&!A_SH4); // loc: [59.115, 29.07]
assign net__292 = (B_SH5) | (A_SH5); // loc: [65.085, 19.89]
assign net__297 = (!B_SH6) | (!A_SH6); // loc: [79.815, 23.29]
assign net__300 = (B_SH1&A_SH1); // loc: [61.87, 29.41]
assign net__308 = B_SH1 ^ A_SH1; // loc: [74.29, 28.73]
assign net__312 = (!net__219&!net__223); // loc: [84.875, 29.07]
endmodule