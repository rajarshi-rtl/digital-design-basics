module d_ff(
	input d, clk, rst,
	output reg q, qbar
);
always@(posedge clk or posedge rst) begin
	if (rst) q = 1'b0;
	else q = d;
	qbar = ~q;
end
endmodule
