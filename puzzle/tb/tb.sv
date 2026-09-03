module tb;
    (* keep = 1 *) reg clk;
    (* keep = 1 *) reg rst_n;
    (* keep = 1 *) reg I;
    (* keep = 1 *) reg enable;
    (* keep = 1 *) wire [7:0] O;
    (* keep = 1 *) wire success;

    // Instantiate your gate or system clock generator
  demo d1 (.*);

`ifndef FORMAL

    always #5 clk = ~clk; 
    initial begin
        $dumpfile("generated/sim.vcd"); // Name of the signal dump file
        $dumpvars(0, tb); // Signals to dump
    clk = 0;
    `include "generated/stimulus.v"

    repeat(30) @(posedge clk);
    $finish;
    end
`else

    `ifdef ASM_ENABLE
    assume property (enable);
    `endif
    initial assume (!rst_n);

    reg seen_first_char;
    wire first_char = r_O[0] =='h0 && O!=0 && !seen_first_char;
    wire last_char = r_O[14] != 'h0 && !seen_first_lastchar;
    reg seen_first_lastchar;
    always @(posedge clk or negedge rst_n)
    if (!rst_n) seen_first_lastchar <= 0;
    else if (last_char) seen_first_lastchar <= 1;


    always @(posedge clk or negedge rst_n)
    if (!rst_n) seen_first_char <= 0;
    else if (first_char) seen_first_char <= 1 ;


`ifdef FORMAL_GRID

     (* ivl_do_not_elide *)reg [6:0] curr_idx;
    always @(posedge clk or negedge rst_n)
    if (!rst_n) curr_idx <= 0;
    else if (enable && curr_idx<=120)  curr_idx <= curr_idx+1;


    (* anyconst *) reg [0:120] input_val;
    always @(posedge clk) begin
        if (curr_idx<=120) begin
            //assert(O == 0);
            //assert(!success);
            assume(input_val[curr_idx] == I);
        end
    end
    wire matches_bb_soln = input_val == '1;
    wire matches_es_soln = input_val == '0;
    wire matches_twostar_soln = input_val == 'b0000000101010000100000000000010101010000000000001010000001000001000000100000101000010000000100000010000010010001010000000;
    wire matches_tnt_soln = input_val == 'b0000100010000000010100100000010000000110000010000010000010000010000010010000000100000010000100000010000000001101010000000;
    wire matches_tnt_soln2 = input_val == 'b0000001010000000011000000010000101100000000010001000000001000001000000000001100100100000000100010000000010000101010000000;

    wire [0:10] [120:0]masks = {
        121'b0000000000000000000000000000000000000111000000001000000000011100000000001000000001110000000000000000000000000000000000000,
        121'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000001100000000010000000,
        121'b0000000000000100000000001000000000010000000010100000000111000000000000000000000000000000000000000000000000000000000000000,
        121'b0000000100000000011000000000011000000000011000000000000000000000000000000000000000000000000000000000000000000000000000000,
        121'b0000000000000000000000000000000000000000000000000000000000000000000000000000001110000000011000000000010000000001100000000,
        121'b0000000000100000000001000000000010000000100100000111111000000010000000000100000000001000000011110000000011100000001111111,
        121'b1111100000011011000000110000000001100000000001000000000000000000000000000000000000000000000000000000000000000000000000000,
        121'b0000000011000000000110000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
        121'b0000000000000000000000000000000000000000000000000000000000000000000000000001100000000011000000000110000000000000000000000,
        121'b0000000000000000000000000000000000000000000000000000000000000001110000000010000000000100000000001000000000011100000000000,
        121'b0000011000000000100000000111100000001000000000010000000000100000001111110000010000000000100000000001100000000010000000000
    };


    wire [0:10][3:0]row_sum;
    wire [0:10][3:0]col_sum;
    
    wire two_touch;
    wire all_cols_sum_to_two;
    wire all_rows_sum_to_two;
    wire all_masks_sum_to_two;
    always @(posedge clk) begin
        // Match all masks
        all_masks_sum_to_two = 1;
        for (int i = 0; i <= 10; i = i + 1) begin
            all_masks_sum_to_two &= $countones(masks[i] & input_val) == 2;
        end

        for (int i = 0; i <= 10; i = i + 1) begin
            row_sum[i] = 0;
            col_sum[i] = 0;
        end
        two_touch = 0;

        for (int row = 0; row <= 10; row = row + 1) begin
            for (int col = 0; col <= 10; col = col + 1) begin

                if (input_val[row*11 + col]) begin
                    row_sum[row] += 1;
                    col_sum[col] += 1;

                    if (row>0 && col>0)   two_touch |= input_val[(row-1) * 11 + col-1];
                    if (row<10 && col<10) two_touch |= input_val[(row+1) * 11 + col+1];
                    if (row>0 && col<10)  two_touch |= input_val[(row-1) * 11 + col+1];
                    if (row<10 && col>0)  two_touch |= input_val[(row+1) * 11 + col-1];
                    if (row<10)           two_touch |= input_val[(row+1) * 11 + col];
                    if (row>0)            two_touch |= input_val[(row-1) * 11 + col];
                    if (col<10)           two_touch |= input_val[(row  ) * 11 + col+1];
                    if (col>0)            two_touch |= input_val[(row  ) * 11 + col-1];
                end
            end
        end

        all_rows_sum_to_two = 1;
        all_cols_sum_to_two = 1;
        for (int i = 0; i <= 10; i = i + 1) begin
            all_rows_sum_to_two &= (row_sum[i] == 2);
            all_cols_sum_to_two &= (col_sum[i] == 2);
        end
    end

    wire row_col_masks_match = all_cols_sum_to_two && all_rows_sum_to_two && all_masks_sum_to_two;
    always @(posedge clk)
    if (last_char) begin
        assert (was_twostars || was_try_again || empty_sky || was_tnt || was_bb);

        assert (was_try_again == (!matches_bb_soln && !matches_es_soln && !row_col_masks_match));
        assert (was_bb == matches_bb_soln);
        assert (empty_sky == matches_es_soln);
        assert (was_twostars == matches_twostar_soln);
        assert (was_tnt      ==  (two_touch && row_col_masks_match));
        assert (was_twostars == (!two_touch && row_col_masks_match));
    end
