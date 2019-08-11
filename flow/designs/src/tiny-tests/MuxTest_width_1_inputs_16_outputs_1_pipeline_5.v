module MuxTest_width_1_inputs_16_outputs_1_pipeline_5( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input  [3:0] io_selects_0_0, // @[:@6.4]
  input  [3:0] io_selects_0_1, // @[:@6.4]
  input  [2:0] io_operation_0, // @[:@6.4]
  input        io_inputs_0, // @[:@6.4]
  input        io_inputs_1, // @[:@6.4]
  input        io_inputs_2, // @[:@6.4]
  input        io_inputs_3, // @[:@6.4]
  input        io_inputs_4, // @[:@6.4]
  input        io_inputs_5, // @[:@6.4]
  input        io_inputs_6, // @[:@6.4]
  input        io_inputs_7, // @[:@6.4]
  input        io_inputs_8, // @[:@6.4]
  input        io_inputs_9, // @[:@6.4]
  input        io_inputs_10, // @[:@6.4]
  input        io_inputs_11, // @[:@6.4]
  input        io_inputs_12, // @[:@6.4]
  input        io_inputs_13, // @[:@6.4]
  input        io_inputs_14, // @[:@6.4]
  input        io_inputs_15, // @[:@6.4]
  output       io_outputs_0 // @[:@6.4]
);
  wire  _GEN_1; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_2; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_3; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_4; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_5; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_6; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_7; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_8; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_9; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_10; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_11; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_12; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_13; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_14; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_15; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_17; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_18; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_19; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_20; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_21; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_22; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_23; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_24; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_25; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_26; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_27; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_28; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_29; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_30; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _GEN_31; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire [1:0] _T_152; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  wire  _T_153; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@9.4]
  wire [1:0] _T_155; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 33:58:@10.4]
  wire  _T_157; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 34:56:@11.4]
  wire  _T_158; // @[Mux.scala 46:19:@12.4]
  wire  _T_159; // @[Mux.scala 46:16:@13.4]
  wire  _T_160; // @[Mux.scala 46:19:@14.4]
  wire [1:0] _T_161; // @[Mux.scala 46:16:@15.4]
  wire  _T_162; // @[Mux.scala 46:19:@16.4]
  wire [1:0] _T_163; // @[Mux.scala 46:16:@17.4]
  wire  _T_164; // @[Mux.scala 46:19:@18.4]
  reg [1:0] _T_168; // @[Reg.scala 11:16:@20.4]
  reg [31:0] _RAND_0;
  reg [1:0] _T_170; // @[Reg.scala 11:16:@24.4]
  reg [31:0] _RAND_1;
  reg [1:0] _T_172; // @[Reg.scala 11:16:@28.4]
  reg [31:0] _RAND_2;
  reg [1:0] _T_174; // @[Reg.scala 11:16:@32.4]
  reg [31:0] _RAND_3;
  reg [1:0] _T_176; // @[Reg.scala 11:16:@36.4]
  reg [31:0] _RAND_4;
  assign _GEN_1 = 4'h1 == io_selects_0_0 ? io_inputs_1 : io_inputs_0; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_2 = 4'h2 == io_selects_0_0 ? io_inputs_2 : _GEN_1; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_3 = 4'h3 == io_selects_0_0 ? io_inputs_3 : _GEN_2; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_4 = 4'h4 == io_selects_0_0 ? io_inputs_4 : _GEN_3; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_5 = 4'h5 == io_selects_0_0 ? io_inputs_5 : _GEN_4; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_6 = 4'h6 == io_selects_0_0 ? io_inputs_6 : _GEN_5; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_7 = 4'h7 == io_selects_0_0 ? io_inputs_7 : _GEN_6; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_8 = 4'h8 == io_selects_0_0 ? io_inputs_8 : _GEN_7; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_9 = 4'h9 == io_selects_0_0 ? io_inputs_9 : _GEN_8; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_10 = 4'ha == io_selects_0_0 ? io_inputs_10 : _GEN_9; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_11 = 4'hb == io_selects_0_0 ? io_inputs_11 : _GEN_10; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_12 = 4'hc == io_selects_0_0 ? io_inputs_12 : _GEN_11; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_13 = 4'hd == io_selects_0_0 ? io_inputs_13 : _GEN_12; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_14 = 4'he == io_selects_0_0 ? io_inputs_14 : _GEN_13; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_15 = 4'hf == io_selects_0_0 ? io_inputs_15 : _GEN_14; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_17 = 4'h1 == io_selects_0_1 ? io_inputs_1 : io_inputs_0; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_18 = 4'h2 == io_selects_0_1 ? io_inputs_2 : _GEN_17; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_19 = 4'h3 == io_selects_0_1 ? io_inputs_3 : _GEN_18; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_20 = 4'h4 == io_selects_0_1 ? io_inputs_4 : _GEN_19; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_21 = 4'h5 == io_selects_0_1 ? io_inputs_5 : _GEN_20; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_22 = 4'h6 == io_selects_0_1 ? io_inputs_6 : _GEN_21; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_23 = 4'h7 == io_selects_0_1 ? io_inputs_7 : _GEN_22; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_24 = 4'h8 == io_selects_0_1 ? io_inputs_8 : _GEN_23; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_25 = 4'h9 == io_selects_0_1 ? io_inputs_9 : _GEN_24; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_26 = 4'ha == io_selects_0_1 ? io_inputs_10 : _GEN_25; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_27 = 4'hb == io_selects_0_1 ? io_inputs_11 : _GEN_26; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_28 = 4'hc == io_selects_0_1 ? io_inputs_12 : _GEN_27; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_29 = 4'hd == io_selects_0_1 ? io_inputs_13 : _GEN_28; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_30 = 4'he == io_selects_0_1 ? io_inputs_14 : _GEN_29; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _GEN_31 = 4'hf == io_selects_0_1 ? io_inputs_15 : _GEN_30; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _T_152 = _GEN_15 + _GEN_31; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@8.4]
  assign _T_153 = _GEN_15 + _GEN_31; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 32:53:@9.4]
  assign _T_155 = _GEN_15 * _GEN_31; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 33:58:@10.4]
  assign _T_157 = _GEN_15 / _GEN_31; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 34:56:@11.4]
  assign _T_158 = 3'h3 == io_operation_0; // @[Mux.scala 46:19:@12.4]
  assign _T_159 = _T_158 ? _T_157 : 1'h0; // @[Mux.scala 46:16:@13.4]
  assign _T_160 = 3'h2 == io_operation_0; // @[Mux.scala 46:19:@14.4]
  assign _T_161 = _T_160 ? _T_155 : {{1'd0}, _T_159}; // @[Mux.scala 46:16:@15.4]
  assign _T_162 = 3'h1 == io_operation_0; // @[Mux.scala 46:19:@16.4]
  assign _T_163 = _T_162 ? {{1'd0}, _T_153} : _T_161; // @[Mux.scala 46:16:@17.4]
  assign _T_164 = 3'h0 == io_operation_0; // @[Mux.scala 46:19:@18.4]
  assign io_outputs_0 = _T_176[0]; // @[MuxTest_width_1_inputs_16_outputs_1_pipeline_5s.scala 23:14:@40.4]
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
  _T_168 = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_170 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_172 = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_174 = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_176 = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_164) begin
      _T_168 <= {{1'd0}, _GEN_15};
    end else begin
      _T_168 <= _T_163;
    end
    _T_170 <= _T_168;
    _T_172 <= _T_170;
    _T_174 <= _T_172;
    _T_176 <= _T_174;
  end
endmodule
