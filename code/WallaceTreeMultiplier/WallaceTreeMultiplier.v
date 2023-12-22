
module RegisteredWallaceTree(
input  wire [31:0] X,Y,
output reg [63:0] Z,
input  wire CLK,RESET
);
reg [31:0]temp1,temp2;
wire [63:0] tempres;





always@(posedge CLK,negedge RESET)
begin
	if(RESET == 1'b0)
	begin
		temp1 = 32'b0;
		temp2 = 32'b0;
	end
	else
	begin
		
	temp1 = X;
	temp2 = Y;
	if(X[31]==1'b1)
	begin 
		temp1=temp1-1;
		temp1=~temp1;
	end
	if(Y[31]==1'b1)
	begin 
		temp2=temp2-1;
		temp2=~temp2;
	end
	end
end

WallaceTree MULLL(temp1,temp2,tempres);

always @(posedge CLK or negedge RESET)
begin
    if (RESET == 1'b0)
        Z = 64'b0;
    else
    begin
        Z = tempres;

        if (X[31] != Y[31])
        begin
            Z = ~Z + 1;
        end
    end
end

endmodule 


module WallaceTree(
input [31:0] a,		
input [31:0] b,
output [63:0] res
);


wire  [63:0]temppp [31:0];


PartialMULLLiplication partialMULLLiplications1(temppp[0][63:0],a[31:0],b[31:0],0);
PartialMULLLiplication partialMULLLiplications2(temppp[1][63:0],a[31:0],b[31:0],1);
PartialMULLLiplication partialMULLLiplications3(temppp[2][63:0],a[31:0],b[31:0],2);
PartialMULLLiplication partialMULLLiplications4(temppp[3][63:0],a[31:0],b[31:0],3);
PartialMULLLiplication partialMULLLiplications5(temppp[4][63:0],a[31:0],b[31:0],4);
PartialMULLLiplication partialMULLLiplications6(temppp[5][63:0],a[31:0],b[31:0],5);
PartialMULLLiplication partialMULLLiplications7(temppp[6][63:0],a[31:0],b[31:0],6);
PartialMULLLiplication partialMULLLiplications8(temppp[7][63:0],a[31:0],b[31:0],7);
PartialMULLLiplication partialMULLLiplications9(temppp[8][63:0],a[31:0],b[31:0],8);
PartialMULLLiplication partialMULLLiplications10(temppp[9][63:0],a[31:0],b[31:0],9);
PartialMULLLiplication partialMULLLiplications11(temppp[10][63:0],a[31:0],b[31:0],10);
PartialMULLLiplication partialMULLLiplications111(temppp[11][63:0],a[31:0],b[31:0],11);
PartialMULLLiplication partialMULLLiplications1111(temppp[12][63:0],a[31:0],b[31:0],12);
PartialMULLLiplication partialMULLLiplications11111(temppp[13][63:0],a[31:0],b[31:0],13);
PartialMULLLiplication partialMULLLiplications111111(temppp[14][63:0],a[31:0],b[31:0],14);
PartialMULLLiplication partialMULLLiplications1111111(temppp[15][63:0],a[31:0],b[31:0],15);
PartialMULLLiplication partialMULLLiplications11111111(temppp[16][63:0],a[31:0],b[31:0],16);
PartialMULLLiplication partialMULLLiplications111111111(temppp[17][63:0],a[31:0],b[31:0],17);
PartialMULLLiplication partialMULLLiplications88(temppp[18][63:0],a[31:0],b[31:0],18);
PartialMULLLiplication partialMULLLiplications888(temppp[19][63:0],a[31:0],b[31:0],19);
PartialMULLLiplication partialMULLLiplications88888(temppp[20][63:0],a[31:0],b[31:0],20);
PartialMULLLiplication partialMULLLiplications8888(temppp[21][63:0],a[31:0],b[31:0],21);
PartialMULLLiplication partialMULLLiplications6666(temppp[22][63:0],a[31:0],b[31:0],22);
PartialMULLLiplication partialMULLLiplications666666(temppp[23][63:0],a[31:0],b[31:0],23);
PartialMULLLiplication partialMULLLiplications6666666(temppp[24][63:0],a[31:0],b[31:0],24);
PartialMULLLiplication partialMULLLiplications66666666(temppp[25][63:0],a[31:0],b[31:0],25);
PartialMULLLiplication partialMULLLiplications666666666(temppp[26][63:0],a[31:0],b[31:0],26);
PartialMULLLiplication partialMULLLiplications66666666666(temppp[27][63:0],a[31:0],b[31:0],27);
PartialMULLLiplication partialMULLLiplications88888888888888(temppp[28][63:0],a[31:0],b[31:0],28);
PartialMULLLiplication partialMULLLiplications777777777777777(temppp[29][63:0],a[31:0],b[31:0],29);
PartialMULLLiplication partialMULLLiplications777(temppp[30][63:0],a[31:0],b[31:0],30);
PartialMULLLiplication partialMULLLiplications777777(temppp[31][63:0],a[31:0],b[31:0],31);

wire [63:0] s11,s12,s13,s14,s15,s16,s17,s18,s19,s110,c11,c12,c13,c14,c15,c16,c17,c18,c19,c110;
wire [63:0] s21,s22,s23,s24,s25,s26,s27,c21,c22,c23,c24,c25,c26,c27;
wire [63:0] s31,s32,s33,s34,s35,c31,c32,c33,c34,c35;
wire [63:0] s41,s42,s43,c41,c42,c43;
wire [63:0] s51,s52,c51,c52;
wire [63:0] s61,c61;
wire [63:0] s71,c71;
wire [63:0] s81,c81;
wire cout;

	XorAdder XA11(temppp[0][63:0],temppp[1][63:0],temppp[2][63:0],s11[63:0],c11[63:0]);
	XorAdder XA12(temppp[3][63:0],temppp[4][63:0],temppp[5][63:0],s12[63:0],c12[63:0]);
	XorAdder XA13(temppp[6][63:0],temppp[7][63:0],temppp[8][63:0],s13[63:0],c13[63:0]);
	XorAdder XA14(temppp[9][63:0],temppp[10][63:0],temppp[11][63:0],s14[63:0],c14[63:0]);
	XorAdder XA15(temppp[12][63:0],temppp[13][63:0],temppp[14][63:0],s15[63:0],c15[63:0]);
	XorAdder XA16(temppp[15][63:0],temppp[16][63:0],temppp[17][63:0],s16[63:0],c16[63:0]);
	XorAdder XA17(temppp[18][63:0],temppp[19][63:0],temppp[20][63:0],s17[63:0],c17[63:0]);
	XorAdder XA18(temppp[21][63:0],temppp[22][63:0],temppp[23][63:0],s18[63:0],c18[63:0]);
	XorAdder XA19(temppp[24][63:0],temppp[25][63:0],temppp[26][63:0],s19[63:0],c19[63:0]);
	XorAdder XA110(temppp[27][63:0],temppp[28][63:0],temppp[29][63:0],s110[63:0],c110[63:0]);
	XorAdder XA21(s11[63:0],c11[63:0],s12[63:0],s21[63:0],c21[63:0]);
	XorAdder XA22(c12[63:0],s13[63:0],c13[63:0],s22[63:0],c22[63:0]);
	XorAdder XA23(s14[63:0],c14[63:0],s15[63:0],s23[63:0],c23[63:0]);
	XorAdder XA24(c15[63:0],s16[63:0],c16[63:0],s24[63:0],c24[63:0]);
	XorAdder XA25(s17[63:0],c17[63:0],s18[63:0],s25[63:0],c25[63:0]);
	XorAdder XA26(c18[63:0],s19[63:0],c19[63:0],s26[63:0],c26[63:0]);
	XorAdder XA27(s110[63:0],c110[63:0],temppp[30][63:0],s27[63:0],c27[63:0]);
	XorAdder XA31(s21[63:0],c21[63:0],s22[63:0],s31[63:0],c31[63:0]);
	XorAdder XA32(c22[63:0],s23[63:0],c23[63:0],s32[63:0],c32[63:0]);
	XorAdder XA33(s24[63:0],c24[63:0],s25[63:0],s33[63:0],c33[63:0]);
	XorAdder XA34(c25[63:0],s26[63:0],c26[63:0],s34[63:0],c34[63:0]);
	XorAdder XA35(s27[63:0],c27[63:0],temppp[31][63:0],s35[63:0],c35[63:0]);
	XorAdder XA41(s31[63:0],c31[63:0],s32[63:0],s41[63:0],c41[63:0]);
	XorAdder XA42(c32[63:0],s33[63:0],c33[63:0],s42[63:0],c42[63:0]);
	XorAdder XA43(s34[63:0],c34[63:0],s35[63:0],s43[63:0],c43[63:0]);
	XorAdder XA51(s41[63:0],c41[63:0],s42[63:0],s51[63:0],c51[63:0]);
	XorAdder XA52(c42[63:0],s43[63:0],c43[63:0],s52[63:0],c52[63:0]);
	XorAdder XA61(s51[63:0],c51[63:0],s52[63:0],s61[63:0],c61[63:0]);
	XorAdder XA71(s61[63:0],c61[63:0],c52[63:0],s71[63:0],c71[63:0]);
	XorAdder XA81(s71[63:0],c71[63:0],c35[63:0],s81[63:0],c81[63:0]);

RCA cla(res,cout,s81,c81);


endmodule





module XorAdder(
	input [63:0]x,
	input [63:0]y,
	input [63:0]z,
	output [63:0]s,
	output [63:0]c);
assign s = x^y^z;
assign c[0] = 1'b0;
assign c[63:1] = (x[63:0]&y[63:0]) | (y[63:0]&z[63:0]) | (z[63:0]&x[63:0]);

endmodule

module PartialMULLLiplication(
    output reg[63:0] x,
    input [31:0] a,
    input [31:0] b,
    input wire [31:0] i
);
    always @(a or b or i)
    begin
        if (b[i] == 1)
            x <= (a << i);
        else
            x = 64'b0;
    end
endmodule












module RCA(
output [63:0] sum,
output cout,
input [63:0] a,b);
  
wire cin = 1'b0;
wire [63:0] c,x,y;
wire [63:1] x2, y2;
wire [63:2] x3, y3;
wire [63:4] x4, y4;
wire [63:8] x5, y5;
wire [63:16] x6, y6;
wire [63:32] x7, y7;
  
and_xor axr[63:0](x, y, a, b);
inputWire inputWire_0(c[0], x[0]);
additional comp_0[63:1](x2[63:1], y2[63:1], x[63:1], y[63:1], x[62:0], y[62:0]);

inputWire inputWire_1(c[1], x2[1]);
additional comp_1[63:2](x3[63:2], y3[63:2], x2[63:2], y2[63:2], {x2[61:1],x[0]}, {y2[61:1],y[0]});

inputWire inputWire_2[3:2](c[3:2], x3[3:2]);
additional comp_2[63:4](x4[63:4], y4[63:4], x3[63:4], y3[63:4], {x3[59:2],x2[1],x[0]}, {y3[59:2],y2[1],y[0]});

inputWire inputWire_3[7:4](c[7:4], x4[7:4]);
additional comp_3[63:8](x5[63:8], y5[63:8], x4[63:8], y4[63:8], {x4[55:4],x3[3:2],x2[1],x[0]}, {y4[55:4],y3[3:2],y2[1],y[0]});
        
inputWire inputWire_4[15:8](c[15:8], x5[15:8]);
additional comp_4[63:16](x6[63:16], y6[63:16], x5[63:16], y5[63:16], {x5[47:8],x4[7:4],x3[3:2],x2[1],x[0]}, {y5[47:8],y4[7:4],y3[3:2],y2[1],y[0]});
  
inputWire inputWire_5[31:16](c[31:16], x6[31:16]);
additional comp_5[63:32](x7[63:32], y7[63:32], x6[63:32], y6[63:32], {x6[31:16],x5[15:8],x4[7:4],x3[3:2],x2[1],x[0]}, {y6[31:16],y5[15:8],y4[7:4],y3[3:2],y2[1],y[0]});

inputWire inputWire_6[63:32](c[63:32], x6[63:32]);
halfadder adder_0(sum[0],y[0],cin);
halfadder adder_1[63:1](sum[63:1],y[63:1], c[62:0]);
buf(cout, c[63]);


endmodule



module and_xor(
output X, Y,
input A, B);
and(X, A, B);
xor(Y, A, B);
endmodule

module halfadder(
output Z,
input X, Y);
xor(Z, X, Y);
endmodule



module inputWire(
output R,
input I);
assign R=I;
endmodule

module additional(output X, Y, input Xi, Yi, Xii, Yii);
wire w;
and(w, Yi, Xii);
or(X, w, Xi);
and(Y, Yi, Yii);
endmodule
