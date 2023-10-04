//Testbench code fot Master Slave Jk Flip Flop
module Master_Slave_JK_tb();

reg Set,Reset,clk,clear;
wire Qm,Qs;

Master_Slave_JK dut(.Set(Set),.Reset(Reset),.clk(clk),.clear(clear),.Qm(Qm),.Qs(Qs));

initial begin
clear=1'b1;
clk=1'b0;
#3 clear=1'b0;
    Set=1'b0;Reset=1'b0;
#5  Set=1'b0;Reset=1'b1;
#5  Set=1'b1;Reset=1'b0;
#5  Set=1'b1;Reset=1'b1;
#25  $finish;
end

always #1 clk=~clk;
endmodule
