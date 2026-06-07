module johnson_counter_tb();

reg clk,rst;
wire [3:0] q;

johnson_counter dut(.clk(clk),.rst(rst),.q(q));

initial begin
	clk = 1'b1;
	forever #5 clk = ~clk;
end

initial begin
	$dumpfile("johnson_counter_wav.vcd");
	$dumpvars(0,johnson_counter_tb);
	rst = 1'b1;
	#10 rst = 1'b0;
	#100 $finish;
end

endmodule
