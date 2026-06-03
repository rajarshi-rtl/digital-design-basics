module cla_tb();

reg [3:0]a,b; reg cin;
wire [3:0]sum; wire cout;

cla dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin
	$dumpfile("cla_wav.vcd");
	$dumpvars(0,cla_tb);
	$monitor("Time = %0t, A=%d B=%d Cin=%d, Sum=%d Cout=%d",$time,a,b,cin,sum,cout);
	a=4'b0000; b=4'b0000; cin=1'b0;
	#10 a=4'b0010; b=4'b0101;
	#10 a=4'b1000; b=4'b0011; cin=1'b1;
	#10 a=4'b1111; b=4'b0010; cin=1'b1;
	#10 $finish;
end
endmodule
