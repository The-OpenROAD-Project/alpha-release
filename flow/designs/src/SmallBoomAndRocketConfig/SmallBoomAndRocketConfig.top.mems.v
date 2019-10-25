module tag_array_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [87:0] RW0_wdata,
  output [87:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode,
  input  [3:0]  RW0_wmask
);
  wire [5:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [21:0] mem_0_0_RW0_wdata;
  wire [21:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire  mem_0_0_RW0_wmask;
  wire [5:0] mem_0_1_RW0_addr;
  wire  mem_0_1_RW0_clk;
  wire [21:0] mem_0_1_RW0_wdata;
  wire [21:0] mem_0_1_RW0_rdata;
  wire  mem_0_1_RW0_en;
  wire  mem_0_1_RW0_wmode;
  wire  mem_0_1_RW0_wmask;
  wire [5:0] mem_0_2_RW0_addr;
  wire  mem_0_2_RW0_clk;
  wire [21:0] mem_0_2_RW0_wdata;
  wire [21:0] mem_0_2_RW0_rdata;
  wire  mem_0_2_RW0_en;
  wire  mem_0_2_RW0_wmode;
  wire  mem_0_2_RW0_wmask;
  wire [5:0] mem_0_3_RW0_addr;
  wire  mem_0_3_RW0_clk;
  wire [21:0] mem_0_3_RW0_wdata;
  wire [21:0] mem_0_3_RW0_rdata;
  wire  mem_0_3_RW0_en;
  wire  mem_0_3_RW0_wmode;
  wire  mem_0_3_RW0_wmask;
  wire [21:0] RW0_rdata_0_0;
  wire [21:0] RW0_rdata_0_1;
  wire [21:0] RW0_rdata_0_2;
  wire [21:0] RW0_rdata_0_3;
  wire [43:0] _GEN_0;
  wire [65:0] _GEN_1;
  wire [87:0] RW0_rdata_0;
  wire [43:0] _GEN_2;
  wire [65:0] _GEN_3;
  split_tag_array_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode),
    .RW0_wmask(mem_0_0_RW0_wmask)
  );
  split_tag_array_ext mem_0_1 (
    .RW0_addr(mem_0_1_RW0_addr),
    .RW0_clk(mem_0_1_RW0_clk),
    .RW0_wdata(mem_0_1_RW0_wdata),
    .RW0_rdata(mem_0_1_RW0_rdata),
    .RW0_en(mem_0_1_RW0_en),
    .RW0_wmode(mem_0_1_RW0_wmode),
    .RW0_wmask(mem_0_1_RW0_wmask)
  );
  split_tag_array_ext mem_0_2 (
    .RW0_addr(mem_0_2_RW0_addr),
    .RW0_clk(mem_0_2_RW0_clk),
    .RW0_wdata(mem_0_2_RW0_wdata),
    .RW0_rdata(mem_0_2_RW0_rdata),
    .RW0_en(mem_0_2_RW0_en),
    .RW0_wmode(mem_0_2_RW0_wmode),
    .RW0_wmask(mem_0_2_RW0_wmask)
  );
  split_tag_array_ext mem_0_3 (
    .RW0_addr(mem_0_3_RW0_addr),
    .RW0_clk(mem_0_3_RW0_clk),
    .RW0_wdata(mem_0_3_RW0_wdata),
    .RW0_rdata(mem_0_3_RW0_rdata),
    .RW0_en(mem_0_3_RW0_en),
    .RW0_wmode(mem_0_3_RW0_wmode),
    .RW0_wmask(mem_0_3_RW0_wmask)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0_1 = mem_0_1_RW0_rdata;
  assign RW0_rdata_0_2 = mem_0_2_RW0_rdata;
  assign RW0_rdata_0_3 = mem_0_3_RW0_rdata;
  assign _GEN_0 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_1 = {RW0_rdata_0_2,_GEN_0};
  assign RW0_rdata_0 = {RW0_rdata_0_3,_GEN_1};
  assign _GEN_2 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_3 = {RW0_rdata_0_2,_GEN_0};
  assign RW0_rdata = {RW0_rdata_0_3,_GEN_1};
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata[21:0];
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
  assign mem_0_0_RW0_wmask = RW0_wmask[0];
  assign mem_0_1_RW0_addr = RW0_addr;
  assign mem_0_1_RW0_clk = RW0_clk;
  assign mem_0_1_RW0_wdata = RW0_wdata[43:22];
  assign mem_0_1_RW0_en = RW0_en;
  assign mem_0_1_RW0_wmode = RW0_wmode;
  assign mem_0_1_RW0_wmask = RW0_wmask[1];
  assign mem_0_2_RW0_addr = RW0_addr;
  assign mem_0_2_RW0_clk = RW0_clk;
  assign mem_0_2_RW0_wdata = RW0_wdata[65:44];
  assign mem_0_2_RW0_en = RW0_en;
  assign mem_0_2_RW0_wmode = RW0_wmode;
  assign mem_0_2_RW0_wmask = RW0_wmask[2];
  assign mem_0_3_RW0_addr = RW0_addr;
  assign mem_0_3_RW0_clk = RW0_clk;
  assign mem_0_3_RW0_wdata = RW0_wdata[87:66];
  assign mem_0_3_RW0_en = RW0_en;
  assign mem_0_3_RW0_wmode = RW0_wmode;
  assign mem_0_3_RW0_wmask = RW0_wmask[3];
endmodule
module array_0_0_ext(
  input  [8:0]  W0_addr,
  input         W0_clk,
  input  [63:0] W0_data,
  input         W0_en,
  input         W0_mask,
  input  [8:0]  R0_addr,
  input         R0_clk,
  output [63:0] R0_data,
  input         R0_en
);
  wire [8:0] mem_0_0_W0_addr;
  wire  mem_0_0_W0_clk;
  wire [63:0] mem_0_0_W0_data;
  wire  mem_0_0_W0_en;
  wire  mem_0_0_W0_mask;
  wire [8:0] mem_0_0_R0_addr;
  wire  mem_0_0_R0_clk;
  wire [63:0] mem_0_0_R0_data;
  wire  mem_0_0_R0_en;
  wire [63:0] R0_data_0_0;
  wire [63:0] R0_data_0;
  split_array_0_0_ext mem_0_0 (
    .W0_addr(mem_0_0_W0_addr),
    .W0_clk(mem_0_0_W0_clk),
    .W0_data(mem_0_0_W0_data),
    .W0_en(mem_0_0_W0_en),
    .W0_mask(mem_0_0_W0_mask),
    .R0_addr(mem_0_0_R0_addr),
    .R0_clk(mem_0_0_R0_clk),
    .R0_data(mem_0_0_R0_data),
    .R0_en(mem_0_0_R0_en)
  );
  assign R0_data_0_0 = mem_0_0_R0_data;
  assign R0_data_0 = R0_data_0_0;
  assign R0_data = mem_0_0_R0_data;
  assign mem_0_0_W0_addr = W0_addr;
  assign mem_0_0_W0_clk = W0_clk;
  assign mem_0_0_W0_data = W0_data;
  assign mem_0_0_W0_en = W0_en;
  assign mem_0_0_W0_mask = W0_mask;
  assign mem_0_0_R0_addr = R0_addr;
  assign mem_0_0_R0_clk = R0_clk;
  assign mem_0_0_R0_en = R0_en;
endmodule
module tag_array_0_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [83:0] RW0_wdata,
  output [83:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode,
  input  [3:0]  RW0_wmask
);
  wire [5:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [20:0] mem_0_0_RW0_wdata;
  wire [20:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire  mem_0_0_RW0_wmask;
  wire [5:0] mem_0_1_RW0_addr;
  wire  mem_0_1_RW0_clk;
  wire [20:0] mem_0_1_RW0_wdata;
  wire [20:0] mem_0_1_RW0_rdata;
  wire  mem_0_1_RW0_en;
  wire  mem_0_1_RW0_wmode;
  wire  mem_0_1_RW0_wmask;
  wire [5:0] mem_0_2_RW0_addr;
  wire  mem_0_2_RW0_clk;
  wire [20:0] mem_0_2_RW0_wdata;
  wire [20:0] mem_0_2_RW0_rdata;
  wire  mem_0_2_RW0_en;
  wire  mem_0_2_RW0_wmode;
  wire  mem_0_2_RW0_wmask;
  wire [5:0] mem_0_3_RW0_addr;
  wire  mem_0_3_RW0_clk;
  wire [20:0] mem_0_3_RW0_wdata;
  wire [20:0] mem_0_3_RW0_rdata;
  wire  mem_0_3_RW0_en;
  wire  mem_0_3_RW0_wmode;
  wire  mem_0_3_RW0_wmask;
  wire [20:0] RW0_rdata_0_0;
  wire [20:0] RW0_rdata_0_1;
  wire [20:0] RW0_rdata_0_2;
  wire [20:0] RW0_rdata_0_3;
  wire [41:0] _GEN_0;
  wire [62:0] _GEN_1;
  wire [83:0] RW0_rdata_0;
  wire [41:0] _GEN_2;
  wire [62:0] _GEN_3;
  split_tag_array_0_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode),
    .RW0_wmask(mem_0_0_RW0_wmask)
  );
  split_tag_array_0_ext mem_0_1 (
    .RW0_addr(mem_0_1_RW0_addr),
    .RW0_clk(mem_0_1_RW0_clk),
    .RW0_wdata(mem_0_1_RW0_wdata),
    .RW0_rdata(mem_0_1_RW0_rdata),
    .RW0_en(mem_0_1_RW0_en),
    .RW0_wmode(mem_0_1_RW0_wmode),
    .RW0_wmask(mem_0_1_RW0_wmask)
  );
  split_tag_array_0_ext mem_0_2 (
    .RW0_addr(mem_0_2_RW0_addr),
    .RW0_clk(mem_0_2_RW0_clk),
    .RW0_wdata(mem_0_2_RW0_wdata),
    .RW0_rdata(mem_0_2_RW0_rdata),
    .RW0_en(mem_0_2_RW0_en),
    .RW0_wmode(mem_0_2_RW0_wmode),
    .RW0_wmask(mem_0_2_RW0_wmask)
  );
  split_tag_array_0_ext mem_0_3 (
    .RW0_addr(mem_0_3_RW0_addr),
    .RW0_clk(mem_0_3_RW0_clk),
    .RW0_wdata(mem_0_3_RW0_wdata),
    .RW0_rdata(mem_0_3_RW0_rdata),
    .RW0_en(mem_0_3_RW0_en),
    .RW0_wmode(mem_0_3_RW0_wmode),
    .RW0_wmask(mem_0_3_RW0_wmask)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0_1 = mem_0_1_RW0_rdata;
  assign RW0_rdata_0_2 = mem_0_2_RW0_rdata;
  assign RW0_rdata_0_3 = mem_0_3_RW0_rdata;
  assign _GEN_0 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_1 = {RW0_rdata_0_2,_GEN_0};
  assign RW0_rdata_0 = {RW0_rdata_0_3,_GEN_1};
  assign _GEN_2 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_3 = {RW0_rdata_0_2,_GEN_0};
  assign RW0_rdata = {RW0_rdata_0_3,_GEN_1};
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata[20:0];
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
  assign mem_0_0_RW0_wmask = RW0_wmask[0];
  assign mem_0_1_RW0_addr = RW0_addr;
  assign mem_0_1_RW0_clk = RW0_clk;
  assign mem_0_1_RW0_wdata = RW0_wdata[41:21];
  assign mem_0_1_RW0_en = RW0_en;
  assign mem_0_1_RW0_wmode = RW0_wmode;
  assign mem_0_1_RW0_wmask = RW0_wmask[1];
  assign mem_0_2_RW0_addr = RW0_addr;
  assign mem_0_2_RW0_clk = RW0_clk;
  assign mem_0_2_RW0_wdata = RW0_wdata[62:42];
  assign mem_0_2_RW0_en = RW0_en;
  assign mem_0_2_RW0_wmode = RW0_wmode;
  assign mem_0_2_RW0_wmask = RW0_wmask[2];
  assign mem_0_3_RW0_addr = RW0_addr;
  assign mem_0_3_RW0_clk = RW0_clk;
  assign mem_0_3_RW0_wdata = RW0_wdata[83:63];
  assign mem_0_3_RW0_en = RW0_en;
  assign mem_0_3_RW0_wmode = RW0_wmode;
  assign mem_0_3_RW0_wmask = RW0_wmask[3];
endmodule
module dataArrayWay_0_ext(
  input  [8:0]  RW0_addr,
  input         RW0_clk,
  input  [63:0] RW0_wdata,
  output [63:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  wire [8:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [63:0] mem_0_0_RW0_wdata;
  wire [63:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire [63:0] RW0_rdata_0_0;
  wire [63:0] RW0_rdata_0;
  split_dataArrayWay_0_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0 = RW0_rdata_0_0;
  assign RW0_rdata = mem_0_0_RW0_rdata;
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata;
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
endmodule
module bim_data_array_0_ext(
  input  [8:0] RW0_addr,
  input        RW0_clk,
  input  [7:0] RW0_wdata,
  output [7:0] RW0_rdata,
  input        RW0_en,
  input        RW0_wmode,
  input  [7:0] RW0_wmask
);
  wire [8:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire  mem_0_0_RW0_wdata;
  wire  mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire  mem_0_0_RW0_wmask;
  wire [8:0] mem_0_1_RW0_addr;
  wire  mem_0_1_RW0_clk;
  wire  mem_0_1_RW0_wdata;
  wire  mem_0_1_RW0_rdata;
  wire  mem_0_1_RW0_en;
  wire  mem_0_1_RW0_wmode;
  wire  mem_0_1_RW0_wmask;
  wire [8:0] mem_0_2_RW0_addr;
  wire  mem_0_2_RW0_clk;
  wire  mem_0_2_RW0_wdata;
  wire  mem_0_2_RW0_rdata;
  wire  mem_0_2_RW0_en;
  wire  mem_0_2_RW0_wmode;
  wire  mem_0_2_RW0_wmask;
  wire [8:0] mem_0_3_RW0_addr;
  wire  mem_0_3_RW0_clk;
  wire  mem_0_3_RW0_wdata;
  wire  mem_0_3_RW0_rdata;
  wire  mem_0_3_RW0_en;
  wire  mem_0_3_RW0_wmode;
  wire  mem_0_3_RW0_wmask;
  wire [8:0] mem_0_4_RW0_addr;
  wire  mem_0_4_RW0_clk;
  wire  mem_0_4_RW0_wdata;
  wire  mem_0_4_RW0_rdata;
  wire  mem_0_4_RW0_en;
  wire  mem_0_4_RW0_wmode;
  wire  mem_0_4_RW0_wmask;
  wire [8:0] mem_0_5_RW0_addr;
  wire  mem_0_5_RW0_clk;
  wire  mem_0_5_RW0_wdata;
  wire  mem_0_5_RW0_rdata;
  wire  mem_0_5_RW0_en;
  wire  mem_0_5_RW0_wmode;
  wire  mem_0_5_RW0_wmask;
  wire [8:0] mem_0_6_RW0_addr;
  wire  mem_0_6_RW0_clk;
  wire  mem_0_6_RW0_wdata;
  wire  mem_0_6_RW0_rdata;
  wire  mem_0_6_RW0_en;
  wire  mem_0_6_RW0_wmode;
  wire  mem_0_6_RW0_wmask;
  wire [8:0] mem_0_7_RW0_addr;
  wire  mem_0_7_RW0_clk;
  wire  mem_0_7_RW0_wdata;
  wire  mem_0_7_RW0_rdata;
  wire  mem_0_7_RW0_en;
  wire  mem_0_7_RW0_wmode;
  wire  mem_0_7_RW0_wmask;
  wire  RW0_rdata_0_0;
  wire  RW0_rdata_0_1;
  wire  RW0_rdata_0_2;
  wire  RW0_rdata_0_3;
  wire  RW0_rdata_0_4;
  wire  RW0_rdata_0_5;
  wire  RW0_rdata_0_6;
  wire  RW0_rdata_0_7;
  wire [1:0] _GEN_0;
  wire [2:0] _GEN_1;
  wire [3:0] _GEN_2;
  wire [4:0] _GEN_3;
  wire [5:0] _GEN_4;
  wire [6:0] _GEN_5;
  wire [7:0] RW0_rdata_0;
  wire [1:0] _GEN_6;
  wire [2:0] _GEN_7;
  wire [3:0] _GEN_8;
  wire [4:0] _GEN_9;
  wire [5:0] _GEN_10;
  wire [6:0] _GEN_11;
  split_bim_data_array_0_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode),
    .RW0_wmask(mem_0_0_RW0_wmask)
  );
  split_bim_data_array_0_ext mem_0_1 (
    .RW0_addr(mem_0_1_RW0_addr),
    .RW0_clk(mem_0_1_RW0_clk),
    .RW0_wdata(mem_0_1_RW0_wdata),
    .RW0_rdata(mem_0_1_RW0_rdata),
    .RW0_en(mem_0_1_RW0_en),
    .RW0_wmode(mem_0_1_RW0_wmode),
    .RW0_wmask(mem_0_1_RW0_wmask)
  );
  split_bim_data_array_0_ext mem_0_2 (
    .RW0_addr(mem_0_2_RW0_addr),
    .RW0_clk(mem_0_2_RW0_clk),
    .RW0_wdata(mem_0_2_RW0_wdata),
    .RW0_rdata(mem_0_2_RW0_rdata),
    .RW0_en(mem_0_2_RW0_en),
    .RW0_wmode(mem_0_2_RW0_wmode),
    .RW0_wmask(mem_0_2_RW0_wmask)
  );
  split_bim_data_array_0_ext mem_0_3 (
    .RW0_addr(mem_0_3_RW0_addr),
    .RW0_clk(mem_0_3_RW0_clk),
    .RW0_wdata(mem_0_3_RW0_wdata),
    .RW0_rdata(mem_0_3_RW0_rdata),
    .RW0_en(mem_0_3_RW0_en),
    .RW0_wmode(mem_0_3_RW0_wmode),
    .RW0_wmask(mem_0_3_RW0_wmask)
  );
  split_bim_data_array_0_ext mem_0_4 (
    .RW0_addr(mem_0_4_RW0_addr),
    .RW0_clk(mem_0_4_RW0_clk),
    .RW0_wdata(mem_0_4_RW0_wdata),
    .RW0_rdata(mem_0_4_RW0_rdata),
    .RW0_en(mem_0_4_RW0_en),
    .RW0_wmode(mem_0_4_RW0_wmode),
    .RW0_wmask(mem_0_4_RW0_wmask)
  );
  split_bim_data_array_0_ext mem_0_5 (
    .RW0_addr(mem_0_5_RW0_addr),
    .RW0_clk(mem_0_5_RW0_clk),
    .RW0_wdata(mem_0_5_RW0_wdata),
    .RW0_rdata(mem_0_5_RW0_rdata),
    .RW0_en(mem_0_5_RW0_en),
    .RW0_wmode(mem_0_5_RW0_wmode),
    .RW0_wmask(mem_0_5_RW0_wmask)
  );
  split_bim_data_array_0_ext mem_0_6 (
    .RW0_addr(mem_0_6_RW0_addr),
    .RW0_clk(mem_0_6_RW0_clk),
    .RW0_wdata(mem_0_6_RW0_wdata),
    .RW0_rdata(mem_0_6_RW0_rdata),
    .RW0_en(mem_0_6_RW0_en),
    .RW0_wmode(mem_0_6_RW0_wmode),
    .RW0_wmask(mem_0_6_RW0_wmask)
  );
  split_bim_data_array_0_ext mem_0_7 (
    .RW0_addr(mem_0_7_RW0_addr),
    .RW0_clk(mem_0_7_RW0_clk),
    .RW0_wdata(mem_0_7_RW0_wdata),
    .RW0_rdata(mem_0_7_RW0_rdata),
    .RW0_en(mem_0_7_RW0_en),
    .RW0_wmode(mem_0_7_RW0_wmode),
    .RW0_wmask(mem_0_7_RW0_wmask)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0_1 = mem_0_1_RW0_rdata;
  assign RW0_rdata_0_2 = mem_0_2_RW0_rdata;
  assign RW0_rdata_0_3 = mem_0_3_RW0_rdata;
  assign RW0_rdata_0_4 = mem_0_4_RW0_rdata;
  assign RW0_rdata_0_5 = mem_0_5_RW0_rdata;
  assign RW0_rdata_0_6 = mem_0_6_RW0_rdata;
  assign RW0_rdata_0_7 = mem_0_7_RW0_rdata;
  assign _GEN_0 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_1 = {RW0_rdata_0_2,_GEN_0};
  assign _GEN_2 = {RW0_rdata_0_3,_GEN_1};
  assign _GEN_3 = {RW0_rdata_0_4,_GEN_2};
  assign _GEN_4 = {RW0_rdata_0_5,_GEN_3};
  assign _GEN_5 = {RW0_rdata_0_6,_GEN_4};
  assign RW0_rdata_0 = {RW0_rdata_0_7,_GEN_5};
  assign _GEN_6 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_7 = {RW0_rdata_0_2,_GEN_0};
  assign _GEN_8 = {RW0_rdata_0_3,_GEN_1};
  assign _GEN_9 = {RW0_rdata_0_4,_GEN_2};
  assign _GEN_10 = {RW0_rdata_0_5,_GEN_3};
  assign _GEN_11 = {RW0_rdata_0_6,_GEN_4};
  assign RW0_rdata = {RW0_rdata_0_7,_GEN_5};
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata[0];
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
  assign mem_0_0_RW0_wmask = RW0_wmask[0];
  assign mem_0_1_RW0_addr = RW0_addr;
  assign mem_0_1_RW0_clk = RW0_clk;
  assign mem_0_1_RW0_wdata = RW0_wdata[1];
  assign mem_0_1_RW0_en = RW0_en;
  assign mem_0_1_RW0_wmode = RW0_wmode;
  assign mem_0_1_RW0_wmask = RW0_wmask[1];
  assign mem_0_2_RW0_addr = RW0_addr;
  assign mem_0_2_RW0_clk = RW0_clk;
  assign mem_0_2_RW0_wdata = RW0_wdata[2];
  assign mem_0_2_RW0_en = RW0_en;
  assign mem_0_2_RW0_wmode = RW0_wmode;
  assign mem_0_2_RW0_wmask = RW0_wmask[2];
  assign mem_0_3_RW0_addr = RW0_addr;
  assign mem_0_3_RW0_clk = RW0_clk;
  assign mem_0_3_RW0_wdata = RW0_wdata[3];
  assign mem_0_3_RW0_en = RW0_en;
  assign mem_0_3_RW0_wmode = RW0_wmode;
  assign mem_0_3_RW0_wmask = RW0_wmask[3];
  assign mem_0_4_RW0_addr = RW0_addr;
  assign mem_0_4_RW0_clk = RW0_clk;
  assign mem_0_4_RW0_wdata = RW0_wdata[4];
  assign mem_0_4_RW0_en = RW0_en;
  assign mem_0_4_RW0_wmode = RW0_wmode;
  assign mem_0_4_RW0_wmask = RW0_wmask[4];
  assign mem_0_5_RW0_addr = RW0_addr;
  assign mem_0_5_RW0_clk = RW0_clk;
  assign mem_0_5_RW0_wdata = RW0_wdata[5];
  assign mem_0_5_RW0_en = RW0_en;
  assign mem_0_5_RW0_wmode = RW0_wmode;
  assign mem_0_5_RW0_wmask = RW0_wmask[5];
  assign mem_0_6_RW0_addr = RW0_addr;
  assign mem_0_6_RW0_clk = RW0_clk;
  assign mem_0_6_RW0_wdata = RW0_wdata[6];
  assign mem_0_6_RW0_en = RW0_en;
  assign mem_0_6_RW0_wmode = RW0_wmode;
  assign mem_0_6_RW0_wmask = RW0_wmask[6];
  assign mem_0_7_RW0_addr = RW0_addr;
  assign mem_0_7_RW0_clk = RW0_clk;
  assign mem_0_7_RW0_wdata = RW0_wdata[7];
  assign mem_0_7_RW0_en = RW0_en;
  assign mem_0_7_RW0_wmode = RW0_wmode;
  assign mem_0_7_RW0_wmask = RW0_wmask[7];
endmodule
module btb_tag_array_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [19:0] RW0_wdata,
  output [19:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  wire [5:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [19:0] mem_0_0_RW0_wdata;
  wire [19:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire [19:0] RW0_rdata_0_0;
  wire [19:0] RW0_rdata_0;
  split_btb_tag_array_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0 = RW0_rdata_0_0;
  assign RW0_rdata = mem_0_0_RW0_rdata;
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata;
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
endmodule
module btb_data_array_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [47:0] RW0_wdata,
  output [47:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  wire [5:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [47:0] mem_0_0_RW0_wdata;
  wire [47:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire [47:0] RW0_rdata_0_0;
  wire [47:0] RW0_rdata_0;
  split_btb_data_array_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0 = RW0_rdata_0_0;
  assign RW0_rdata = mem_0_0_RW0_rdata;
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata;
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
endmodule
module counter_table_ext(
  input  [10:0] W0_addr,
  input         W0_clk,
  input  [3:0]  W0_data,
  input         W0_en,
  input  [10:0] R0_addr,
  input         R0_clk,
  output [3:0]  R0_data,
  input         R0_en
);
  wire [10:0] mem_0_0_W0_addr;
  wire  mem_0_0_W0_clk;
  wire [3:0] mem_0_0_W0_data;
  wire  mem_0_0_W0_en;
  wire [10:0] mem_0_0_R0_addr;
  wire  mem_0_0_R0_clk;
  wire [3:0] mem_0_0_R0_data;
  wire  mem_0_0_R0_en;
  wire [3:0] R0_data_0_0;
  wire [3:0] R0_data_0;
  split_counter_table_ext mem_0_0 (
    .W0_addr(mem_0_0_W0_addr),
    .W0_clk(mem_0_0_W0_clk),
    .W0_data(mem_0_0_W0_data),
    .W0_en(mem_0_0_W0_en),
    .R0_addr(mem_0_0_R0_addr),
    .R0_clk(mem_0_0_R0_clk),
    .R0_data(mem_0_0_R0_data),
    .R0_en(mem_0_0_R0_en)
  );
  assign R0_data_0_0 = mem_0_0_R0_data;
  assign R0_data_0 = R0_data_0_0;
  assign R0_data = mem_0_0_R0_data;
  assign mem_0_0_W0_addr = W0_addr;
  assign mem_0_0_W0_clk = W0_clk;
  assign mem_0_0_W0_data = W0_data;
  assign mem_0_0_W0_en = W0_en;
  assign mem_0_0_R0_addr = R0_addr;
  assign mem_0_0_R0_clk = R0_clk;
  assign mem_0_0_R0_en = R0_en;
endmodule
module l2_tlb_ram_ext(
  input  [8:0]  RW0_addr,
  input         RW0_clk,
  input  [44:0] RW0_wdata,
  output [44:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  wire [8:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [44:0] mem_0_0_RW0_wdata;
  wire [44:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire [44:0] RW0_rdata_0_0;
  wire [44:0] RW0_rdata_0;
  split_l2_tlb_ram_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0 = RW0_rdata_0_0;
  assign RW0_rdata = mem_0_0_RW0_rdata;
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata;
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
endmodule
module data_arrays_0_ext(
  input  [8:0]   RW0_addr,
  input          RW0_clk,
  input  [255:0] RW0_wdata,
  output [255:0] RW0_rdata,
  input          RW0_en,
  input          RW0_wmode,
  input  [31:0]  RW0_wmask
);
  wire [8:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [7:0] mem_0_0_RW0_wdata;
  wire [7:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire  mem_0_0_RW0_wmask;
  wire [8:0] mem_0_1_RW0_addr;
  wire  mem_0_1_RW0_clk;
  wire [7:0] mem_0_1_RW0_wdata;
  wire [7:0] mem_0_1_RW0_rdata;
  wire  mem_0_1_RW0_en;
  wire  mem_0_1_RW0_wmode;
  wire  mem_0_1_RW0_wmask;
  wire [8:0] mem_0_2_RW0_addr;
  wire  mem_0_2_RW0_clk;
  wire [7:0] mem_0_2_RW0_wdata;
  wire [7:0] mem_0_2_RW0_rdata;
  wire  mem_0_2_RW0_en;
  wire  mem_0_2_RW0_wmode;
  wire  mem_0_2_RW0_wmask;
  wire [8:0] mem_0_3_RW0_addr;
  wire  mem_0_3_RW0_clk;
  wire [7:0] mem_0_3_RW0_wdata;
  wire [7:0] mem_0_3_RW0_rdata;
  wire  mem_0_3_RW0_en;
  wire  mem_0_3_RW0_wmode;
  wire  mem_0_3_RW0_wmask;
  wire [8:0] mem_0_4_RW0_addr;
  wire  mem_0_4_RW0_clk;
  wire [7:0] mem_0_4_RW0_wdata;
  wire [7:0] mem_0_4_RW0_rdata;
  wire  mem_0_4_RW0_en;
  wire  mem_0_4_RW0_wmode;
  wire  mem_0_4_RW0_wmask;
  wire [8:0] mem_0_5_RW0_addr;
  wire  mem_0_5_RW0_clk;
  wire [7:0] mem_0_5_RW0_wdata;
  wire [7:0] mem_0_5_RW0_rdata;
  wire  mem_0_5_RW0_en;
  wire  mem_0_5_RW0_wmode;
  wire  mem_0_5_RW0_wmask;
  wire [8:0] mem_0_6_RW0_addr;
  wire  mem_0_6_RW0_clk;
  wire [7:0] mem_0_6_RW0_wdata;
  wire [7:0] mem_0_6_RW0_rdata;
  wire  mem_0_6_RW0_en;
  wire  mem_0_6_RW0_wmode;
  wire  mem_0_6_RW0_wmask;
  wire [8:0] mem_0_7_RW0_addr;
  wire  mem_0_7_RW0_clk;
  wire [7:0] mem_0_7_RW0_wdata;
  wire [7:0] mem_0_7_RW0_rdata;
  wire  mem_0_7_RW0_en;
  wire  mem_0_7_RW0_wmode;
  wire  mem_0_7_RW0_wmask;
  wire [8:0] mem_0_8_RW0_addr;
  wire  mem_0_8_RW0_clk;
  wire [7:0] mem_0_8_RW0_wdata;
  wire [7:0] mem_0_8_RW0_rdata;
  wire  mem_0_8_RW0_en;
  wire  mem_0_8_RW0_wmode;
  wire  mem_0_8_RW0_wmask;
  wire [8:0] mem_0_9_RW0_addr;
  wire  mem_0_9_RW0_clk;
  wire [7:0] mem_0_9_RW0_wdata;
  wire [7:0] mem_0_9_RW0_rdata;
  wire  mem_0_9_RW0_en;
  wire  mem_0_9_RW0_wmode;
  wire  mem_0_9_RW0_wmask;
  wire [8:0] mem_0_10_RW0_addr;
  wire  mem_0_10_RW0_clk;
  wire [7:0] mem_0_10_RW0_wdata;
  wire [7:0] mem_0_10_RW0_rdata;
  wire  mem_0_10_RW0_en;
  wire  mem_0_10_RW0_wmode;
  wire  mem_0_10_RW0_wmask;
  wire [8:0] mem_0_11_RW0_addr;
  wire  mem_0_11_RW0_clk;
  wire [7:0] mem_0_11_RW0_wdata;
  wire [7:0] mem_0_11_RW0_rdata;
  wire  mem_0_11_RW0_en;
  wire  mem_0_11_RW0_wmode;
  wire  mem_0_11_RW0_wmask;
  wire [8:0] mem_0_12_RW0_addr;
  wire  mem_0_12_RW0_clk;
  wire [7:0] mem_0_12_RW0_wdata;
  wire [7:0] mem_0_12_RW0_rdata;
  wire  mem_0_12_RW0_en;
  wire  mem_0_12_RW0_wmode;
  wire  mem_0_12_RW0_wmask;
  wire [8:0] mem_0_13_RW0_addr;
  wire  mem_0_13_RW0_clk;
  wire [7:0] mem_0_13_RW0_wdata;
  wire [7:0] mem_0_13_RW0_rdata;
  wire  mem_0_13_RW0_en;
  wire  mem_0_13_RW0_wmode;
  wire  mem_0_13_RW0_wmask;
  wire [8:0] mem_0_14_RW0_addr;
  wire  mem_0_14_RW0_clk;
  wire [7:0] mem_0_14_RW0_wdata;
  wire [7:0] mem_0_14_RW0_rdata;
  wire  mem_0_14_RW0_en;
  wire  mem_0_14_RW0_wmode;
  wire  mem_0_14_RW0_wmask;
  wire [8:0] mem_0_15_RW0_addr;
  wire  mem_0_15_RW0_clk;
  wire [7:0] mem_0_15_RW0_wdata;
  wire [7:0] mem_0_15_RW0_rdata;
  wire  mem_0_15_RW0_en;
  wire  mem_0_15_RW0_wmode;
  wire  mem_0_15_RW0_wmask;
  wire [8:0] mem_0_16_RW0_addr;
  wire  mem_0_16_RW0_clk;
  wire [7:0] mem_0_16_RW0_wdata;
  wire [7:0] mem_0_16_RW0_rdata;
  wire  mem_0_16_RW0_en;
  wire  mem_0_16_RW0_wmode;
  wire  mem_0_16_RW0_wmask;
  wire [8:0] mem_0_17_RW0_addr;
  wire  mem_0_17_RW0_clk;
  wire [7:0] mem_0_17_RW0_wdata;
  wire [7:0] mem_0_17_RW0_rdata;
  wire  mem_0_17_RW0_en;
  wire  mem_0_17_RW0_wmode;
  wire  mem_0_17_RW0_wmask;
  wire [8:0] mem_0_18_RW0_addr;
  wire  mem_0_18_RW0_clk;
  wire [7:0] mem_0_18_RW0_wdata;
  wire [7:0] mem_0_18_RW0_rdata;
  wire  mem_0_18_RW0_en;
  wire  mem_0_18_RW0_wmode;
  wire  mem_0_18_RW0_wmask;
  wire [8:0] mem_0_19_RW0_addr;
  wire  mem_0_19_RW0_clk;
  wire [7:0] mem_0_19_RW0_wdata;
  wire [7:0] mem_0_19_RW0_rdata;
  wire  mem_0_19_RW0_en;
  wire  mem_0_19_RW0_wmode;
  wire  mem_0_19_RW0_wmask;
  wire [8:0] mem_0_20_RW0_addr;
  wire  mem_0_20_RW0_clk;
  wire [7:0] mem_0_20_RW0_wdata;
  wire [7:0] mem_0_20_RW0_rdata;
  wire  mem_0_20_RW0_en;
  wire  mem_0_20_RW0_wmode;
  wire  mem_0_20_RW0_wmask;
  wire [8:0] mem_0_21_RW0_addr;
  wire  mem_0_21_RW0_clk;
  wire [7:0] mem_0_21_RW0_wdata;
  wire [7:0] mem_0_21_RW0_rdata;
  wire  mem_0_21_RW0_en;
  wire  mem_0_21_RW0_wmode;
  wire  mem_0_21_RW0_wmask;
  wire [8:0] mem_0_22_RW0_addr;
  wire  mem_0_22_RW0_clk;
  wire [7:0] mem_0_22_RW0_wdata;
  wire [7:0] mem_0_22_RW0_rdata;
  wire  mem_0_22_RW0_en;
  wire  mem_0_22_RW0_wmode;
  wire  mem_0_22_RW0_wmask;
  wire [8:0] mem_0_23_RW0_addr;
  wire  mem_0_23_RW0_clk;
  wire [7:0] mem_0_23_RW0_wdata;
  wire [7:0] mem_0_23_RW0_rdata;
  wire  mem_0_23_RW0_en;
  wire  mem_0_23_RW0_wmode;
  wire  mem_0_23_RW0_wmask;
  wire [8:0] mem_0_24_RW0_addr;
  wire  mem_0_24_RW0_clk;
  wire [7:0] mem_0_24_RW0_wdata;
  wire [7:0] mem_0_24_RW0_rdata;
  wire  mem_0_24_RW0_en;
  wire  mem_0_24_RW0_wmode;
  wire  mem_0_24_RW0_wmask;
  wire [8:0] mem_0_25_RW0_addr;
  wire  mem_0_25_RW0_clk;
  wire [7:0] mem_0_25_RW0_wdata;
  wire [7:0] mem_0_25_RW0_rdata;
  wire  mem_0_25_RW0_en;
  wire  mem_0_25_RW0_wmode;
  wire  mem_0_25_RW0_wmask;
  wire [8:0] mem_0_26_RW0_addr;
  wire  mem_0_26_RW0_clk;
  wire [7:0] mem_0_26_RW0_wdata;
  wire [7:0] mem_0_26_RW0_rdata;
  wire  mem_0_26_RW0_en;
  wire  mem_0_26_RW0_wmode;
  wire  mem_0_26_RW0_wmask;
  wire [8:0] mem_0_27_RW0_addr;
  wire  mem_0_27_RW0_clk;
  wire [7:0] mem_0_27_RW0_wdata;
  wire [7:0] mem_0_27_RW0_rdata;
  wire  mem_0_27_RW0_en;
  wire  mem_0_27_RW0_wmode;
  wire  mem_0_27_RW0_wmask;
  wire [8:0] mem_0_28_RW0_addr;
  wire  mem_0_28_RW0_clk;
  wire [7:0] mem_0_28_RW0_wdata;
  wire [7:0] mem_0_28_RW0_rdata;
  wire  mem_0_28_RW0_en;
  wire  mem_0_28_RW0_wmode;
  wire  mem_0_28_RW0_wmask;
  wire [8:0] mem_0_29_RW0_addr;
  wire  mem_0_29_RW0_clk;
  wire [7:0] mem_0_29_RW0_wdata;
  wire [7:0] mem_0_29_RW0_rdata;
  wire  mem_0_29_RW0_en;
  wire  mem_0_29_RW0_wmode;
  wire  mem_0_29_RW0_wmask;
  wire [8:0] mem_0_30_RW0_addr;
  wire  mem_0_30_RW0_clk;
  wire [7:0] mem_0_30_RW0_wdata;
  wire [7:0] mem_0_30_RW0_rdata;
  wire  mem_0_30_RW0_en;
  wire  mem_0_30_RW0_wmode;
  wire  mem_0_30_RW0_wmask;
  wire [8:0] mem_0_31_RW0_addr;
  wire  mem_0_31_RW0_clk;
  wire [7:0] mem_0_31_RW0_wdata;
  wire [7:0] mem_0_31_RW0_rdata;
  wire  mem_0_31_RW0_en;
  wire  mem_0_31_RW0_wmode;
  wire  mem_0_31_RW0_wmask;
  wire [7:0] RW0_rdata_0_0;
  wire [7:0] RW0_rdata_0_1;
  wire [7:0] RW0_rdata_0_2;
  wire [7:0] RW0_rdata_0_3;
  wire [7:0] RW0_rdata_0_4;
  wire [7:0] RW0_rdata_0_5;
  wire [7:0] RW0_rdata_0_6;
  wire [7:0] RW0_rdata_0_7;
  wire [7:0] RW0_rdata_0_8;
  wire [7:0] RW0_rdata_0_9;
  wire [7:0] RW0_rdata_0_10;
  wire [7:0] RW0_rdata_0_11;
  wire [7:0] RW0_rdata_0_12;
  wire [7:0] RW0_rdata_0_13;
  wire [7:0] RW0_rdata_0_14;
  wire [7:0] RW0_rdata_0_15;
  wire [7:0] RW0_rdata_0_16;
  wire [7:0] RW0_rdata_0_17;
  wire [7:0] RW0_rdata_0_18;
  wire [7:0] RW0_rdata_0_19;
  wire [7:0] RW0_rdata_0_20;
  wire [7:0] RW0_rdata_0_21;
  wire [7:0] RW0_rdata_0_22;
  wire [7:0] RW0_rdata_0_23;
  wire [7:0] RW0_rdata_0_24;
  wire [7:0] RW0_rdata_0_25;
  wire [7:0] RW0_rdata_0_26;
  wire [7:0] RW0_rdata_0_27;
  wire [7:0] RW0_rdata_0_28;
  wire [7:0] RW0_rdata_0_29;
  wire [7:0] RW0_rdata_0_30;
  wire [7:0] RW0_rdata_0_31;
  wire [15:0] _GEN_0;
  wire [23:0] _GEN_1;
  wire [31:0] _GEN_2;
  wire [39:0] _GEN_3;
  wire [47:0] _GEN_4;
  wire [55:0] _GEN_5;
  wire [63:0] _GEN_6;
  wire [71:0] _GEN_7;
  wire [79:0] _GEN_8;
  wire [87:0] _GEN_9;
  wire [95:0] _GEN_10;
  wire [103:0] _GEN_11;
  wire [111:0] _GEN_12;
  wire [119:0] _GEN_13;
  wire [127:0] _GEN_14;
  wire [135:0] _GEN_15;
  wire [143:0] _GEN_16;
  wire [151:0] _GEN_17;
  wire [159:0] _GEN_18;
  wire [167:0] _GEN_19;
  wire [175:0] _GEN_20;
  wire [183:0] _GEN_21;
  wire [191:0] _GEN_22;
  wire [199:0] _GEN_23;
  wire [207:0] _GEN_24;
  wire [215:0] _GEN_25;
  wire [223:0] _GEN_26;
  wire [231:0] _GEN_27;
  wire [239:0] _GEN_28;
  wire [247:0] _GEN_29;
  wire [255:0] RW0_rdata_0;
  wire [15:0] _GEN_30;
  wire [23:0] _GEN_31;
  wire [31:0] _GEN_32;
  wire [39:0] _GEN_33;
  wire [47:0] _GEN_34;
  wire [55:0] _GEN_35;
  wire [63:0] _GEN_36;
  wire [71:0] _GEN_37;
  wire [79:0] _GEN_38;
  wire [87:0] _GEN_39;
  wire [95:0] _GEN_40;
  wire [103:0] _GEN_41;
  wire [111:0] _GEN_42;
  wire [119:0] _GEN_43;
  wire [127:0] _GEN_44;
  wire [135:0] _GEN_45;
  wire [143:0] _GEN_46;
  wire [151:0] _GEN_47;
  wire [159:0] _GEN_48;
  wire [167:0] _GEN_49;
  wire [175:0] _GEN_50;
  wire [183:0] _GEN_51;
  wire [191:0] _GEN_52;
  wire [199:0] _GEN_53;
  wire [207:0] _GEN_54;
  wire [215:0] _GEN_55;
  wire [223:0] _GEN_56;
  wire [231:0] _GEN_57;
  wire [239:0] _GEN_58;
  wire [247:0] _GEN_59;
  split_data_arrays_0_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode),
    .RW0_wmask(mem_0_0_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_1 (
    .RW0_addr(mem_0_1_RW0_addr),
    .RW0_clk(mem_0_1_RW0_clk),
    .RW0_wdata(mem_0_1_RW0_wdata),
    .RW0_rdata(mem_0_1_RW0_rdata),
    .RW0_en(mem_0_1_RW0_en),
    .RW0_wmode(mem_0_1_RW0_wmode),
    .RW0_wmask(mem_0_1_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_2 (
    .RW0_addr(mem_0_2_RW0_addr),
    .RW0_clk(mem_0_2_RW0_clk),
    .RW0_wdata(mem_0_2_RW0_wdata),
    .RW0_rdata(mem_0_2_RW0_rdata),
    .RW0_en(mem_0_2_RW0_en),
    .RW0_wmode(mem_0_2_RW0_wmode),
    .RW0_wmask(mem_0_2_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_3 (
    .RW0_addr(mem_0_3_RW0_addr),
    .RW0_clk(mem_0_3_RW0_clk),
    .RW0_wdata(mem_0_3_RW0_wdata),
    .RW0_rdata(mem_0_3_RW0_rdata),
    .RW0_en(mem_0_3_RW0_en),
    .RW0_wmode(mem_0_3_RW0_wmode),
    .RW0_wmask(mem_0_3_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_4 (
    .RW0_addr(mem_0_4_RW0_addr),
    .RW0_clk(mem_0_4_RW0_clk),
    .RW0_wdata(mem_0_4_RW0_wdata),
    .RW0_rdata(mem_0_4_RW0_rdata),
    .RW0_en(mem_0_4_RW0_en),
    .RW0_wmode(mem_0_4_RW0_wmode),
    .RW0_wmask(mem_0_4_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_5 (
    .RW0_addr(mem_0_5_RW0_addr),
    .RW0_clk(mem_0_5_RW0_clk),
    .RW0_wdata(mem_0_5_RW0_wdata),
    .RW0_rdata(mem_0_5_RW0_rdata),
    .RW0_en(mem_0_5_RW0_en),
    .RW0_wmode(mem_0_5_RW0_wmode),
    .RW0_wmask(mem_0_5_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_6 (
    .RW0_addr(mem_0_6_RW0_addr),
    .RW0_clk(mem_0_6_RW0_clk),
    .RW0_wdata(mem_0_6_RW0_wdata),
    .RW0_rdata(mem_0_6_RW0_rdata),
    .RW0_en(mem_0_6_RW0_en),
    .RW0_wmode(mem_0_6_RW0_wmode),
    .RW0_wmask(mem_0_6_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_7 (
    .RW0_addr(mem_0_7_RW0_addr),
    .RW0_clk(mem_0_7_RW0_clk),
    .RW0_wdata(mem_0_7_RW0_wdata),
    .RW0_rdata(mem_0_7_RW0_rdata),
    .RW0_en(mem_0_7_RW0_en),
    .RW0_wmode(mem_0_7_RW0_wmode),
    .RW0_wmask(mem_0_7_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_8 (
    .RW0_addr(mem_0_8_RW0_addr),
    .RW0_clk(mem_0_8_RW0_clk),
    .RW0_wdata(mem_0_8_RW0_wdata),
    .RW0_rdata(mem_0_8_RW0_rdata),
    .RW0_en(mem_0_8_RW0_en),
    .RW0_wmode(mem_0_8_RW0_wmode),
    .RW0_wmask(mem_0_8_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_9 (
    .RW0_addr(mem_0_9_RW0_addr),
    .RW0_clk(mem_0_9_RW0_clk),
    .RW0_wdata(mem_0_9_RW0_wdata),
    .RW0_rdata(mem_0_9_RW0_rdata),
    .RW0_en(mem_0_9_RW0_en),
    .RW0_wmode(mem_0_9_RW0_wmode),
    .RW0_wmask(mem_0_9_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_10 (
    .RW0_addr(mem_0_10_RW0_addr),
    .RW0_clk(mem_0_10_RW0_clk),
    .RW0_wdata(mem_0_10_RW0_wdata),
    .RW0_rdata(mem_0_10_RW0_rdata),
    .RW0_en(mem_0_10_RW0_en),
    .RW0_wmode(mem_0_10_RW0_wmode),
    .RW0_wmask(mem_0_10_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_11 (
    .RW0_addr(mem_0_11_RW0_addr),
    .RW0_clk(mem_0_11_RW0_clk),
    .RW0_wdata(mem_0_11_RW0_wdata),
    .RW0_rdata(mem_0_11_RW0_rdata),
    .RW0_en(mem_0_11_RW0_en),
    .RW0_wmode(mem_0_11_RW0_wmode),
    .RW0_wmask(mem_0_11_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_12 (
    .RW0_addr(mem_0_12_RW0_addr),
    .RW0_clk(mem_0_12_RW0_clk),
    .RW0_wdata(mem_0_12_RW0_wdata),
    .RW0_rdata(mem_0_12_RW0_rdata),
    .RW0_en(mem_0_12_RW0_en),
    .RW0_wmode(mem_0_12_RW0_wmode),
    .RW0_wmask(mem_0_12_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_13 (
    .RW0_addr(mem_0_13_RW0_addr),
    .RW0_clk(mem_0_13_RW0_clk),
    .RW0_wdata(mem_0_13_RW0_wdata),
    .RW0_rdata(mem_0_13_RW0_rdata),
    .RW0_en(mem_0_13_RW0_en),
    .RW0_wmode(mem_0_13_RW0_wmode),
    .RW0_wmask(mem_0_13_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_14 (
    .RW0_addr(mem_0_14_RW0_addr),
    .RW0_clk(mem_0_14_RW0_clk),
    .RW0_wdata(mem_0_14_RW0_wdata),
    .RW0_rdata(mem_0_14_RW0_rdata),
    .RW0_en(mem_0_14_RW0_en),
    .RW0_wmode(mem_0_14_RW0_wmode),
    .RW0_wmask(mem_0_14_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_15 (
    .RW0_addr(mem_0_15_RW0_addr),
    .RW0_clk(mem_0_15_RW0_clk),
    .RW0_wdata(mem_0_15_RW0_wdata),
    .RW0_rdata(mem_0_15_RW0_rdata),
    .RW0_en(mem_0_15_RW0_en),
    .RW0_wmode(mem_0_15_RW0_wmode),
    .RW0_wmask(mem_0_15_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_16 (
    .RW0_addr(mem_0_16_RW0_addr),
    .RW0_clk(mem_0_16_RW0_clk),
    .RW0_wdata(mem_0_16_RW0_wdata),
    .RW0_rdata(mem_0_16_RW0_rdata),
    .RW0_en(mem_0_16_RW0_en),
    .RW0_wmode(mem_0_16_RW0_wmode),
    .RW0_wmask(mem_0_16_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_17 (
    .RW0_addr(mem_0_17_RW0_addr),
    .RW0_clk(mem_0_17_RW0_clk),
    .RW0_wdata(mem_0_17_RW0_wdata),
    .RW0_rdata(mem_0_17_RW0_rdata),
    .RW0_en(mem_0_17_RW0_en),
    .RW0_wmode(mem_0_17_RW0_wmode),
    .RW0_wmask(mem_0_17_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_18 (
    .RW0_addr(mem_0_18_RW0_addr),
    .RW0_clk(mem_0_18_RW0_clk),
    .RW0_wdata(mem_0_18_RW0_wdata),
    .RW0_rdata(mem_0_18_RW0_rdata),
    .RW0_en(mem_0_18_RW0_en),
    .RW0_wmode(mem_0_18_RW0_wmode),
    .RW0_wmask(mem_0_18_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_19 (
    .RW0_addr(mem_0_19_RW0_addr),
    .RW0_clk(mem_0_19_RW0_clk),
    .RW0_wdata(mem_0_19_RW0_wdata),
    .RW0_rdata(mem_0_19_RW0_rdata),
    .RW0_en(mem_0_19_RW0_en),
    .RW0_wmode(mem_0_19_RW0_wmode),
    .RW0_wmask(mem_0_19_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_20 (
    .RW0_addr(mem_0_20_RW0_addr),
    .RW0_clk(mem_0_20_RW0_clk),
    .RW0_wdata(mem_0_20_RW0_wdata),
    .RW0_rdata(mem_0_20_RW0_rdata),
    .RW0_en(mem_0_20_RW0_en),
    .RW0_wmode(mem_0_20_RW0_wmode),
    .RW0_wmask(mem_0_20_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_21 (
    .RW0_addr(mem_0_21_RW0_addr),
    .RW0_clk(mem_0_21_RW0_clk),
    .RW0_wdata(mem_0_21_RW0_wdata),
    .RW0_rdata(mem_0_21_RW0_rdata),
    .RW0_en(mem_0_21_RW0_en),
    .RW0_wmode(mem_0_21_RW0_wmode),
    .RW0_wmask(mem_0_21_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_22 (
    .RW0_addr(mem_0_22_RW0_addr),
    .RW0_clk(mem_0_22_RW0_clk),
    .RW0_wdata(mem_0_22_RW0_wdata),
    .RW0_rdata(mem_0_22_RW0_rdata),
    .RW0_en(mem_0_22_RW0_en),
    .RW0_wmode(mem_0_22_RW0_wmode),
    .RW0_wmask(mem_0_22_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_23 (
    .RW0_addr(mem_0_23_RW0_addr),
    .RW0_clk(mem_0_23_RW0_clk),
    .RW0_wdata(mem_0_23_RW0_wdata),
    .RW0_rdata(mem_0_23_RW0_rdata),
    .RW0_en(mem_0_23_RW0_en),
    .RW0_wmode(mem_0_23_RW0_wmode),
    .RW0_wmask(mem_0_23_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_24 (
    .RW0_addr(mem_0_24_RW0_addr),
    .RW0_clk(mem_0_24_RW0_clk),
    .RW0_wdata(mem_0_24_RW0_wdata),
    .RW0_rdata(mem_0_24_RW0_rdata),
    .RW0_en(mem_0_24_RW0_en),
    .RW0_wmode(mem_0_24_RW0_wmode),
    .RW0_wmask(mem_0_24_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_25 (
    .RW0_addr(mem_0_25_RW0_addr),
    .RW0_clk(mem_0_25_RW0_clk),
    .RW0_wdata(mem_0_25_RW0_wdata),
    .RW0_rdata(mem_0_25_RW0_rdata),
    .RW0_en(mem_0_25_RW0_en),
    .RW0_wmode(mem_0_25_RW0_wmode),
    .RW0_wmask(mem_0_25_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_26 (
    .RW0_addr(mem_0_26_RW0_addr),
    .RW0_clk(mem_0_26_RW0_clk),
    .RW0_wdata(mem_0_26_RW0_wdata),
    .RW0_rdata(mem_0_26_RW0_rdata),
    .RW0_en(mem_0_26_RW0_en),
    .RW0_wmode(mem_0_26_RW0_wmode),
    .RW0_wmask(mem_0_26_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_27 (
    .RW0_addr(mem_0_27_RW0_addr),
    .RW0_clk(mem_0_27_RW0_clk),
    .RW0_wdata(mem_0_27_RW0_wdata),
    .RW0_rdata(mem_0_27_RW0_rdata),
    .RW0_en(mem_0_27_RW0_en),
    .RW0_wmode(mem_0_27_RW0_wmode),
    .RW0_wmask(mem_0_27_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_28 (
    .RW0_addr(mem_0_28_RW0_addr),
    .RW0_clk(mem_0_28_RW0_clk),
    .RW0_wdata(mem_0_28_RW0_wdata),
    .RW0_rdata(mem_0_28_RW0_rdata),
    .RW0_en(mem_0_28_RW0_en),
    .RW0_wmode(mem_0_28_RW0_wmode),
    .RW0_wmask(mem_0_28_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_29 (
    .RW0_addr(mem_0_29_RW0_addr),
    .RW0_clk(mem_0_29_RW0_clk),
    .RW0_wdata(mem_0_29_RW0_wdata),
    .RW0_rdata(mem_0_29_RW0_rdata),
    .RW0_en(mem_0_29_RW0_en),
    .RW0_wmode(mem_0_29_RW0_wmode),
    .RW0_wmask(mem_0_29_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_30 (
    .RW0_addr(mem_0_30_RW0_addr),
    .RW0_clk(mem_0_30_RW0_clk),
    .RW0_wdata(mem_0_30_RW0_wdata),
    .RW0_rdata(mem_0_30_RW0_rdata),
    .RW0_en(mem_0_30_RW0_en),
    .RW0_wmode(mem_0_30_RW0_wmode),
    .RW0_wmask(mem_0_30_RW0_wmask)
  );
  split_data_arrays_0_ext mem_0_31 (
    .RW0_addr(mem_0_31_RW0_addr),
    .RW0_clk(mem_0_31_RW0_clk),
    .RW0_wdata(mem_0_31_RW0_wdata),
    .RW0_rdata(mem_0_31_RW0_rdata),
    .RW0_en(mem_0_31_RW0_en),
    .RW0_wmode(mem_0_31_RW0_wmode),
    .RW0_wmask(mem_0_31_RW0_wmask)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0_1 = mem_0_1_RW0_rdata;
  assign RW0_rdata_0_2 = mem_0_2_RW0_rdata;
  assign RW0_rdata_0_3 = mem_0_3_RW0_rdata;
  assign RW0_rdata_0_4 = mem_0_4_RW0_rdata;
  assign RW0_rdata_0_5 = mem_0_5_RW0_rdata;
  assign RW0_rdata_0_6 = mem_0_6_RW0_rdata;
  assign RW0_rdata_0_7 = mem_0_7_RW0_rdata;
  assign RW0_rdata_0_8 = mem_0_8_RW0_rdata;
  assign RW0_rdata_0_9 = mem_0_9_RW0_rdata;
  assign RW0_rdata_0_10 = mem_0_10_RW0_rdata;
  assign RW0_rdata_0_11 = mem_0_11_RW0_rdata;
  assign RW0_rdata_0_12 = mem_0_12_RW0_rdata;
  assign RW0_rdata_0_13 = mem_0_13_RW0_rdata;
  assign RW0_rdata_0_14 = mem_0_14_RW0_rdata;
  assign RW0_rdata_0_15 = mem_0_15_RW0_rdata;
  assign RW0_rdata_0_16 = mem_0_16_RW0_rdata;
  assign RW0_rdata_0_17 = mem_0_17_RW0_rdata;
  assign RW0_rdata_0_18 = mem_0_18_RW0_rdata;
  assign RW0_rdata_0_19 = mem_0_19_RW0_rdata;
  assign RW0_rdata_0_20 = mem_0_20_RW0_rdata;
  assign RW0_rdata_0_21 = mem_0_21_RW0_rdata;
  assign RW0_rdata_0_22 = mem_0_22_RW0_rdata;
  assign RW0_rdata_0_23 = mem_0_23_RW0_rdata;
  assign RW0_rdata_0_24 = mem_0_24_RW0_rdata;
  assign RW0_rdata_0_25 = mem_0_25_RW0_rdata;
  assign RW0_rdata_0_26 = mem_0_26_RW0_rdata;
  assign RW0_rdata_0_27 = mem_0_27_RW0_rdata;
  assign RW0_rdata_0_28 = mem_0_28_RW0_rdata;
  assign RW0_rdata_0_29 = mem_0_29_RW0_rdata;
  assign RW0_rdata_0_30 = mem_0_30_RW0_rdata;
  assign RW0_rdata_0_31 = mem_0_31_RW0_rdata;
  assign _GEN_0 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_1 = {RW0_rdata_0_2,_GEN_0};
  assign _GEN_2 = {RW0_rdata_0_3,_GEN_1};
  assign _GEN_3 = {RW0_rdata_0_4,_GEN_2};
  assign _GEN_4 = {RW0_rdata_0_5,_GEN_3};
  assign _GEN_5 = {RW0_rdata_0_6,_GEN_4};
  assign _GEN_6 = {RW0_rdata_0_7,_GEN_5};
  assign _GEN_7 = {RW0_rdata_0_8,_GEN_6};
  assign _GEN_8 = {RW0_rdata_0_9,_GEN_7};
  assign _GEN_9 = {RW0_rdata_0_10,_GEN_8};
  assign _GEN_10 = {RW0_rdata_0_11,_GEN_9};
  assign _GEN_11 = {RW0_rdata_0_12,_GEN_10};
  assign _GEN_12 = {RW0_rdata_0_13,_GEN_11};
  assign _GEN_13 = {RW0_rdata_0_14,_GEN_12};
  assign _GEN_14 = {RW0_rdata_0_15,_GEN_13};
  assign _GEN_15 = {RW0_rdata_0_16,_GEN_14};
  assign _GEN_16 = {RW0_rdata_0_17,_GEN_15};
  assign _GEN_17 = {RW0_rdata_0_18,_GEN_16};
  assign _GEN_18 = {RW0_rdata_0_19,_GEN_17};
  assign _GEN_19 = {RW0_rdata_0_20,_GEN_18};
  assign _GEN_20 = {RW0_rdata_0_21,_GEN_19};
  assign _GEN_21 = {RW0_rdata_0_22,_GEN_20};
  assign _GEN_22 = {RW0_rdata_0_23,_GEN_21};
  assign _GEN_23 = {RW0_rdata_0_24,_GEN_22};
  assign _GEN_24 = {RW0_rdata_0_25,_GEN_23};
  assign _GEN_25 = {RW0_rdata_0_26,_GEN_24};
  assign _GEN_26 = {RW0_rdata_0_27,_GEN_25};
  assign _GEN_27 = {RW0_rdata_0_28,_GEN_26};
  assign _GEN_28 = {RW0_rdata_0_29,_GEN_27};
  assign _GEN_29 = {RW0_rdata_0_30,_GEN_28};
  assign RW0_rdata_0 = {RW0_rdata_0_31,_GEN_29};
  assign _GEN_30 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_31 = {RW0_rdata_0_2,_GEN_0};
  assign _GEN_32 = {RW0_rdata_0_3,_GEN_1};
  assign _GEN_33 = {RW0_rdata_0_4,_GEN_2};
  assign _GEN_34 = {RW0_rdata_0_5,_GEN_3};
  assign _GEN_35 = {RW0_rdata_0_6,_GEN_4};
  assign _GEN_36 = {RW0_rdata_0_7,_GEN_5};
  assign _GEN_37 = {RW0_rdata_0_8,_GEN_6};
  assign _GEN_38 = {RW0_rdata_0_9,_GEN_7};
  assign _GEN_39 = {RW0_rdata_0_10,_GEN_8};
  assign _GEN_40 = {RW0_rdata_0_11,_GEN_9};
  assign _GEN_41 = {RW0_rdata_0_12,_GEN_10};
  assign _GEN_42 = {RW0_rdata_0_13,_GEN_11};
  assign _GEN_43 = {RW0_rdata_0_14,_GEN_12};
  assign _GEN_44 = {RW0_rdata_0_15,_GEN_13};
  assign _GEN_45 = {RW0_rdata_0_16,_GEN_14};
  assign _GEN_46 = {RW0_rdata_0_17,_GEN_15};
  assign _GEN_47 = {RW0_rdata_0_18,_GEN_16};
  assign _GEN_48 = {RW0_rdata_0_19,_GEN_17};
  assign _GEN_49 = {RW0_rdata_0_20,_GEN_18};
  assign _GEN_50 = {RW0_rdata_0_21,_GEN_19};
  assign _GEN_51 = {RW0_rdata_0_22,_GEN_20};
  assign _GEN_52 = {RW0_rdata_0_23,_GEN_21};
  assign _GEN_53 = {RW0_rdata_0_24,_GEN_22};
  assign _GEN_54 = {RW0_rdata_0_25,_GEN_23};
  assign _GEN_55 = {RW0_rdata_0_26,_GEN_24};
  assign _GEN_56 = {RW0_rdata_0_27,_GEN_25};
  assign _GEN_57 = {RW0_rdata_0_28,_GEN_26};
  assign _GEN_58 = {RW0_rdata_0_29,_GEN_27};
  assign _GEN_59 = {RW0_rdata_0_30,_GEN_28};
  assign RW0_rdata = {RW0_rdata_0_31,_GEN_29};
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata[7:0];
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
  assign mem_0_0_RW0_wmask = RW0_wmask[0];
  assign mem_0_1_RW0_addr = RW0_addr;
  assign mem_0_1_RW0_clk = RW0_clk;
  assign mem_0_1_RW0_wdata = RW0_wdata[15:8];
  assign mem_0_1_RW0_en = RW0_en;
  assign mem_0_1_RW0_wmode = RW0_wmode;
  assign mem_0_1_RW0_wmask = RW0_wmask[1];
  assign mem_0_2_RW0_addr = RW0_addr;
  assign mem_0_2_RW0_clk = RW0_clk;
  assign mem_0_2_RW0_wdata = RW0_wdata[23:16];
  assign mem_0_2_RW0_en = RW0_en;
  assign mem_0_2_RW0_wmode = RW0_wmode;
  assign mem_0_2_RW0_wmask = RW0_wmask[2];
  assign mem_0_3_RW0_addr = RW0_addr;
  assign mem_0_3_RW0_clk = RW0_clk;
  assign mem_0_3_RW0_wdata = RW0_wdata[31:24];
  assign mem_0_3_RW0_en = RW0_en;
  assign mem_0_3_RW0_wmode = RW0_wmode;
  assign mem_0_3_RW0_wmask = RW0_wmask[3];
  assign mem_0_4_RW0_addr = RW0_addr;
  assign mem_0_4_RW0_clk = RW0_clk;
  assign mem_0_4_RW0_wdata = RW0_wdata[39:32];
  assign mem_0_4_RW0_en = RW0_en;
  assign mem_0_4_RW0_wmode = RW0_wmode;
  assign mem_0_4_RW0_wmask = RW0_wmask[4];
  assign mem_0_5_RW0_addr = RW0_addr;
  assign mem_0_5_RW0_clk = RW0_clk;
  assign mem_0_5_RW0_wdata = RW0_wdata[47:40];
  assign mem_0_5_RW0_en = RW0_en;
  assign mem_0_5_RW0_wmode = RW0_wmode;
  assign mem_0_5_RW0_wmask = RW0_wmask[5];
  assign mem_0_6_RW0_addr = RW0_addr;
  assign mem_0_6_RW0_clk = RW0_clk;
  assign mem_0_6_RW0_wdata = RW0_wdata[55:48];
  assign mem_0_6_RW0_en = RW0_en;
  assign mem_0_6_RW0_wmode = RW0_wmode;
  assign mem_0_6_RW0_wmask = RW0_wmask[6];
  assign mem_0_7_RW0_addr = RW0_addr;
  assign mem_0_7_RW0_clk = RW0_clk;
  assign mem_0_7_RW0_wdata = RW0_wdata[63:56];
  assign mem_0_7_RW0_en = RW0_en;
  assign mem_0_7_RW0_wmode = RW0_wmode;
  assign mem_0_7_RW0_wmask = RW0_wmask[7];
  assign mem_0_8_RW0_addr = RW0_addr;
  assign mem_0_8_RW0_clk = RW0_clk;
  assign mem_0_8_RW0_wdata = RW0_wdata[71:64];
  assign mem_0_8_RW0_en = RW0_en;
  assign mem_0_8_RW0_wmode = RW0_wmode;
  assign mem_0_8_RW0_wmask = RW0_wmask[8];
  assign mem_0_9_RW0_addr = RW0_addr;
  assign mem_0_9_RW0_clk = RW0_clk;
  assign mem_0_9_RW0_wdata = RW0_wdata[79:72];
  assign mem_0_9_RW0_en = RW0_en;
  assign mem_0_9_RW0_wmode = RW0_wmode;
  assign mem_0_9_RW0_wmask = RW0_wmask[9];
  assign mem_0_10_RW0_addr = RW0_addr;
  assign mem_0_10_RW0_clk = RW0_clk;
  assign mem_0_10_RW0_wdata = RW0_wdata[87:80];
  assign mem_0_10_RW0_en = RW0_en;
  assign mem_0_10_RW0_wmode = RW0_wmode;
  assign mem_0_10_RW0_wmask = RW0_wmask[10];
  assign mem_0_11_RW0_addr = RW0_addr;
  assign mem_0_11_RW0_clk = RW0_clk;
  assign mem_0_11_RW0_wdata = RW0_wdata[95:88];
  assign mem_0_11_RW0_en = RW0_en;
  assign mem_0_11_RW0_wmode = RW0_wmode;
  assign mem_0_11_RW0_wmask = RW0_wmask[11];
  assign mem_0_12_RW0_addr = RW0_addr;
  assign mem_0_12_RW0_clk = RW0_clk;
  assign mem_0_12_RW0_wdata = RW0_wdata[103:96];
  assign mem_0_12_RW0_en = RW0_en;
  assign mem_0_12_RW0_wmode = RW0_wmode;
  assign mem_0_12_RW0_wmask = RW0_wmask[12];
  assign mem_0_13_RW0_addr = RW0_addr;
  assign mem_0_13_RW0_clk = RW0_clk;
  assign mem_0_13_RW0_wdata = RW0_wdata[111:104];
  assign mem_0_13_RW0_en = RW0_en;
  assign mem_0_13_RW0_wmode = RW0_wmode;
  assign mem_0_13_RW0_wmask = RW0_wmask[13];
  assign mem_0_14_RW0_addr = RW0_addr;
  assign mem_0_14_RW0_clk = RW0_clk;
  assign mem_0_14_RW0_wdata = RW0_wdata[119:112];
  assign mem_0_14_RW0_en = RW0_en;
  assign mem_0_14_RW0_wmode = RW0_wmode;
  assign mem_0_14_RW0_wmask = RW0_wmask[14];
  assign mem_0_15_RW0_addr = RW0_addr;
  assign mem_0_15_RW0_clk = RW0_clk;
  assign mem_0_15_RW0_wdata = RW0_wdata[127:120];
  assign mem_0_15_RW0_en = RW0_en;
  assign mem_0_15_RW0_wmode = RW0_wmode;
  assign mem_0_15_RW0_wmask = RW0_wmask[15];
  assign mem_0_16_RW0_addr = RW0_addr;
  assign mem_0_16_RW0_clk = RW0_clk;
  assign mem_0_16_RW0_wdata = RW0_wdata[135:128];
  assign mem_0_16_RW0_en = RW0_en;
  assign mem_0_16_RW0_wmode = RW0_wmode;
  assign mem_0_16_RW0_wmask = RW0_wmask[16];
  assign mem_0_17_RW0_addr = RW0_addr;
  assign mem_0_17_RW0_clk = RW0_clk;
  assign mem_0_17_RW0_wdata = RW0_wdata[143:136];
  assign mem_0_17_RW0_en = RW0_en;
  assign mem_0_17_RW0_wmode = RW0_wmode;
  assign mem_0_17_RW0_wmask = RW0_wmask[17];
  assign mem_0_18_RW0_addr = RW0_addr;
  assign mem_0_18_RW0_clk = RW0_clk;
  assign mem_0_18_RW0_wdata = RW0_wdata[151:144];
  assign mem_0_18_RW0_en = RW0_en;
  assign mem_0_18_RW0_wmode = RW0_wmode;
  assign mem_0_18_RW0_wmask = RW0_wmask[18];
  assign mem_0_19_RW0_addr = RW0_addr;
  assign mem_0_19_RW0_clk = RW0_clk;
  assign mem_0_19_RW0_wdata = RW0_wdata[159:152];
  assign mem_0_19_RW0_en = RW0_en;
  assign mem_0_19_RW0_wmode = RW0_wmode;
  assign mem_0_19_RW0_wmask = RW0_wmask[19];
  assign mem_0_20_RW0_addr = RW0_addr;
  assign mem_0_20_RW0_clk = RW0_clk;
  assign mem_0_20_RW0_wdata = RW0_wdata[167:160];
  assign mem_0_20_RW0_en = RW0_en;
  assign mem_0_20_RW0_wmode = RW0_wmode;
  assign mem_0_20_RW0_wmask = RW0_wmask[20];
  assign mem_0_21_RW0_addr = RW0_addr;
  assign mem_0_21_RW0_clk = RW0_clk;
  assign mem_0_21_RW0_wdata = RW0_wdata[175:168];
  assign mem_0_21_RW0_en = RW0_en;
  assign mem_0_21_RW0_wmode = RW0_wmode;
  assign mem_0_21_RW0_wmask = RW0_wmask[21];
  assign mem_0_22_RW0_addr = RW0_addr;
  assign mem_0_22_RW0_clk = RW0_clk;
  assign mem_0_22_RW0_wdata = RW0_wdata[183:176];
  assign mem_0_22_RW0_en = RW0_en;
  assign mem_0_22_RW0_wmode = RW0_wmode;
  assign mem_0_22_RW0_wmask = RW0_wmask[22];
  assign mem_0_23_RW0_addr = RW0_addr;
  assign mem_0_23_RW0_clk = RW0_clk;
  assign mem_0_23_RW0_wdata = RW0_wdata[191:184];
  assign mem_0_23_RW0_en = RW0_en;
  assign mem_0_23_RW0_wmode = RW0_wmode;
  assign mem_0_23_RW0_wmask = RW0_wmask[23];
  assign mem_0_24_RW0_addr = RW0_addr;
  assign mem_0_24_RW0_clk = RW0_clk;
  assign mem_0_24_RW0_wdata = RW0_wdata[199:192];
  assign mem_0_24_RW0_en = RW0_en;
  assign mem_0_24_RW0_wmode = RW0_wmode;
  assign mem_0_24_RW0_wmask = RW0_wmask[24];
  assign mem_0_25_RW0_addr = RW0_addr;
  assign mem_0_25_RW0_clk = RW0_clk;
  assign mem_0_25_RW0_wdata = RW0_wdata[207:200];
  assign mem_0_25_RW0_en = RW0_en;
  assign mem_0_25_RW0_wmode = RW0_wmode;
  assign mem_0_25_RW0_wmask = RW0_wmask[25];
  assign mem_0_26_RW0_addr = RW0_addr;
  assign mem_0_26_RW0_clk = RW0_clk;
  assign mem_0_26_RW0_wdata = RW0_wdata[215:208];
  assign mem_0_26_RW0_en = RW0_en;
  assign mem_0_26_RW0_wmode = RW0_wmode;
  assign mem_0_26_RW0_wmask = RW0_wmask[26];
  assign mem_0_27_RW0_addr = RW0_addr;
  assign mem_0_27_RW0_clk = RW0_clk;
  assign mem_0_27_RW0_wdata = RW0_wdata[223:216];
  assign mem_0_27_RW0_en = RW0_en;
  assign mem_0_27_RW0_wmode = RW0_wmode;
  assign mem_0_27_RW0_wmask = RW0_wmask[27];
  assign mem_0_28_RW0_addr = RW0_addr;
  assign mem_0_28_RW0_clk = RW0_clk;
  assign mem_0_28_RW0_wdata = RW0_wdata[231:224];
  assign mem_0_28_RW0_en = RW0_en;
  assign mem_0_28_RW0_wmode = RW0_wmode;
  assign mem_0_28_RW0_wmask = RW0_wmask[28];
  assign mem_0_29_RW0_addr = RW0_addr;
  assign mem_0_29_RW0_clk = RW0_clk;
  assign mem_0_29_RW0_wdata = RW0_wdata[239:232];
  assign mem_0_29_RW0_en = RW0_en;
  assign mem_0_29_RW0_wmode = RW0_wmode;
  assign mem_0_29_RW0_wmask = RW0_wmask[29];
  assign mem_0_30_RW0_addr = RW0_addr;
  assign mem_0_30_RW0_clk = RW0_clk;
  assign mem_0_30_RW0_wdata = RW0_wdata[247:240];
  assign mem_0_30_RW0_en = RW0_en;
  assign mem_0_30_RW0_wmode = RW0_wmode;
  assign mem_0_30_RW0_wmask = RW0_wmask[30];
  assign mem_0_31_RW0_addr = RW0_addr;
  assign mem_0_31_RW0_clk = RW0_clk;
  assign mem_0_31_RW0_wdata = RW0_wdata[255:248];
  assign mem_0_31_RW0_en = RW0_en;
  assign mem_0_31_RW0_wmode = RW0_wmode;
  assign mem_0_31_RW0_wmask = RW0_wmask[31];
endmodule
module data_arrays_0_0_ext(
  input  [8:0]   RW0_addr,
  input          RW0_clk,
  input  [127:0] RW0_wdata,
  output [127:0] RW0_rdata,
  input          RW0_en,
  input          RW0_wmode,
  input  [3:0]   RW0_wmask
);
  wire [8:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [31:0] mem_0_0_RW0_wdata;
  wire [31:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire  mem_0_0_RW0_wmask;
  wire [8:0] mem_0_1_RW0_addr;
  wire  mem_0_1_RW0_clk;
  wire [31:0] mem_0_1_RW0_wdata;
  wire [31:0] mem_0_1_RW0_rdata;
  wire  mem_0_1_RW0_en;
  wire  mem_0_1_RW0_wmode;
  wire  mem_0_1_RW0_wmask;
  wire [8:0] mem_0_2_RW0_addr;
  wire  mem_0_2_RW0_clk;
  wire [31:0] mem_0_2_RW0_wdata;
  wire [31:0] mem_0_2_RW0_rdata;
  wire  mem_0_2_RW0_en;
  wire  mem_0_2_RW0_wmode;
  wire  mem_0_2_RW0_wmask;
  wire [8:0] mem_0_3_RW0_addr;
  wire  mem_0_3_RW0_clk;
  wire [31:0] mem_0_3_RW0_wdata;
  wire [31:0] mem_0_3_RW0_rdata;
  wire  mem_0_3_RW0_en;
  wire  mem_0_3_RW0_wmode;
  wire  mem_0_3_RW0_wmask;
  wire [31:0] RW0_rdata_0_0;
  wire [31:0] RW0_rdata_0_1;
  wire [31:0] RW0_rdata_0_2;
  wire [31:0] RW0_rdata_0_3;
  wire [63:0] _GEN_0;
  wire [95:0] _GEN_1;
  wire [127:0] RW0_rdata_0;
  wire [63:0] _GEN_2;
  wire [95:0] _GEN_3;
  split_data_arrays_0_0_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode),
    .RW0_wmask(mem_0_0_RW0_wmask)
  );
  split_data_arrays_0_0_ext mem_0_1 (
    .RW0_addr(mem_0_1_RW0_addr),
    .RW0_clk(mem_0_1_RW0_clk),
    .RW0_wdata(mem_0_1_RW0_wdata),
    .RW0_rdata(mem_0_1_RW0_rdata),
    .RW0_en(mem_0_1_RW0_en),
    .RW0_wmode(mem_0_1_RW0_wmode),
    .RW0_wmask(mem_0_1_RW0_wmask)
  );
  split_data_arrays_0_0_ext mem_0_2 (
    .RW0_addr(mem_0_2_RW0_addr),
    .RW0_clk(mem_0_2_RW0_clk),
    .RW0_wdata(mem_0_2_RW0_wdata),
    .RW0_rdata(mem_0_2_RW0_rdata),
    .RW0_en(mem_0_2_RW0_en),
    .RW0_wmode(mem_0_2_RW0_wmode),
    .RW0_wmask(mem_0_2_RW0_wmask)
  );
  split_data_arrays_0_0_ext mem_0_3 (
    .RW0_addr(mem_0_3_RW0_addr),
    .RW0_clk(mem_0_3_RW0_clk),
    .RW0_wdata(mem_0_3_RW0_wdata),
    .RW0_rdata(mem_0_3_RW0_rdata),
    .RW0_en(mem_0_3_RW0_en),
    .RW0_wmode(mem_0_3_RW0_wmode),
    .RW0_wmask(mem_0_3_RW0_wmask)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0_1 = mem_0_1_RW0_rdata;
  assign RW0_rdata_0_2 = mem_0_2_RW0_rdata;
  assign RW0_rdata_0_3 = mem_0_3_RW0_rdata;
  assign _GEN_0 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_1 = {RW0_rdata_0_2,_GEN_0};
  assign RW0_rdata_0 = {RW0_rdata_0_3,_GEN_1};
  assign _GEN_2 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_3 = {RW0_rdata_0_2,_GEN_0};
  assign RW0_rdata = {RW0_rdata_0_3,_GEN_1};
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata[31:0];
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
  assign mem_0_0_RW0_wmask = RW0_wmask[0];
  assign mem_0_1_RW0_addr = RW0_addr;
  assign mem_0_1_RW0_clk = RW0_clk;
  assign mem_0_1_RW0_wdata = RW0_wdata[63:32];
  assign mem_0_1_RW0_en = RW0_en;
  assign mem_0_1_RW0_wmode = RW0_wmode;
  assign mem_0_1_RW0_wmask = RW0_wmask[1];
  assign mem_0_2_RW0_addr = RW0_addr;
  assign mem_0_2_RW0_clk = RW0_clk;
  assign mem_0_2_RW0_wdata = RW0_wdata[95:64];
  assign mem_0_2_RW0_en = RW0_en;
  assign mem_0_2_RW0_wmode = RW0_wmode;
  assign mem_0_2_RW0_wmask = RW0_wmask[2];
  assign mem_0_3_RW0_addr = RW0_addr;
  assign mem_0_3_RW0_clk = RW0_clk;
  assign mem_0_3_RW0_wdata = RW0_wdata[127:96];
  assign mem_0_3_RW0_en = RW0_en;
  assign mem_0_3_RW0_wmode = RW0_wmode;
  assign mem_0_3_RW0_wmask = RW0_wmask[3];
endmodule
module cc_dir_ext(
  input  [9:0]   RW0_addr,
  input          RW0_clk,
  input  [135:0] RW0_wdata,
  output [135:0] RW0_rdata,
  input          RW0_en,
  input          RW0_wmode,
  input  [7:0]   RW0_wmask
);
  wire [9:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [16:0] mem_0_0_RW0_wdata;
  wire [16:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire  mem_0_0_RW0_wmask;
  wire [9:0] mem_0_1_RW0_addr;
  wire  mem_0_1_RW0_clk;
  wire [16:0] mem_0_1_RW0_wdata;
  wire [16:0] mem_0_1_RW0_rdata;
  wire  mem_0_1_RW0_en;
  wire  mem_0_1_RW0_wmode;
  wire  mem_0_1_RW0_wmask;
  wire [9:0] mem_0_2_RW0_addr;
  wire  mem_0_2_RW0_clk;
  wire [16:0] mem_0_2_RW0_wdata;
  wire [16:0] mem_0_2_RW0_rdata;
  wire  mem_0_2_RW0_en;
  wire  mem_0_2_RW0_wmode;
  wire  mem_0_2_RW0_wmask;
  wire [9:0] mem_0_3_RW0_addr;
  wire  mem_0_3_RW0_clk;
  wire [16:0] mem_0_3_RW0_wdata;
  wire [16:0] mem_0_3_RW0_rdata;
  wire  mem_0_3_RW0_en;
  wire  mem_0_3_RW0_wmode;
  wire  mem_0_3_RW0_wmask;
  wire [9:0] mem_0_4_RW0_addr;
  wire  mem_0_4_RW0_clk;
  wire [16:0] mem_0_4_RW0_wdata;
  wire [16:0] mem_0_4_RW0_rdata;
  wire  mem_0_4_RW0_en;
  wire  mem_0_4_RW0_wmode;
  wire  mem_0_4_RW0_wmask;
  wire [9:0] mem_0_5_RW0_addr;
  wire  mem_0_5_RW0_clk;
  wire [16:0] mem_0_5_RW0_wdata;
  wire [16:0] mem_0_5_RW0_rdata;
  wire  mem_0_5_RW0_en;
  wire  mem_0_5_RW0_wmode;
  wire  mem_0_5_RW0_wmask;
  wire [9:0] mem_0_6_RW0_addr;
  wire  mem_0_6_RW0_clk;
  wire [16:0] mem_0_6_RW0_wdata;
  wire [16:0] mem_0_6_RW0_rdata;
  wire  mem_0_6_RW0_en;
  wire  mem_0_6_RW0_wmode;
  wire  mem_0_6_RW0_wmask;
  wire [9:0] mem_0_7_RW0_addr;
  wire  mem_0_7_RW0_clk;
  wire [16:0] mem_0_7_RW0_wdata;
  wire [16:0] mem_0_7_RW0_rdata;
  wire  mem_0_7_RW0_en;
  wire  mem_0_7_RW0_wmode;
  wire  mem_0_7_RW0_wmask;
  wire [16:0] RW0_rdata_0_0;
  wire [16:0] RW0_rdata_0_1;
  wire [16:0] RW0_rdata_0_2;
  wire [16:0] RW0_rdata_0_3;
  wire [16:0] RW0_rdata_0_4;
  wire [16:0] RW0_rdata_0_5;
  wire [16:0] RW0_rdata_0_6;
  wire [16:0] RW0_rdata_0_7;
  wire [33:0] _GEN_0;
  wire [50:0] _GEN_1;
  wire [67:0] _GEN_2;
  wire [84:0] _GEN_3;
  wire [101:0] _GEN_4;
  wire [118:0] _GEN_5;
  wire [135:0] RW0_rdata_0;
  wire [33:0] _GEN_6;
  wire [50:0] _GEN_7;
  wire [67:0] _GEN_8;
  wire [84:0] _GEN_9;
  wire [101:0] _GEN_10;
  wire [118:0] _GEN_11;
  split_cc_dir_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode),
    .RW0_wmask(mem_0_0_RW0_wmask)
  );
  split_cc_dir_ext mem_0_1 (
    .RW0_addr(mem_0_1_RW0_addr),
    .RW0_clk(mem_0_1_RW0_clk),
    .RW0_wdata(mem_0_1_RW0_wdata),
    .RW0_rdata(mem_0_1_RW0_rdata),
    .RW0_en(mem_0_1_RW0_en),
    .RW0_wmode(mem_0_1_RW0_wmode),
    .RW0_wmask(mem_0_1_RW0_wmask)
  );
  split_cc_dir_ext mem_0_2 (
    .RW0_addr(mem_0_2_RW0_addr),
    .RW0_clk(mem_0_2_RW0_clk),
    .RW0_wdata(mem_0_2_RW0_wdata),
    .RW0_rdata(mem_0_2_RW0_rdata),
    .RW0_en(mem_0_2_RW0_en),
    .RW0_wmode(mem_0_2_RW0_wmode),
    .RW0_wmask(mem_0_2_RW0_wmask)
  );
  split_cc_dir_ext mem_0_3 (
    .RW0_addr(mem_0_3_RW0_addr),
    .RW0_clk(mem_0_3_RW0_clk),
    .RW0_wdata(mem_0_3_RW0_wdata),
    .RW0_rdata(mem_0_3_RW0_rdata),
    .RW0_en(mem_0_3_RW0_en),
    .RW0_wmode(mem_0_3_RW0_wmode),
    .RW0_wmask(mem_0_3_RW0_wmask)
  );
  split_cc_dir_ext mem_0_4 (
    .RW0_addr(mem_0_4_RW0_addr),
    .RW0_clk(mem_0_4_RW0_clk),
    .RW0_wdata(mem_0_4_RW0_wdata),
    .RW0_rdata(mem_0_4_RW0_rdata),
    .RW0_en(mem_0_4_RW0_en),
    .RW0_wmode(mem_0_4_RW0_wmode),
    .RW0_wmask(mem_0_4_RW0_wmask)
  );
  split_cc_dir_ext mem_0_5 (
    .RW0_addr(mem_0_5_RW0_addr),
    .RW0_clk(mem_0_5_RW0_clk),
    .RW0_wdata(mem_0_5_RW0_wdata),
    .RW0_rdata(mem_0_5_RW0_rdata),
    .RW0_en(mem_0_5_RW0_en),
    .RW0_wmode(mem_0_5_RW0_wmode),
    .RW0_wmask(mem_0_5_RW0_wmask)
  );
  split_cc_dir_ext mem_0_6 (
    .RW0_addr(mem_0_6_RW0_addr),
    .RW0_clk(mem_0_6_RW0_clk),
    .RW0_wdata(mem_0_6_RW0_wdata),
    .RW0_rdata(mem_0_6_RW0_rdata),
    .RW0_en(mem_0_6_RW0_en),
    .RW0_wmode(mem_0_6_RW0_wmode),
    .RW0_wmask(mem_0_6_RW0_wmask)
  );
  split_cc_dir_ext mem_0_7 (
    .RW0_addr(mem_0_7_RW0_addr),
    .RW0_clk(mem_0_7_RW0_clk),
    .RW0_wdata(mem_0_7_RW0_wdata),
    .RW0_rdata(mem_0_7_RW0_rdata),
    .RW0_en(mem_0_7_RW0_en),
    .RW0_wmode(mem_0_7_RW0_wmode),
    .RW0_wmask(mem_0_7_RW0_wmask)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0_1 = mem_0_1_RW0_rdata;
  assign RW0_rdata_0_2 = mem_0_2_RW0_rdata;
  assign RW0_rdata_0_3 = mem_0_3_RW0_rdata;
  assign RW0_rdata_0_4 = mem_0_4_RW0_rdata;
  assign RW0_rdata_0_5 = mem_0_5_RW0_rdata;
  assign RW0_rdata_0_6 = mem_0_6_RW0_rdata;
  assign RW0_rdata_0_7 = mem_0_7_RW0_rdata;
  assign _GEN_0 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_1 = {RW0_rdata_0_2,_GEN_0};
  assign _GEN_2 = {RW0_rdata_0_3,_GEN_1};
  assign _GEN_3 = {RW0_rdata_0_4,_GEN_2};
  assign _GEN_4 = {RW0_rdata_0_5,_GEN_3};
  assign _GEN_5 = {RW0_rdata_0_6,_GEN_4};
  assign RW0_rdata_0 = {RW0_rdata_0_7,_GEN_5};
  assign _GEN_6 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_7 = {RW0_rdata_0_2,_GEN_0};
  assign _GEN_8 = {RW0_rdata_0_3,_GEN_1};
  assign _GEN_9 = {RW0_rdata_0_4,_GEN_2};
  assign _GEN_10 = {RW0_rdata_0_5,_GEN_3};
  assign _GEN_11 = {RW0_rdata_0_6,_GEN_4};
  assign RW0_rdata = {RW0_rdata_0_7,_GEN_5};
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata[16:0];
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
  assign mem_0_0_RW0_wmask = RW0_wmask[0];
  assign mem_0_1_RW0_addr = RW0_addr;
  assign mem_0_1_RW0_clk = RW0_clk;
  assign mem_0_1_RW0_wdata = RW0_wdata[33:17];
  assign mem_0_1_RW0_en = RW0_en;
  assign mem_0_1_RW0_wmode = RW0_wmode;
  assign mem_0_1_RW0_wmask = RW0_wmask[1];
  assign mem_0_2_RW0_addr = RW0_addr;
  assign mem_0_2_RW0_clk = RW0_clk;
  assign mem_0_2_RW0_wdata = RW0_wdata[50:34];
  assign mem_0_2_RW0_en = RW0_en;
  assign mem_0_2_RW0_wmode = RW0_wmode;
  assign mem_0_2_RW0_wmask = RW0_wmask[2];
  assign mem_0_3_RW0_addr = RW0_addr;
  assign mem_0_3_RW0_clk = RW0_clk;
  assign mem_0_3_RW0_wdata = RW0_wdata[67:51];
  assign mem_0_3_RW0_en = RW0_en;
  assign mem_0_3_RW0_wmode = RW0_wmode;
  assign mem_0_3_RW0_wmask = RW0_wmask[3];
  assign mem_0_4_RW0_addr = RW0_addr;
  assign mem_0_4_RW0_clk = RW0_clk;
  assign mem_0_4_RW0_wdata = RW0_wdata[84:68];
  assign mem_0_4_RW0_en = RW0_en;
  assign mem_0_4_RW0_wmode = RW0_wmode;
  assign mem_0_4_RW0_wmask = RW0_wmask[4];
  assign mem_0_5_RW0_addr = RW0_addr;
  assign mem_0_5_RW0_clk = RW0_clk;
  assign mem_0_5_RW0_wdata = RW0_wdata[101:85];
  assign mem_0_5_RW0_en = RW0_en;
  assign mem_0_5_RW0_wmode = RW0_wmode;
  assign mem_0_5_RW0_wmask = RW0_wmask[5];
  assign mem_0_6_RW0_addr = RW0_addr;
  assign mem_0_6_RW0_clk = RW0_clk;
  assign mem_0_6_RW0_wdata = RW0_wdata[118:102];
  assign mem_0_6_RW0_en = RW0_en;
  assign mem_0_6_RW0_wmode = RW0_wmode;
  assign mem_0_6_RW0_wmask = RW0_wmask[6];
  assign mem_0_7_RW0_addr = RW0_addr;
  assign mem_0_7_RW0_clk = RW0_clk;
  assign mem_0_7_RW0_wdata = RW0_wdata[135:119];
  assign mem_0_7_RW0_en = RW0_en;
  assign mem_0_7_RW0_wmode = RW0_wmode;
  assign mem_0_7_RW0_wmask = RW0_wmask[7];
endmodule
module cc_banks_0_ext(
  input  [13:0] RW0_addr,
  input         RW0_clk,
  input  [63:0] RW0_wdata,
  output [63:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  wire [13:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [63:0] mem_0_0_RW0_wdata;
  wire [63:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire [63:0] RW0_rdata_0_0;
  wire [63:0] RW0_rdata_0;
  split_cc_banks_0_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0 = RW0_rdata_0_0;
  assign RW0_rdata = mem_0_0_RW0_rdata;
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata;
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
endmodule
(* blackbox *)
module split_tag_array_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [21:0] RW0_wdata,
  output [21:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode,
  input         RW0_wmask
);
  reg [21:0] ram [0:63];
  reg [31:0] _RAND_0;
  wire [21:0] ram_RW_0_r_0_data;
  wire [5:0] ram_RW_0_r_0_addr;
  wire [21:0] ram_RW_0_w_0_data;
  wire [5:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [21:0] _GEN_3;
  wire [5:0] _GEN_4;
  reg [5:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [5:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = RW0_wmask;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = RW0_wmask;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    ram[initvar] = _RAND_0[21:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
(* blackbox *)
module split_array_0_0_ext(
  input  [8:0]  W0_addr,
  input         W0_clk,
  input  [63:0] W0_data,
  input         W0_en,
  input         W0_mask,
  input  [8:0]  R0_addr,
  input         R0_clk,
  output [63:0] R0_data,
  input         R0_en
);
  reg [63:0] ram [0:511];
  reg [63:0] _RAND_0;
  wire [63:0] ram_R_0_data;
  wire [8:0] ram_R_0_addr;
  wire [63:0] ram_W_0_data;
  wire [8:0] ram_W_0_addr;
  wire  ram_W_0_mask;
  wire  ram_W_0_en;
  wire  _GEN_0;
  wire [8:0] _GEN_1;
  reg [8:0] ram_R_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  ram_R_0_addr_en;
  wire  _GEN_2;
  wire  _GEN_3;
  wire [8:0] _GEN_4;
  wire [63:0] _GEN_5;
  assign ram_R_0_addr = ram_R_0_addr_pipe_0;
  assign ram_R_0_data = ram[ram_R_0_addr];
  assign ram_W_0_data = W0_data;
  assign ram_W_0_addr = W0_addr;
  assign ram_W_0_mask = W0_mask;
  assign ram_W_0_en = W0_en;
  assign R0_data = ram_R_0_data;
  assign _GEN_0 = R0_en;
  assign _GEN_1 = R0_addr;
  assign ram_R_0_addr_en = R0_en;
  assign _GEN_2 = W0_en;
  assign _GEN_3 = W0_mask;
  assign _GEN_4 = W0_addr;
  assign _GEN_5 = W0_data;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    ram[initvar] = _RAND_0[63:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_R_0_addr_pipe_0 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge W0_clk) begin
    if(ram_W_0_en & ram_W_0_mask) begin
      ram[ram_W_0_addr] <= ram_W_0_data;
    end
  end
  always @(posedge R0_clk) begin
    if (_GEN_0) begin
      ram_R_0_addr_pipe_0 <= R0_addr;
    end
  end
endmodule
(* blackbox *)
module split_tag_array_0_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [20:0] RW0_wdata,
  output [20:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode,
  input         RW0_wmask
);
  reg [20:0] ram [0:63];
  reg [31:0] _RAND_0;
  wire [20:0] ram_RW_0_r_0_data;
  wire [5:0] ram_RW_0_r_0_addr;
  wire [20:0] ram_RW_0_w_0_data;
  wire [5:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [20:0] _GEN_3;
  wire [5:0] _GEN_4;
  reg [5:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [5:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = RW0_wmask;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = RW0_wmask;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    ram[initvar] = _RAND_0[20:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
(* blackbox *)
module split_dataArrayWay_0_ext(
  input  [8:0]  RW0_addr,
  input         RW0_clk,
  input  [63:0] RW0_wdata,
  output [63:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  reg [63:0] ram [0:511];
  reg [63:0] _RAND_0;
  wire [63:0] ram_RW_0_r_0_data;
  wire [8:0] ram_RW_0_r_0_addr;
  wire [63:0] ram_RW_0_w_0_data;
  wire [8:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [63:0] _GEN_3;
  wire [8:0] _GEN_4;
  reg [8:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [8:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = 1'h1;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = 1'h1;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    ram[initvar] = _RAND_0[63:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
(* blackbox *)
module split_bim_data_array_0_ext(
  input  [8:0] RW0_addr,
  input        RW0_clk,
  input        RW0_wdata,
  output       RW0_rdata,
  input        RW0_en,
  input        RW0_wmode,
  input        RW0_wmask
);
  reg  ram [0:511];
  reg [31:0] _RAND_0;
  wire  ram_RW_0_r_0_data;
  wire [8:0] ram_RW_0_r_0_addr;
  wire  ram_RW_0_w_0_data;
  wire [8:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire  _GEN_3;
  wire [8:0] _GEN_4;
  reg [8:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [8:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = RW0_wmask;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = RW0_wmask;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    ram[initvar] = _RAND_0[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
(* blackbox *)
module split_btb_tag_array_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [19:0] RW0_wdata,
  output [19:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  reg [19:0] ram [0:63];
  reg [31:0] _RAND_0;
  wire [19:0] ram_RW_0_r_0_data;
  wire [5:0] ram_RW_0_r_0_addr;
  wire [19:0] ram_RW_0_w_0_data;
  wire [5:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [19:0] _GEN_3;
  wire [5:0] _GEN_4;
  reg [5:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [5:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = 1'h1;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = 1'h1;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    ram[initvar] = _RAND_0[19:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
(* blackbox *)
module split_btb_data_array_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [47:0] RW0_wdata,
  output [47:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  reg [47:0] ram [0:63];
  reg [63:0] _RAND_0;
  wire [47:0] ram_RW_0_r_0_data;
  wire [5:0] ram_RW_0_r_0_addr;
  wire [47:0] ram_RW_0_w_0_data;
  wire [5:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [47:0] _GEN_3;
  wire [5:0] _GEN_4;
  reg [5:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [5:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = 1'h1;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = 1'h1;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    ram[initvar] = _RAND_0[47:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
(* blackbox *)
module split_counter_table_ext(
  input  [10:0] W0_addr,
  input         W0_clk,
  input  [3:0]  W0_data,
  input         W0_en,
  input  [10:0] R0_addr,
  input         R0_clk,
  output [3:0]  R0_data,
  input         R0_en
);
  reg [3:0] ram [0:2047];
  reg [31:0] _RAND_0;
  wire [3:0] ram_R_0_data;
  wire [10:0] ram_R_0_addr;
  wire [3:0] ram_W_0_data;
  wire [10:0] ram_W_0_addr;
  wire  ram_W_0_mask;
  wire  ram_W_0_en;
  wire  _GEN_0;
  wire [10:0] _GEN_1;
  reg [10:0] ram_R_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  ram_R_0_addr_en;
  wire  _GEN_2;
  wire  _GEN_3;
  wire [10:0] _GEN_4;
  wire [3:0] _GEN_5;
  assign ram_R_0_addr = ram_R_0_addr_pipe_0;
  assign ram_R_0_data = ram[ram_R_0_addr];
  assign ram_W_0_data = W0_data;
  assign ram_W_0_addr = W0_addr;
  assign ram_W_0_mask = 1'h1;
  assign ram_W_0_en = W0_en;
  assign R0_data = ram_R_0_data;
  assign _GEN_0 = R0_en;
  assign _GEN_1 = R0_addr;
  assign ram_R_0_addr_en = R0_en;
  assign _GEN_2 = W0_en;
  assign _GEN_3 = 1'h1;
  assign _GEN_4 = W0_addr;
  assign _GEN_5 = W0_data;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2048; initvar = initvar+1)
    ram[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_R_0_addr_pipe_0 = _RAND_1[10:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge W0_clk) begin
    if(ram_W_0_en & ram_W_0_mask) begin
      ram[ram_W_0_addr] <= ram_W_0_data;
    end
  end
  always @(posedge R0_clk) begin
    if (_GEN_0) begin
      ram_R_0_addr_pipe_0 <= R0_addr;
    end
  end
endmodule
(* blackbox *)
module split_l2_tlb_ram_ext(
  input  [8:0]  RW0_addr,
  input         RW0_clk,
  input  [44:0] RW0_wdata,
  output [44:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  reg [44:0] ram [0:511];
  reg [63:0] _RAND_0;
  wire [44:0] ram_RW_0_r_0_data;
  wire [8:0] ram_RW_0_r_0_addr;
  wire [44:0] ram_RW_0_w_0_data;
  wire [8:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [44:0] _GEN_3;
  wire [8:0] _GEN_4;
  reg [8:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [8:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = 1'h1;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = 1'h1;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    ram[initvar] = _RAND_0[44:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
(* blackbox *)
module split_data_arrays_0_ext(
  input  [8:0] RW0_addr,
  input        RW0_clk,
  input  [7:0] RW0_wdata,
  output [7:0] RW0_rdata,
  input        RW0_en,
  input        RW0_wmode,
  input        RW0_wmask
);
  reg [7:0] ram [0:511];
  reg [31:0] _RAND_0;
  wire [7:0] ram_RW_0_r_0_data;
  wire [8:0] ram_RW_0_r_0_addr;
  wire [7:0] ram_RW_0_w_0_data;
  wire [8:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [7:0] _GEN_3;
  wire [8:0] _GEN_4;
  reg [8:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [8:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = RW0_wmask;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = RW0_wmask;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    ram[initvar] = _RAND_0[7:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
(* blackbox *)
module split_data_arrays_0_0_ext(
  input  [8:0]  RW0_addr,
  input         RW0_clk,
  input  [31:0] RW0_wdata,
  output [31:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode,
  input         RW0_wmask
);
  reg [31:0] ram [0:511];
  reg [31:0] _RAND_0;
  wire [31:0] ram_RW_0_r_0_data;
  wire [8:0] ram_RW_0_r_0_addr;
  wire [31:0] ram_RW_0_w_0_data;
  wire [8:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [31:0] _GEN_3;
  wire [8:0] _GEN_4;
  reg [8:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [8:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = RW0_wmask;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = RW0_wmask;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    ram[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
(* blackbox *)
module split_cc_dir_ext(
  input  [9:0]  RW0_addr,
  input         RW0_clk,
  input  [16:0] RW0_wdata,
  output [16:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode,
  input         RW0_wmask
);
  reg [16:0] ram [0:1023];
  reg [31:0] _RAND_0;
  wire [16:0] ram_RW_0_r_0_data;
  wire [9:0] ram_RW_0_r_0_addr;
  wire [16:0] ram_RW_0_w_0_data;
  wire [9:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [16:0] _GEN_3;
  wire [9:0] _GEN_4;
  reg [9:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [9:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = RW0_wmask;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = RW0_wmask;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    ram[initvar] = _RAND_0[16:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[9:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
(* blackbox *)
module split_cc_banks_0_ext(
  input  [13:0] RW0_addr,
  input         RW0_clk,
  input  [63:0] RW0_wdata,
  output [63:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  reg [63:0] ram [0:16383];
  reg [63:0] _RAND_0;
  wire [63:0] ram_RW_0_r_0_data;
  wire [13:0] ram_RW_0_r_0_addr;
  wire [63:0] ram_RW_0_w_0_data;
  wire [13:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [63:0] _GEN_3;
  wire [13:0] _GEN_4;
  reg [13:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [13:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = 1'h1;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = 1'h1;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 16384; initvar = initvar+1)
    ram[initvar] = _RAND_0[63:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[13:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
