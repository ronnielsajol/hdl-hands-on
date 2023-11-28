module alu(out, a, b, opcode);
  input [2:0] a, b, opcode; 
  output [2:0] out;


  assign out = (opcode === 3'b000) ? a + b : 
  ((opcode === 3'b001) ? a - b : 
  ((opcode === 3'b010) ? a * b : 
  ((opcode === 3'b011 && b !== 0) ? a / b : 
  ((opcode === 3'b100) ? a & b : 
  ((opcode === 3'b101) ? a | b : 
  ((opcode === 3'b110) ? a ^ b : 
  ((opcode === 3'b111) ? !a : 3'bzzz))))))); 




endmodule