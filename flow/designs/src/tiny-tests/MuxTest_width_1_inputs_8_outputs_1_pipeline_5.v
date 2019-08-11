module MuxTest_width_1_inputs_8_outputs_1_pipeline_5( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input  [2:0] io_selects_0_0, // @[:@6.4]
  input  [2:0] io_selects_0_1, // @[:@6.4]
  input  [2:0] io_operation_0, // @[:@6.4]
  input        io_inputs_0, // @[:@6.4]
  input        io_inputs_1, // @[:@6.4]
  input        io_inputs_2, // @[:@6.4]
  input        io_inputs_3, // @[:@6.4]
  input        io_inputs_4, // @[:@6.4]
  input        io_inputs_5, // @[:@6.4]
  input        io_inputs_6, // @[:@6.4]
  input        io_inputs_7, // @[:@6.4]
  output       io_outputs_0 // @[:@6.4]
);
  wire  _GEN_1; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_2; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_3; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_4; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_5; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_6; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_7; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_9; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_10; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_11; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_12; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_13; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_14; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_15; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire [1:0] _T_136; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _T_137; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@9.4]
  wire [1:0] _T_139; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 33:58:@10.4]
  wire  _T_141; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 34:56:@11.4]
  wire  _T_142; // @[Mux.scala 46:19:@12.4]
  wire  _T_143; // @[Mux.scala 46:16:@13.4]
  wire  _T_144; // @[Mux.scala 46:19:@14.4]
  wire [1:0] _T_145; // @[Mux.scala 46:16:@15.4]
  wire  _T_146; // @[Mux.scala 46:19:@16.4]
  wire [1:0] _T_147; // @[Mux.scala 46:16:@17.4]
  wire  _T_148; // @[Mux.scala 46:19:@18.4]
  reg [1:0] _T_152; // @[Reg.scala 11:16:@20.4]
  reg [31:0] _RAND_0;
  reg [1:0] _T_154; // @[Reg.scala 11:16:@24.4]
  reg [31:0] _RAND_1;
  reg [1:0] _T_156; // @[Reg.scala 11:16:@28.4]
  reg [31:0] _RAND_2;
  reg [1:0] _T_158; // @[Reg.scala 11:16:@32.4]
  reg [31:0] _RAND_3;
  reg [1:0] _T_160; // @[Reg.scala 11:16:@36.4]
  reg [31:0] _RAND_4;
  assign _GEN_1 = 3'h1 == io_selects_0_0 ? io_inputs_1 : io_inputs_0; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_2 = 3'h2 == io_selects_0_0 ? io_inputs_2 : _GEN_1; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_3 = 3'h3 == io_selects_0_0 ? io_inputs_3 : _GEN_2; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_4 = 3'h4 == io_selects_0_0 ? io_inputs_4 : _GEN_3; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_5 = 3'h5 == io_selects_0_0 ? io_inputs_5 : _GEN_4; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_6 = 3'h6 == io_selects_0_0 ? io_inputs_6 : _GEN_5; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_7 = 3'h7 == io_selects_0_0 ? io_inputs_7 : _GEN_6; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_9 = 3'h1 == io_selects_0_1 ? io_inputs_1 : io_inputs_0; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_10 = 3'h2 == io_selects_0_1 ? io_inputs_2 : _GEN_9; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_11 = 3'h3 == io_selects_0_1 ? io_inputs_3 : _GEN_10; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_12 = 3'h4 == io_selects_0_1 ? io_inputs_4 : _GEN_11; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_13 = 3'h5 == io_selects_0_1 ? io_inputs_5 : _GEN_12; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_14 = 3'h6 == io_selects_0_1 ? io_inputs_6 : _GEN_13; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_15 = 3'h7 == io_selects_0_1 ? io_inputs_7 : _GEN_14; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _T_136 = _GEN_7 + _GEN_15; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _T_137 = _GEN_7 + _GEN_15; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 32:53:@9.4]
  assign _T_139 = _GEN_7 * _GEN_15; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 33:58:@10.4]
  assign _T_141 = _GEN_7 / _GEN_15; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 34:56:@11.4]
  assign _T_142 = 3'h3 == io_operation_0; // @[Mux.scala 46:19:@12.4]
  assign _T_143 = _T_142 ? _T_141 : 1'h0; // @[Mux.scala 46:16:@13.4]
  assign _T_144 = 3'h2 == io_operation_0; // @[Mux.scala 46:19:@14.4]
  assign _T_145 = _T_144 ? _T_139 : {{1'd0}, _T_143}; // @[Mux.scala 46:16:@15.4]
  assign _T_146 = 3'h1 == io_operation_0; // @[Mux.scala 46:19:@16.4]
  assign _T_147 = _T_146 ? {{1'd0}, _T_137} : _T_145; // @[Mux.scala 46:16:@17.4]
  assign _T_148 = 3'h0 == io_operation_0; // @[Mux.scala 46:19:@18.4]
  assign io_outputs_0 = _T_160[0]; // @[MuxTest_width_1_inputs_8_outputs_1_pipeline_5s.scala 23:14:@40.4]
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_152 = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_154 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_156 = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_158 = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_160 = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_148) begin
      _T_152 <= {{1'd0}, _GEN_7};
    end else begin
      _T_152 <= _T_147;
    end
    _T_154 <= _T_152;
    _T_156 <= _T_154;
    _T_158 <= _T_156;
    _T_160 <= _T_158;
  end
endmodule
