module mealy_0110(
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
				if (din) begin
					present_state <= s0;
					out <= 1'b0;
				end
				else begin
					present_state <= s1;
					out <= 1'b0;
				end
			end

			s1: begin
				if (din) begin
					present_state <= s2;
					out <= 1'b0;
				end
				else begin
					present_state <= s1;
					out <= 1'b0;
				end
			end	

			s2: begin
				if (din) begin
					present_state <= s3;
					out <= 1'b0;
				end
				else begin
					present_state <= s1;
					out <= 1'b0;
				end
			end

			s3: begin
				if (din) begin
					present_state <= s0;
					out <= 1'b0;
				end
				else begin
					present_state <= s1;
					out <= 1'b1;
				end
			end
		endcase
	end
end

endmodule
