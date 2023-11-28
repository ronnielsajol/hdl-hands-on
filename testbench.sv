`include "design.sv"

module tb();
  
  reg [2:0] a, b, opcode;
  wire [2:0] out;
  
  
  alu uut(out, a, b, opcode);
  
  initial 
    begin
      $dumpfile("out.vcd");
      $dumpvars(1, tb);

      opcode = 3'b000;      
      a = 3'b000;
      b = 3'b001;

      
      $display("out = %b, a = %b, b = %b, opcode = %b", out, a, b, opcode);
    end
endmodule