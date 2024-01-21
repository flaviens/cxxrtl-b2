module top(clkin_data, in_data, out_data);
  wire celloutsig_0z;
  wire celloutsig_1z;
  wire [1:0] celloutsig_2z;
  reg [1:0] celloutsig_3z;
  input [95:0] clkin_data;
  wire [95:0] clkin_data;
  input [95:0] in_data;
  wire [95:0] in_data;
  output [95:0] out_data;
  wire [95:0] out_data;
  assign celloutsig_2z = in_data[69:68] & { in_data[68], celloutsig_0z };
  assign celloutsig_0z = ~^ in_data[25:24];
  assign celloutsig_1z = ~ celloutsig_0z;
  always_ff @(negedge clkin_data[0], posedge clkin_data[32], negedge clkin_data[64])
    if (!clkin_data[64]) celloutsig_3z[0] <= 1'b0;
    else if (clkin_data[32]) celloutsig_3z[0] <= 1'b1;
    else celloutsig_3z[0] <= celloutsig_0z;
  assign { out_data[33:32], out_data[1:0] } = { celloutsig_2z, celloutsig_3z };
endmodule
