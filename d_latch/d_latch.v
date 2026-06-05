module d_latch(
	input d,clk,rst,
	output reg q,qbar
);
	always@(*) qbar <= ~q;

	always@(clk or rst or d) begin
		if (rst==1'b1) q = 1'b0;
		else if (clk==1'b1) q = d;
	end
endmodule
