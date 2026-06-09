module moore_110_nov_tb();

reg clk,rst,din;
wire out;

moore_110_nov dut (.clk(clk),.din(din),.rst(rst),.out(out));

initial {clk,rst,din} = 3'b110;
always #5 clk = ~clk;

initial begin
	$dumpfile("moore_110_nov_wav.vcd");
	$dumpvars(0,moore_110_nov_tb);
	$monitor("Time=%0t, Input = %b, Present State = %b, Output (Sequence Detected) = %b",$time,din,dut.present_state,out);
	#5 rst = 1'b0;
	#5 din = 1'b1;
	#30 din = 1'b0;
	#10 din = 1'b1;
	#20 din = 1'b0;
	#20 $finish;
end

endmodule
