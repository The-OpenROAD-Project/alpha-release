module PDDW0204CDG (I,DS,OEN,PAD,C,PE,IE);
  input I,DS,OEN,PE,IE;
  inout PAD;
  output C;

  (* keep *) wire PAD_int;


  assign PAD_int  = OEN ? 1'b0 : I;
  assign C = IE ? PAD : 1'b0;

  assign PAD = PAD_int;

endmodule

