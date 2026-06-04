module comparator_tb();
reg [3:0]a,b;
wire greater,lesser,equal;
comparator dut(.a(a),.b(b),.greater(greater),.lesser(lesser),.equal(equal));
initial begin
	$dumpfile("comparator_wav.vcd");
	$dumpvars(0,comparator_tb);
	$monitor("Time=%0t, A=%b B=%b, Greater=%b Lesser=%b Equal=%b",$time,a,b,greater,lesser,equal);
	a = 4'b0000; b = 4'b0001;
	#10 a = 4'b1100;
	#10 b = 4'b1100;
	#10 a = 4'b0110; b = 4'b1001;
	#10 a = 4'b1111;
	#10 $finish;
end
endmodule
