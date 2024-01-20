module top(clkin_data, in_data, out_data);
  reg celloutsig_0z;
  input [127:0] clkin_data;
  wire [127:0] clkin_data;
  input [95:0] in_data;
  wire [95:0] in_data;
  output [95:0] out_data;
  wire [95:0] out_data;
  always_ff @(negedge clkin_data[0], posedge clkin_data[64], posedge clkin_data[96])
    if (clkin_data[96]) celloutsig_0z[0] <= 1'b0;
    else if (clkin_data[64]) celloutsig_0z[0] <= 1'b1;
  assign out_data[0] = celloutsig_0z;
endmodule
