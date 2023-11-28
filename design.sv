module decoder(out, i1, i2, c1, c2, c3);
  input c1, c2, c3;
  input wire [3:0] i1, i2;
  output reg [3:0] out;

  always @* begin
    if (c1 == 0 && c2 == 0 && c3 == 0) begin
      out = i1 + i2;
    end
    else if (c1 == 0 && c2 == 0 && c3 == 1) begin
      out = i1 - i2;
    end
    else if (c1 == 0 && c2 == 1 && c3 == 0) begin
      out = i1 * i2;
    end
    else if (c1 == 0 && c2 == 1 && c3 == 1) begin
      out = i1 / i2;
    end
    else if (c1 == 1 && c2 == 0 && c3 == 0) begin
      out = i1 & i2;
    end
    else if (c1 == 1 && c2 == 0 && c3 == 1) begin
      out = i1 | i2;  
    end
    else if (c1 == 1 && c2 == 1 && c3 == 0) begin
      out = i1 ^ i2;
    end
    else if (c1 == 1 && c2 == 1 && c3 == 1) begin
      out = ~i1;
    end
  end
endmodule
