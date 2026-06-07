module ring_counter(
	input clk,
	output reg [3:0] q	
);
initial q = 4'b1010;
always@(posedge clk) begin
	q[3] <= q[2];
	q[2] <= q[1];
	q[1] <= q[0];
	q[0] <= q[3];

end
endmodule
