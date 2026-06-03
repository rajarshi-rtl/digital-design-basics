module cla(
	input [3:0]a,b,
	input cin,
	output [3:0]sum,
	output cout
);
wire p0,p1,p2,p3; //declaring the propagating terms
wire g0,g1,g2,g3; //declaring the generating terms
wire c1,c2,c3; //declaring the propagating carry terms

assign p0 = a[0]^b[0]; assign g0 = a[0]&b[0]; 
assign p1 = a[1]^b[1]; assign g1 = a[1]&b[1];
assign p2 = a[2]^b[2]; assign g2 = a[2]&b[2];
assign p3 = a[3]^b[3]; assign g3 = a[3]&b[3];

assign c1 = g0|(p0&cin);
assign c2 = g1|(p1&(g0|(p0&cin)));
assign c3 = g2|(p2&(g1|(p1&(g0|(p0&cin)))));
assign cout = g3|(p3& (g2|(p2&(g1|(p1&(g0|(p0&cin)))))));

//assigning the final sum outputs
assign sum[0] = p0^cin;
assign sum[1] = p1^c1;
assign sum[2] = p2^c2;
assign sum[3] = p3^c3;

endmodule
