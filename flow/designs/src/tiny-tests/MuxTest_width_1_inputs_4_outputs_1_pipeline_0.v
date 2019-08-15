module MuxTest_width_1_inputs_4_outputs_1_pipeline_0( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input  [1:0] io_selects_0_0, // @[:@6.4]
  input  [1:0] io_selects_0_1, // @[:@6.4]
  input  [2:0] io_operation_0, // @[:@6.4]
  input        io_inputs_0, // @[:@6.4]
  input        io_inputs_1, // @[:@6.4]
  input        io_inputs_2, // @[:@6.4]
  input        io_inputs_3, // @[:@6.4]
  output       io_outputs_0 // @[:@6.4]
);
  wire  _GEN_1; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@8.4]
  wire  _GEN_2; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@8.4]
  wire  _GEN_3; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@8.4]
  wire  _GEN_5; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@8.4]
  wire  _GEN_6; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@8.4]
  wire  _GEN_7; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@8.4]
  wire [1:0] _T_128; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@8.4]
  wire  _T_129; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@9.4]
  wire [1:0] _T_131; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 33:58:@10.4]
  wire  _T_133; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 34:56:@11.4]
  wire  _T_134; // @[Mux.scala 46:19:@12.4]
  wire  _T_135; // @[Mux.scala 46:16:@13.4]
  wire  _T_136; // @[Mux.scala 46:19:@14.4]
  wire [1:0] _T_137; // @[Mux.scala 46:16:@15.4]
  wire  _T_138; // @[Mux.scala 46:19:@16.4]
  wire [1:0] _T_139; // @[Mux.scala 46:16:@17.4]
  wire  _T_140; // @[Mux.scala 46:19:@18.4]
  wire [1:0] _T_141; // @[Mux.scala 46:16:@19.4]
  assign _GEN_1 = 2'h1 == io_selects_0_0 ? io_inputs_1 : io_inputs_0; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@8.4]
  assign _GEN_2 = 2'h2 == io_selects_0_0 ? io_inputs_2 : _GEN_1; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@8.4]
  assign _GEN_3 = 2'h3 == io_selects_0_0 ? io_inputs_3 : _GEN_2; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@8.4]
  assign _GEN_5 = 2'h1 == io_selects_0_1 ? io_inputs_1 : io_inputs_0; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@8.4]
  assign _GEN_6 = 2'h2 == io_selects_0_1 ? io_inputs_2 : _GEN_5; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@8.4]
  assign _GEN_7 = 2'h3 == io_selects_0_1 ? io_inputs_3 : _GEN_6; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@8.4]
  assign _T_128 = _GEN_3 + _GEN_7; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@8.4]
  assign _T_129 = _GEN_3 + _GEN_7; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 32:53:@9.4]
  assign _T_131 = _GEN_3 * _GEN_7; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 33:58:@10.4]
  assign _T_133 = _GEN_3 / _GEN_7; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 34:56:@11.4]
  assign _T_134 = 3'h3 == io_operation_0; // @[Mux.scala 46:19:@12.4]
  assign _T_135 = _T_134 ? _T_133 : 1'h0; // @[Mux.scala 46:16:@13.4]
  assign _T_136 = 3'h2 == io_operation_0; // @[Mux.scala 46:19:@14.4]
  assign _T_137 = _T_136 ? _T_131 : {{1'd0}, _T_135}; // @[Mux.scala 46:16:@15.4]
  assign _T_138 = 3'h1 == io_operation_0; // @[Mux.scala 46:19:@16.4]
  assign _T_139 = _T_138 ? {{1'd0}, _T_129} : _T_137; // @[Mux.scala 46:16:@17.4]
  assign _T_140 = 3'h0 == io_operation_0; // @[Mux.scala 46:19:@18.4]
  assign _T_141 = _T_140 ? {{1'd0}, _GEN_3} : _T_139; // @[Mux.scala 46:16:@19.4]
  assign io_outputs_0 = _T_141[0]; // @[MuxTest_width_1_inputs_4_outputs_1_pipeline_0s.scala 23:14:@20.4]
endmodule