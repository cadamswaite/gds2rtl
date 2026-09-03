//1111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000
  I=1; rst_n = 0; enable = 0; repeat(10) @(posedge clk); rst_n = 1;
  enable = 1;@(posedge clk);enable = 0;
I = 1; repeat(159) @(posedge clk);  
  I=1; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 1; repeat(59) @(posedge clk);  
 I = 0;repeat(61) @(posedge clk); 
repeat(30) @(posedge clk);
//1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
  I=1; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
 I = 1;repeat(120) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
 I = 0;repeat(120) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000101010000100000000000010101010000000000001010000001000001000000100000101000010000000100000010000010010001010000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(6) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(4) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(12) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(12) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(6) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(5) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(6) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(5) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(4) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(7) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(6) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(5) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(2) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(3) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(7) @(posedge clk); 
repeat(30) @(posedge clk);
//0000100010000000010100100000010000000110000010000010000010000010000010010000000100000010000100000010000000001101010000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(3) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(3) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(8) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(2) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(6) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(7) @(posedge clk);  
I = 1; repeat(2) @(posedge clk);  
I = 0; repeat(5) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(5) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(5) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(5) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(5) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(2) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(7) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(6) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(4) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(6) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(9) @(posedge clk);  
I = 1; repeat(2) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(7) @(posedge clk); 
repeat(30) @(posedge clk);
//0000001010000000011000000010000101100000000010001000000001000001000000000001100100100000000100010000000010000101010000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(5) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(8) @(posedge clk);  
I = 1; repeat(2) @(posedge clk);  
I = 0; repeat(7) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(4) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(2) @(posedge clk);  
I = 0; repeat(9) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(3) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(8) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(5) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(11) @(posedge clk);  
I = 1; repeat(2) @(posedge clk);  
I = 0; repeat(2) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(2) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(8) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(3) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(8) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(4) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(7) @(posedge clk); 
repeat(30) @(posedge clk);
//1000000010000000001100001000010000001100000001000100000100000000100000010001000000010001000100100000000100000101100000000
  I=1; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 1; repeat(0) @(posedge clk);  
I = 0; repeat(7) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(9) @(posedge clk);  
I = 1; repeat(2) @(posedge clk);  
I = 0; repeat(4) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(4) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(6) @(posedge clk);  
I = 1; repeat(2) @(posedge clk);  
I = 0; repeat(7) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(3) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(5) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(8) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(6) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(3) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(7) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(3) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(3) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(2) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(8) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(5) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(2) @(posedge clk);  
 I = 0;repeat(8) @(posedge clk); 
repeat(30) @(posedge clk);
//1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=1; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 1; repeat(0) @(posedge clk);  
 I = 0;repeat(120) @(posedge clk); 
repeat(30) @(posedge clk);
//0100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(0) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(119) @(posedge clk); 
repeat(30) @(posedge clk);
//0010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(1) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(118) @(posedge clk); 
repeat(30) @(posedge clk);
//0001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(2) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(117) @(posedge clk); 
repeat(30) @(posedge clk);
//0000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(3) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(116) @(posedge clk); 
repeat(30) @(posedge clk);
//0000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(4) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(115) @(posedge clk); 
repeat(30) @(posedge clk);
//0000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(5) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(114) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(6) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(113) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(7) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(112) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(8) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(111) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(9) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(110) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(10) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(109) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(11) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(108) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(12) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(107) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(13) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(106) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(14) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(105) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(15) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(104) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(16) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(103) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(17) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(102) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(18) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(101) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(19) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(100) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(20) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(99) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(21) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(98) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(22) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(97) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(23) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(96) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(24) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(95) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(25) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(94) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(26) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(93) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(27) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(92) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(28) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(91) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(29) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(90) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(30) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(89) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(31) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(88) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(32) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(87) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(33) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(86) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(34) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(85) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(35) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(84) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(36) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(83) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(37) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(82) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(38) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(81) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(39) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(80) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(40) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(79) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(41) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(78) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(42) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(77) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(43) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(76) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(44) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(75) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(45) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(74) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(46) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(73) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(47) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(72) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(48) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(71) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(49) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(70) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(50) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(69) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(51) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(68) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(52) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(67) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(53) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(66) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(54) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(65) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(55) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(64) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(56) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(63) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(57) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(62) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(58) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(61) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(59) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(60) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(60) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(59) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(61) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(58) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(62) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(57) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(63) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(56) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(64) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(55) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(65) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(54) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(66) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(53) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(67) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(52) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(68) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(51) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(69) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(50) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(70) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(49) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(71) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(48) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(72) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(47) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(73) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(46) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(74) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(45) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(75) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(44) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(76) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(43) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(77) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(42) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(78) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(41) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(79) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(40) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(80) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(39) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(81) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(38) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(82) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(37) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(83) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(36) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(84) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(35) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(85) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(34) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(86) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(33) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(87) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(32) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(88) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(31) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(89) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(30) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(90) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(29) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(91) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(28) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(92) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(27) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(93) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(26) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(94) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(25) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(95) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(24) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(96) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(23) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(97) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(22) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(98) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(21) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(99) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(20) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(100) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(19) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(101) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(18) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(102) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(17) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(103) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(16) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(104) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(15) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(105) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(14) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(106) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(13) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(107) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(12) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(108) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(11) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(109) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(10) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(110) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(9) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(111) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(8) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(112) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(7) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(113) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(6) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(114) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(5) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(115) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(4) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(116) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(3) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(117) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(2) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(118) @(posedge clk);  
I = 1; repeat(1) @(posedge clk);  
 I = 0;repeat(1) @(posedge clk); 
repeat(30) @(posedge clk);
//0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001
  I=0; rst_n = 0; enable = 1; repeat(10) @(posedge clk); rst_n = 1;
I = 0; repeat(119) @(posedge clk);  
 I = 1;repeat(1) @(posedge clk); 
repeat(30) @(posedge clk);
