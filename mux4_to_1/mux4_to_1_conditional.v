module mux4_to_1_conditional(
	input i0,i1,i2,i3,s1,s0,
	output out
);
assign out = s1 ? (s0 ? (i3) : (i2)) : (s0 ? (i1) : (i0));
endmodule
