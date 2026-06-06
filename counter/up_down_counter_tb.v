module up_down_counter_tb();

reg clk,up_count;
wire [3:0]q;

up_down_counter dut(.clk(clk),.up_count(up_count),.q(q));

initial begin
	clk = 1'b0;
	forever #5 clk = ~clk;
end

initial begin
	$dumpfile("up_down_counter_wav.vcd");
	$dumpvars(0,up_down_counter_tb);
	$monitor("Time=%0t, Up Count = %b, Q=%d",$time,up_count,q);
	up_count = 1'b1;
	#200 up_count = 1'b0;
	#200 $finish;
end

endmodule
