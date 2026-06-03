module toggle_dff(
	input clk,rst,
	output q
);
dff dff0(.d(~q),.clk(clk),.rst(rst),.q(q));
endmodule
