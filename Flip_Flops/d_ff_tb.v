module d_ff_tb();
reg d,clk,rst; 
wire q,qbar;

d_ff dut(.d(d),.clk(clk),.rst(rst),.q(q),.qbar(qbar));

initial begin
	clk = 1'b0;
	forever #5 clk = ~clk;
end

initial begin
	$dumpfile("d_ff_wav.vcd");
	$dumpvars(0,d_ff_tb);
	rst = 1'b1; d = 1'b1;
	#10 rst = 1'b0;
	#10 d = 1'b0;
	#10 $finish;	
end

endmodule
