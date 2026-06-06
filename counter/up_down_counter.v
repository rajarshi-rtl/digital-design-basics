module up_down_counter(
	input up_count,clk,
	output reg [3:0]q
);
initial q = 4'b0000;
always@(posedge clk) begin
	if (up_count) q = q+1;
	else q = q-1;
end	
endmodule

