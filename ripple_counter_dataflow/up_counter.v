module up_counter(
	input clk,rst,
	output [3:0]q
);
toggle_dff tff0(clk,rst,q[0]);
toggle_dff tff1(q[0],rst,q[1]);
toggle_dff tff2(q[1],rst,q[2]);
toggle_dff tff3(q[2],rst,q[3]);
endmodule
