module mealy_110_nov(
	input clk, din, rst,
	output reg detect
);

parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;

reg [1:0] ps;


always@(posedge clk or posedge rst) begin
	if(rst) begin
		ps <= s0;
		detect <= 1'b0;
	end
	else begin
		case(ps) 
			s0: begin
				if(din) begin
					ps <= s1;
					detect <= 1'b0;
				end
				else begin
					ps <= s0;
					detect <= 1'b0;
				end
			end

			s1: begin
				if(din) begin
					ps <= s2;
					detect <= 1'b0;
				end
				else begin
					ps <= s0;
					detect <= 1'b0;
				end
			end

			s2: begin
				if(din) begin
					ps <= s1;
					detect <= 1'b0;
				end	
				else begin
					ps <= s0;
					detect <= 1'b1;
				end
			end
		endcase
	end
end

endmodule
