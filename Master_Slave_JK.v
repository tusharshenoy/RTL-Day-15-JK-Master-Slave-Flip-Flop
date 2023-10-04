//Verilog code for Master Slave JK Flip Flop 
module Master_Slave_JK(Set,Reset,clk,clear,Qm,Qmb,Qs,Qsb);

input Set,Reset,clk,clear;
output Qm,Qmb,Qs,Qsb;

JK_Flip_Flop JK1(.J(Set),.K(Reset),.clk(clk),.reset(clear),.Q(Qm),.Qb(Qmb));

wire nclk;
not(nclk,clk);

JK_Flip_Flop JK2(.J(Qm),.K(Qmb),.clk(nclk),.reset(clear),.Q(Qs),.Qb(Qsb));
endmodule