`endif //FORMAL_GRID

    // Store the messages
    (* keep = 1 *) reg [7:0] r_O [0:14];
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (int i = 0; i <= 14; i = i + 1) begin
                r_O[i] <= 8'h00;
            end
        end else if (first_char || seen_first_char) begin
            for (int i = 14; i > 0; i = i - 1) begin
                r_O[i] <= r_O[i-1];
            end
            r_O[0] <= O;
        end
    end

    wire was_twostars = (r_O[0]  == ")") &&
                        (r_O[1]  == "*") &&
                        (r_O[2]  == " ") &&
                        (r_O[3]  == "S") &&
                        (r_O[4]  == "R") &&
                        (r_O[5]  == "A") &&
                        (r_O[6]  == "T") &&
                        (r_O[7]  == "S") &&
                        (r_O[8]  == " ") &&
                        (r_O[9]  == "O") &&
                        (r_O[10] == "W") &&
                        (r_O[11] == "T") &&
                        (r_O[12] == " ") &&
                        (r_O[13] == "*") &&
                        (r_O[14] == "(");

    wire was_try_again= (r_O[6]  == "N") &&
                        (r_O[7]  == "I") &&
                        (r_O[8]  == "A") &&
                        (r_O[9]  == "G") &&
                        (r_O[10] == "A") &&
                        (r_O[11] == " ") &&
                        (r_O[12] == "Y") &&
                        (r_O[13] == "R") &&
                        (r_O[14] == "T");

    wire empty_sky= (r_O[6]  == "Y") &&
                        (r_O[7]  == "K") &&
                        (r_O[8]  == "S") &&
                        (r_O[9]  == " ") &&
                        (r_O[10] == "Y") &&
                        (r_O[11] == "T") &&
                        (r_O[12] == "P") &&
                        (r_O[13] == "M") &&
                        (r_O[14] == "E");
    

    wire was_tnt = (r_O[2]  == "H") &&
                        (r_O[3]  == "C") &&
                        (r_O[4]  == "U") &&
                        (r_O[5]  == "O") &&
                        (r_O[6]  == "T") &&
                        (r_O[7]  == " ") &&
                        (r_O[8]  == "T") &&
                        (r_O[9]  == "O") &&
                        (r_O[10] == "N") &&
                        (r_O[11] == " ") &&
                        (r_O[12] == "O") &&
                        (r_O[13] == "W") &&
                        (r_O[14] == "T");

    wire was_bb = (r_O[7]  == "G") &&
                        (r_O[8]  == "N") &&
                        (r_O[9]  == "A") &&
                        (r_O[10] == "B") &&
                        (r_O[11] == " ") &&
                        (r_O[12] == "G") &&
                        (r_O[13] == "I") &&
                        (r_O[14] == "B");



`ifdef FIND_SUCCESS
    // Check success output, high for 15 cycles to read message
    reg [6:0] succ_cnt;
    always @(posedge clk or negedge rst_n)
    if (!rst_n) succ_cnt <= 0;
    else if (success) succ_cnt <= succ_cnt + 1;

    assert property (succ_cnt<15);
`endif
`ifdef FIND_STAR
    assert property(!was_twostars);
`endif
`ifdef FIND_TNT
    assert property(!was_tnt);
`endif
`ifdef FIND_ES
    assert property(!empty_sky);
`endif
`ifdef FIND_BB
    assert property(!was_bb);
`endif
`ifdef FIND_TA
    assert property(!was_try_again);
`endif
`ifdef FIND_OTHER
always @(posedge clk)
    if (last_char) begin
        assert (was_twostars || was_try_again || empty_sky || was_tnt || was_bb);
    end
`endif


`endif

endmodule