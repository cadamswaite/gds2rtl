module tb;
    logic clk;
    logic rst_n;
    logic A;
    logic B;
    logic en;
    wire S_real;
    wire S_generated;

    adder_demo real_i (.S(S_real), .*);
    demo generated (.S(S_generated), .*);

`ifndef FORMAL
    // Simulation bench

    always #5 clk = ~clk; 
    initial begin
        $dumpfile("generated/sim.vcd"); // Name of the signal dump file
        $dumpvars(0, tb); // Signals to dump
        clk = 0;
        en = 1;

        A = 1;
        B = 1;

        rst_n = 0;
        @(posedge clk);
        @(posedge clk);
        rst_n <= 1;

        repeat(5) @(posedge clk);
        A <= 0;
        B <= 0;

        repeat(30) @(posedge clk);
        $finish;
    end
`else
    initial assume (!rst_n);

    // Assert the generated value always matches the given verilog
    assert property (S_real == S_generated);

    // To find soln
    `ifdef FIND_S
    assert property (!S_generated);
    `endif
`endif
endmodule