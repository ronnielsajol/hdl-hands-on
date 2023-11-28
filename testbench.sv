`include "design.sv"

module tb_decoder;
reg c1 , c2, c3;
reg [3:0] i1, i2;
  wire [3:0] out;
  
  decoder test(out, i1, i2, c1, c2, c3);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, tb_decoder);
    
    //test1 Addition
    c1 = 1'b0;
    c2 = 1'b0;
    c3 = 1'b0;
    
    i1 = 4'b0011;
    i2 = 4'b0011;
    
    #10 $display("c1 = %b, c2 = %b, c3 = %b, i1 = %b, i2 = %b, out = %b", c1, c2, c3, i1, i2, out);
    
    //test2 Subtraction
    c1 = 1'b0;
    c2 = 1'b0;
    c3 = 1'b1;
    
    i1 = 4'b0011;
    i2 = 4'b0011;
    
    #10 $display("c1 = %b, c2 = %b, c3 = %b, i1 = %b, i2 = %b, out = %b", c1, c2, c3, i1, i2, out);
    
    //test3 Multiplication
    c1 = 1'b0;
    c2 = 1'b1;
    c3 = 1'b0;
    
    i1 = 4'b0011;
    i2 = 4'b0011;
    
    #10 $display("c1 = %b, c2 = %b, c3 = %b, i1 = %b, i2 = %b, out = %b", c1, c2, c3, i1, i2, out);
    
    //test3 Division
    c1 = 1'b0;
    c2 = 1'b1;
    c3 = 1'b1;
    
    i1 = 4'b0011;
    i2 = 4'b0011;
    
    #10 $display("c1 = %b, c2 = %b, c3 = %b, i1 = %b, i2 = %b, out = %b", c1, c2, c3, i1, i2, out);
    
    //BitAND
    c1 = 1'b1;
    c2 = 1'b0;
    c3 = 1'b0;
    
    i1 = 4'b0011;
    i2 = 4'b0011;
    
    #10 $display("c1 = %b, c2 = %b, c3 = %b, i1 = %b, i2 = %b, out = %b", c1, c2, c3, i1, i2, out);
    
    //BitOR
    c1 = 1'b1;
    c2 = 1'b0;
    c3 = 1'b1;
    
    i1 = 4'b0011;
    i2 = 4'b0011;
    
    #10 $display("c1 = %b, c2 = %b, c3 = %b, i1 = %b, i2 = %b, out = %b", c1, c2, c3, i1, i2, out);
    
    //BitXOR
    c1 = 1'b1;
    c2 = 1'b1;
    c3 = 1'b0;
    
    i1 = 4'b0011;
    i2 = 4'b0011;
    
    #10 $display("c1 = %b, c2 = %b, c3 = %b, i1 = %b, i2 = %b, out = %b", c1, c2, c3, i1, i2, out);
    
    //BitNOT
    c1 = 1'b1;
    c2 = 1'b1;
    c3 = 1'b1;
    
    i1 = 4'b0011;
    
    #10 $display("c1 = %b, c2 = %b, c3 = %b, i1 = %b, i2 = %b, out = %b", c1, c2, c3, i1, i2, out);

  end
 

endmodule

