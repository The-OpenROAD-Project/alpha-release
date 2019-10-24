module hard_mem_1rw_d512_w64_wrapper(clk_i, v_i, reset_i, data_i,
     addr_i, w_i, data_o);
  input clk_i, v_i, reset_i, w_i;
  input [63:0] data_i;
  input [8:0] addr_i;
  output [63:0] data_o;
  wire clk_i, v_i, reset_i, w_i;
  wire [63:0] data_i;
  wire [8:0] addr_i;
  wire [63:0] data_o;
  wire n_145, n_146;
  tsmc65lp_1rf_lg9_w64_all mem(.CLK (clk_i), .Q (data_o), .CEN (n_145),
       .WEN (n_146), .A (addr_i), .D (data_i), .EMA (3'b011), .EMAW
       (2'b01), .RET1N (1'b1));
  assign n_145 = ~(v_i);
  assign n_146 = ~(w_i);
endmodule

module hard_mem_1rw_bit_mask_d64_w96_wrapper(clk_i, reset_i, data_i,
     addr_i, v_i, w_mask_i, w_i, data_o);
  input clk_i, reset_i, v_i, w_i;
  input [95:0] data_i, w_mask_i;
  input [5:0] addr_i;
  output [95:0] data_o;
  wire clk_i, reset_i, v_i, w_i;
  wire [95:0] data_i, w_mask_i;
  wire [5:0] addr_i;
  wire [95:0] data_o;
  wire n_302, n_303;
  tsmc65lp_1rf_lg6_w96_bit mem(.CLK (clk_i), .Q (data_o), .CEN (n_302),
       .WEN (w_mask_i), .GWEN (n_303), .A (addr_i), .D (data_i), .EMA
       (3'b011), .EMAW (2'b01), .RET1N (1'b1));
  assign n_302 = ~(v_i);
  assign n_303 = ~(w_i);
endmodule


module hard_mem_1rw_byte_mask_d512_w64_wrapper(clk_i, reset_i, data_i,
     addr_i, v_i, write_mask_i, w_i, data_o);
  input clk_i, reset_i, v_i, w_i;
  input [63:0] data_i;
  input [8:0] addr_i;
  input [7:0] write_mask_i;
  output [63:0] data_o;
  wire clk_i, reset_i, v_i, w_i;
  wire [63:0] data_i;
  wire [8:0] addr_i;
  wire [7:0] write_mask_i;
  wire [63:0] data_o;
  wire [63:0] wen;
  wire n_145, n_146;
  tsmc65lp_1rf_lg9_w64_bit mem(.CLK (clk_i), .Q (data_o), .CEN (n_145),
       .WEN (wen), .GWEN (n_146), .A (addr_i), .D (data_i), .EMA
       (3'b011), .EMAW (2'b01), .RET1N (1'b1));
  not_op g1(.A ({write_mask_i[7], write_mask_i[7], write_mask_i[7],
       write_mask_i[7], write_mask_i[7], write_mask_i[7],
       write_mask_i[7], write_mask_i[7:6], write_mask_i[6],
       write_mask_i[6], write_mask_i[6], write_mask_i[6],
       write_mask_i[6], write_mask_i[6], write_mask_i[6:5],
       write_mask_i[5], write_mask_i[5], write_mask_i[5],
       write_mask_i[5], write_mask_i[5], write_mask_i[5],
       write_mask_i[5:4], write_mask_i[4], write_mask_i[4],
       write_mask_i[4], write_mask_i[4], write_mask_i[4],
       write_mask_i[4], write_mask_i[4:3], write_mask_i[3],
       write_mask_i[3], write_mask_i[3], write_mask_i[3],
       write_mask_i[3], write_mask_i[3], write_mask_i[3:2],
       write_mask_i[2], write_mask_i[2], write_mask_i[2],
       write_mask_i[2], write_mask_i[2], write_mask_i[2],
       write_mask_i[2:1], write_mask_i[1], write_mask_i[1],
       write_mask_i[1], write_mask_i[1], write_mask_i[1],
       write_mask_i[1], write_mask_i[1:0], write_mask_i[0],
       write_mask_i[0], write_mask_i[0], write_mask_i[0],
       write_mask_i[0], write_mask_i[0], write_mask_i[0]}), .Z (wen));
  assign n_145 = ~(v_i);
  assign n_146 = ~(w_i);
endmodule

module hard_mem_1rw_bit_mask_d64_w7_wrapper(clk_i, reset_i, data_i,
     addr_i, v_i, w_mask_i, w_i, data_o);
  input clk_i, reset_i, v_i, w_i;
  input [6:0] data_i, w_mask_i;
  input [5:0] addr_i;
  output [6:0] data_o;
  wire clk_i, reset_i, v_i, w_i;
  wire [6:0] data_i, w_mask_i;
  wire [5:0] addr_i;
  wire [6:0] data_o;
  wire [7:0] Q;
  wire [7:0] WEN;
  wire [7:0] D;
  wire n_16, n_17;
  assign D[7] = 1'b0;
  assign WEN[7] = 1'b0;
  tsmc65lp_1rf_lg6_w8_bit mem(.CLK (clk_i), .Q ({Q[7], data_o}), .CEN
       (n_16), .WEN ({WEN[7], w_mask_i}), .GWEN (n_17), .A (addr_i), .D
       ({D[7], data_i}), .EMA (3'b011), .EMAW (2'b01), .RET1N (1'b1));
  assign n_16 = ~(v_i);
  assign n_17 = ~(w_i);
endmodule

module hard_mem_1rw_bit_mask_d64_w15_wrapper(clk_i, reset_i, data_i,
     addr_i, v_i, w_mask_i, w_i, data_o);
  input clk_i, reset_i, v_i, w_i;
  input [14:0] data_i, w_mask_i;
  input [5:0] addr_i;
  output [14:0] data_o;
  wire clk_i, reset_i, v_i, w_i;
  wire [14:0] data_i, w_mask_i;
  wire [5:0] addr_i;
  wire [14:0] data_o;
  wire [15:0] Q;
  wire [15:0] WEN;
  wire [15:0] D;
  wire n_16, n_17;
  assign D[15] = 1'b0;
  assign WEN[15] = 1'b0;
  tsmc65lp_1rf_lg6_w16_bit mem(.CLK (clk_i), .Q ({Q[15], data_o}), .CEN
       (n_16), .WEN ({WEN[15], w_mask_i}), .GWEN (n_17), .A (addr_i),
       .D ({D[15], data_i}), .EMA (3'b011), .EMAW (2'b01), .RET1N
       (1'b1));
  assign n_16 = ~(v_i);
  assign n_17 = ~(w_i);
endmodule


module hard_mem_1rw_d256_w95_wrapper(clk_i, v_i, reset_i, data_i,
     addr_i, w_i, data_o);
  input clk_i, v_i, reset_i, w_i;
  input [94:0] data_i;
  input [7:0] addr_i;
  output [94:0] data_o;
  wire clk_i, v_i, reset_i, w_i;
  wire [94:0] data_i;
  wire [7:0] addr_i;
  wire [94:0] data_o;
  wire [95:0] Q;
  wire [95:0] D;
  wire n_17, n_18;
  assign D[95] = 1'b0;
  tsmc65lp_1rf_lg8_w96_all mem(.CLK (clk_i), .Q ({Q[95], data_o}), .CEN
       (n_17), .WEN (n_18), .A (addr_i), .D ({D[95], data_i}), .EMA
       (3'b011), .EMAW (2'b01), .RET1N (1'b1));
  assign n_17 = ~(v_i);
  assign n_18 = ~(w_i);
endmodule