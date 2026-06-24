module universal_shift_register(
	input [1:0] mode,
	input [0:3] parallel_in,
	input serial_in_right, serial_in_left,
	input rst,clk,
	output reg [0:3] q,
	output reg serial_out_right, serial_out_left
);

always @ (*) begin
	serial_out_right = q[3];
	serial_out_left = q[0];
end

always @ (posedge clk or negedge rst) begin
	if (!rst)
		q <= 4'b0000;

	else begin
		case(mode)
			2'b00: q <= q; // No change
			2'b01: q <= {serial_in_right,q[0:2]}; // Shift Right
			2'b10: q <= {q[1:3],serial_in_left}; // Shift Left
			2'b11: q <= parallel_in;
		endcase
	end
end

endmodule
