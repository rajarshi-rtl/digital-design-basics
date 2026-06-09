module mealy_110_nov_tb();

reg clk,rst,din;
wire out;

mealy_110_nov dut(.clk(clk),.rst(rst),.din(din),.detect(out));

initial begin
	{clk,rst,din} = 3'b000;
end

always #5 clk = ~clk;

initial begin
	$dumpfile("mealy_110_nov_wav.vcd");
	$dumpvars(0,mealy_110_nov_tb);
	$monitor("Time=%0t, Input Sequence = %b, Present State = %b, Output (Sequence Detected) = %b",$time,din,dut.ps,out);
	rst = 1'b1; 
	#10 rst = 1'b0; din = 1'b1;
	#40 din = 1'b0;
	#20 $finish;
end

endmodule
