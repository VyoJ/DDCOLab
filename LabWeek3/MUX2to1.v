module mux2(input wire i0, i1, j, output wire o);
assign o = ((~j & i0) | (j & i1));
endmodule