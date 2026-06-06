module t_ff_tb();
reg t,clk,rst;
wire q,qbar;

t_ff dut(.t(t),.clk(clk),.rst(rst),.q(q),.qbar(qbar));

initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
end

initial begin
        $dumpfile("t_ff_wav.vcd");
        $dumpvars(0,t_ff_tb);
        rst = 1'b1; t = 1'b1;
        #10 rst = 1'b0;
        #10 t = 1'b0;
	#10 t = 1'b1;
        #10 $finish;
end

endmodule
