`timescale 1ns/1ps

module universal_shift_register_tb();

reg clk, rst, serial_in_right, serial_in_left;
reg [0:3] parallel_in;
reg [1:0] mode;
wire [0:3] parallel_out;
wire serial_out_right, serial_out_left;

universal_shift_register dut (.clk(clk), .rst(rst), .serial_in_right(serial_in_right), .serial_in_left(serial_in_left),
	.parallel_in(parallel_in), .mode(mode), .q(parallel_out),
	.serial_out_right(serial_out_right), .serial_out_left(serial_out_left));

initial {clk, rst, serial_in_right, serial_in_left} = 4'b0000;

always #5 clk = ~clk;

initial begin
	$dumpfile("wav_universal_shift_register.vcd");
	$dumpvars(0,universal_shift_register_tb);
	#5 rst = 1'b1;
	mode = 2'b11; parallel_in = 4'b1101;
	#15 mode = 2'b01;
	#10 mode = 2'b10;
	#10 mode = 2'b11; parallel_in = 4'b0011;
	#20 $finish;
end

endmodule
