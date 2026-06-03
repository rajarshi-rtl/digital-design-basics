module cla_tb();

reg [3:0]a,b; reg cin;
wire [3:0]sum; wire cout;

cla dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin
	$dumpfile("cla_wav.vcd");
	$dumpvars(0,cla_tb);
	$monitor("Time = %0t, A=%b B=%b Cin=%b, Sum=%b Cout=%b",$time,a,b,cin,sum,cout);
	a=4'd0; b=4'd0; cin=1'b0;
	#10 a=4'd2; b=4'd6;
	#10 a=4'd7; b=4'd5; cin=1'b1;
	#10 a=4'd7; b=4'd9; cin=1'b1;
	#10 a=4'd1; b=4'd9; cin=1'b0;
	#10 a=4'd7; b=4'd0; cin=1'b0;
	#10 $finish;
end
endmodule
