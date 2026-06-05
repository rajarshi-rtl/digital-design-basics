module d_latch_tb();
reg d,clk,rst;
wire q,qbar;

d_latch dut(.d(d),.clk(clk),.rst(rst),.q(q),.qbar(qbar));

initial begin
	clk = 1'b0;
	forever #5 clk = ~clk;
end

initial begin
	$dumpfile("d_latch_wav.vcd");
	$dumpvars(0,d_latch_tb);
	$monitor("Time=%0t, D=%b Reset=%b Q=%b Qbar=%b",$time,d,rst,q,qbar);
end

initial begin
	rst = 1'b1; d = 1'b1;
	#10 rst = 1'b0;
	#8 d = 1'b0;
	#2 d = 1'b1;
	#2 d = 1'b0;
	#5 d = 1'b1;
	#10 rst = 1'b1;
	#10 $finish;
end
endmodule
