module jk_ff(
	input j,k,clk,rst,
	output reg q,qbar
);
always@(posedge clk or posedge rst) begin
	if (rst) q = 1'b0;
	else begin
		if (~j && ~k) q = q;
		else if (~j && k) q = 1'b0;
		else if (j && ~k) q = 1'b1;
		else q = ~q;
	end
	qbar = ~q;
end
endmodule

