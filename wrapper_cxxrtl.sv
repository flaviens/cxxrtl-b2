module wrapper_cxxrtl(input logic [31:0] clkin_0,input logic [31:0] clkin_1,input logic [31:0] clkin_2,input logic [31:0] clkin_3,input logic [31:0] in_0,input logic [31:0] in_1,input logic [31:0] in_2,output logic [31:0] out_0,output logic [31:0] out_1,output logic [31:0] out_2);
    logic [127:0] clkin_;
    logic [95:0] in_;
    logic [95:0] out_;
    assign clkin_[31:0] = clkin_0;
    assign clkin_[63:32] = clkin_1;
    assign clkin_[95:64] = clkin_2;
    assign clkin_[127:96] = clkin_3;
    assign in_[31:0] = in_0;
    assign in_[63:32] = in_1;
    assign in_[95:64] = in_2;
    assign out_0 = out_[31:0];
    assign out_1 = out_[63:32];
    assign out_2 = out_[95:64];
    top top_i(clkin_, in_, out_);
endmodule
