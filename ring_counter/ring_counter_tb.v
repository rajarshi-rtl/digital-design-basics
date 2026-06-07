module ring_counter_tb();

reg clk;
wire [3:0] q;

ring_counter dut(.clk(clk),.q(q));

initial begin
	clk = 1'b0;
	forever #5 clk = ~clk;
end

initial begin
	$dumpfile("ring_counter_wav.vcd");
	$dumpvars(0,ring_counter_tb);
	$monitor("Time=%0t Q=%b",$time,q);
	#30 $finish;
end

endmodule
