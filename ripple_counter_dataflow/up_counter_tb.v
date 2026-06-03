module up_counter_tb();
reg clk,rst; wire [3:0]q;
up_counter dut(.rst(rst),.clk(clk),.q(q));
initial begin
	clk=0;
	forever #5 clk = ~clk;
end
initial begin
	$dumpfile("up_counter_wav.vcd");
	$dumpvars(0,up_counter_tb);
	rst = 0; #1 rst=1; #10 rst=0;
	$monitor("Time=%0t, Q=%b",$time,q);
	#200 $finish;
end
endmodule
