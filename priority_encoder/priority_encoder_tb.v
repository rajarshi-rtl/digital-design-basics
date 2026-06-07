module priority_encoder_tb();
reg [7:0]in;
wire [2:0]out;
priority_encoder dut(.in(in),.out(out));
initial begin
	$dumpfile("priority_encoder_wav.vcd");
	$dumpvars(0,priority_encoder_tb);
	in = 8'b00010100;
	#10 in = 8'b100z000x;
	#10 in = 8'b001xxxz1;
	#10 in = 8'b000001x1;
	#10 $finish;
end
endmodule
