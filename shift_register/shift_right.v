module right_shift_register(
	input clk,rst,
	output reg [3:0]q
);
initial q = 4'b1010;
always@(posedge clk or posedge rst) begin
	if (rst) q = 4'b0000;
	else begin
		q[3] <= 1'b0;
		q[2] <= q[3];
		q[1] <= q[2];
		q[0] <= q[1];
		// Alternate method : q = {1'b0,q[3:1};
	end
end
endmodule

