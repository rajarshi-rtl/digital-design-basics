module shift_right_tb();

reg clk,rst;
wire [3:0]q;

right_shift_register dut(.clk(clk),.rst(rst),.q(q));

initial begin
	clk = 1'b0;
	forever #5 clk = ~clk;
end

initial begin
	$dumpfile("shift_right_wav.vcd");
	$dumpvars(0,shift_right_tb);
	$monitor("Time = %0t, Q=%b", $time,q);
	#40 rst = 1'b1;
	#10 $finish;
end

endmodule
