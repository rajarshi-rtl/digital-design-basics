module mealy_0110_tb();

reg clk, rst, din;
wire out;

mealy_0110 dut(.clk(clk),.rst(rst),.din(din),.out(out));

initial {clk,rst,din} = 3'b010;
always #5 clk = ~clk;

initial begin
	$dumpfile("mealy_0110_wav.vcd");
	$dumpvars(0,mealy_0110_tb);
	$monitor("Time=%0t, Input = %b, State = %b, Sequence Detected = %b",$time,din,dut.present_state,out);
	#5 rst = 1'b0;
	#10 din = 1'b1;
        #15 din = 1'b0;
	#10 din = 1'b1;
	#20 din = 1'b0;
	#10 din = 1'b1;
	#40 $finish;	
end

endmodule
