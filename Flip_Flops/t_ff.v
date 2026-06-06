module t_ff(
	input t,clk,rst,
	output reg q,qbar
);
	always@(posedge clk or posedge rst) begin
		if (rst) q = 1'b0;
		else q = t^q;
		qbar = ~q;
	end
endmodule

