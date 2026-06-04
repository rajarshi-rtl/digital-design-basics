module comparator(
	input [3:0]a,b,
	output greater,lesser,equal
);
wire [3:0] temp_sum;
adder adder1(a,~b,1'b0,temp_sum,greater);
assign equal = &temp_sum; //reduction and operator
assign lesser = ~(equal|greater);
endmodule
