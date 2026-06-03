module dff(
	input d,clk,rst,
	output reg q
);
always@(negedge clk or posedge rst) begin
	if (rst==1) q=0;
	else q=d;
end
endmodule
