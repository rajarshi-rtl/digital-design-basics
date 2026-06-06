module up_counter_tb();
reg clk,rst;
wire [3:0]q;

up_counter dut(.clk(clk),.rst(rst),.q(q));

initial begin
	clk = 1'b0;
	forever #5 clk = ~clk;
end

initial begin
	$monitor("Time = %0t, Q=%b",$time,q);
	rst = 1'b1; #10 rst = 1'b0;
	#200 $finish;	
end
endmodule
