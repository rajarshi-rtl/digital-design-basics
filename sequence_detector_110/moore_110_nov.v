module moore_110_nov(
	input clk, rst, din,
	output reg out
);

parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;
parameter s3 = 2'b11;

reg [1:0] present_state;

always @ (posedge clk or posedge rst) begin
	if (rst) begin
		present_state <= s0;
		out <= 1'b0;
	end
	else begin
		case (present_state)
			s0: begin
				out = 1'b0;
				present_state = din ? s1 : s0;
			end

			s1: begin
				out = 1'b0;
				present_state = din ? s2 : s0;
			end

			s2: begin
				out = 1'b0;
				present_state = din ? s2 : s3;
			end

			s3: begin
				out = 1'b1;
				present_state = din ? s1 : s0;
			end
		endcase
	end
end

endmodule
