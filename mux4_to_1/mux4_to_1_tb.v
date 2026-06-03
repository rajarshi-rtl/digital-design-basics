module mux4_to_1_tb();
reg i0,i1,i2,i3; reg [1:0]sel;
wire out;
mux4_to_1 dut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.sel(sel),.out(out));
initial begin
	$dumpfile("mux4_to_1.vcd");
	$dumpvars(0,mux4_to_1_tb);
	$monitor("time=%0t, i0=%b i1=%b i2=%b i3=%b, sel=%b, out=%b",$time,i0,i1,i2,i3,sel,out);
	i0=0; i1=0; i2=1; i3=0;
	sel = 2'b01;
	#5 sel = 2'b10;
	#5 i2 = 0; i0 = 1;
	#5 sel = 2'b00;
	#5 sel = 2'b11;
	#5 $finish;
end
endmodule
