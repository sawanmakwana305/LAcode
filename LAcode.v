`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//////////////////////////////////////////////////////////////////////////////////
module LAcode(clk, reset, data_out, address, value11,value12,value13,value14,value15,value21,value22,value23,value24,value25,value31,value32,value33,value34,value35,value41,value42,value43,value44,value45,value51,value52,value53,value54,value55,value11d,value12d,value13d,value14d,value15d,value21d,value22d,value23d,value24d,value25d,value31d,value32d,value33d,value34d,value35d,value41d,value42d,value43d,value44d,value45d,value51d,value52d,value53d,value54d,value55d);

output [31:0] value11d,value12d,value13d,value14d,value15d;
output [31:0] value21d,value22d,value23d,value24d,value25d;
output [31:0] value31d,value32d,value33d,value34d,value35d;
output [31:0] value41d,value42d,value43d,value44d,value45d;
output [31:0] value51d,value52d,value53d,value54d,value55d;

output reg [31:0] value11,value12,value13,value14,value15;
output reg [31:0] value21,value22,value23,value24,value25;
output reg [31:0] value31,value32,value33,value34,value35;
output reg [31:0] value41,value42,value43,value44,value45;
output reg [31:0] value51,value52,value53,value54,value55;

reg [31:0] matrix[0:25];
reg [31:0] inverse[0:24];

output [31:0] data_out;

input reset;
input [4:0] address;

reg [31:0] data_in11,data_in12,data_in13,data_in14,data_in15;
reg [31:0] data_in21,data_in22,data_in23,data_in24,data_in25;
reg [31:0] data_in31,data_in32,data_in33,data_in34,data_in35;
reg [31:0] data_in41,data_in42,data_in43,data_in44,data_in45;
reg [31:0] data_in51,data_in52,data_in53,data_in54,data_in55;
input clk;


reg [31:0] value11t = 32'd1;
reg [31:0] value12t = 32'd0;
reg [31:0] value13t = 32'd0;
reg [31:0] value14t = 32'd0;
reg [31:0] value15t = 32'd0;

reg [31:0] value21t = 32'd0;
reg [31:0] value22t = 32'd1;
reg [31:0] value23t = 32'd0;
reg [31:0] value24t = 32'd0;
reg [31:0] value25t = 32'd0;

reg [31:0] value31t = 32'd0;
reg [31:0] value32t = 32'd0;
reg [31:0] value33t = 32'd1;
reg [31:0] value34t = 32'd0;
reg [31:0] value35t = 32'd0;

reg [31:0] value41t = 32'd0;
reg [31:0] value42t = 32'd0;
reg [31:0] value43t = 32'd0;
reg [31:0] value44t = 32'd1;
reg [31:0] value45t = 32'd0;

reg [31:0] value51t = 32'd0;
reg [31:0] value52t = 32'd0;
reg [31:0] value53t = 32'd0;
reg [31:0] value54t = 32'd0;
reg [31:0] value55t = 32'd1;

reg [31:0] answer_temp11,answer_temp12,answer_temp13,answer_temp14,answer_temp15,answer_temp21,answer_temp22,answer_temp23,answer_temp24,answer_temp25,answer_temp31,answer_temp32,answer_temp33,answer_temp34,answer_temp35,answer_temp41,answer_temp42,answer_temp43,answer_temp44,answer_temp45,answer_temp51,answer_temp52,answer_temp53t,answer_temp54t,answer_temp55t;

reg [31:0] x;
reg [31:0] y;

matrix_ROM set_value (
  .clka(clk), // input clka
  .addra(address), // input [4 : 0] addra
  .douta(data_out) // output [31 : 0] douta
);


always@(posedge clk)
begin

if(reset==1'b0)
begin
	matrix[address] <= data_out;
end

else
begin

data_in11 = matrix[1];
data_in12 = matrix[2];
data_in13 = matrix[3];
data_in14 = matrix[4];
data_in15 = matrix[5];

data_in21 = matrix[6];
data_in22 = matrix[7];
data_in23 = matrix[8];
data_in24 = matrix[9];
data_in25 = matrix[10];

data_in31 = matrix[11];
data_in32= matrix[12];
data_in33= matrix[13];
data_in34 = matrix[14];
data_in35 = matrix[15];

data_in41 = matrix[16];
data_in42 =  matrix[17];
data_in43 = matrix[18];
data_in44 = matrix[19];
data_in45 = matrix[20];

data_in51 = matrix[21];
data_in52 = matrix[22];
data_in53 = matrix[23];
data_in54 = matrix[24];
data_in55 = matrix[25];

answer_temp11 = (data_in11 > 0 ? data_in11 : (~data_in11+32'd1));
answer_temp12 = (data_in12 > 0 ? data_in12 : (~data_in12+32'd1));
answer_temp13 = (data_in13 > 0 ? data_in13 : (~data_in13+32'd1));
answer_temp14 = (data_in14 > 0 ? data_in14 : (~data_in14+32'd1));
answer_temp15 = (data_in15 > 0 ? data_in15 : (~data_in15+32'd1));

answer_temp21 = (data_in21 > 0 ? data_in21 : (~data_in21 + 32'd1));
answer_temp22 = (data_in22 > 0 ? data_in22 : (~data_in22 + 32'd1));
answer_temp23 = (data_in23 > 0 ? data_in23 : (~data_in23 + 32'd1));
answer_temp24 = (data_in24 > 0 ? data_in24 : (~data_in24 + 32'd1));
answer_temp25 = (data_in25 > 0 ? data_in25 : (~data_in25 + 32'd1));

answer_temp31 = (data_in31 > 0 ? data_in31 : (~data_in31 + 32'd1));
answer_temp32 = (data_in32 > 0 ? data_in32 : (~data_in32 + 32'd1));
answer_temp33 = (data_in33 > 0 ? data_in33 : (~data_in33 + 32'd1));
answer_temp34 = (data_in34 > 0 ? data_in34 : (~data_in34 + 32'd1));
answer_temp35 = (data_in35 > 0 ? data_in35 : (~data_in35 + 32'd1));

answer_temp41 = (data_in41 > 0 ? data_in41 : (~data_in41+32'd1));
answer_temp42 = (data_in42 > 0 ? data_in42 : (~data_in42+32'd1));
answer_temp43 = (data_in43 > 0 ? data_in43 : (~data_in43+32'd1));
answer_temp44 = (data_in44 > 0 ? data_in44 : (~data_in44+32'd1));
answer_temp45 = (data_in45 > 0 ? data_in45 : (~data_in45+32'd1));

answer_temp51 = (data_in51 > 0 ? data_in51 : (~data_in51+32'd1));
answer_temp52 = (data_in52 > 0 ? data_in52 : (~data_in52+32'd1));
answer_temp53t = (data_in53 > 0 ? data_in53 : (~data_in53+32'd1));
answer_temp54t = (data_in54 > 0 ? data_in54 : (~data_in54+32'd1));
answer_temp55t = (data_in55 > 0 ? data_in55 : (~data_in55+32'd1));



x = answer_temp11;
y = answer_temp21;

answer_temp21 = x*answer_temp21 - y*answer_temp11;
answer_temp22 = x*answer_temp22 - y*answer_temp12;
answer_temp23 = x*answer_temp23 - y*answer_temp13;
answer_temp24 = x*answer_temp24 - y*answer_temp14;
answer_temp25 = x*answer_temp25 - y*answer_temp15;
value21t = x*value21t - y*value11t;
value22t = x*value22t - y*value12t;
value23t = x*value23t - y*value13t;
value24t = x*value24t - y*value14t;
value25t = x*value25t - y*value15t;

x = answer_temp11;
y = answer_temp31;

answer_temp31 = x*answer_temp31 - y*answer_temp11;
answer_temp32 = x*answer_temp32 - y*answer_temp12;
answer_temp33 = x*answer_temp33 - y*answer_temp13;
answer_temp34 = x*answer_temp34 - y*answer_temp14;
answer_temp35 = x*answer_temp35 - y*answer_temp15;
value31t = x*value31t - y*value11t;
value32t = x*value32t - y*value12t;
value33t = x*value33t - y*value13t;
value34t = x*value34t - y*value14t;
value35t = x*value35t - y*value15t;

x = answer_temp11;
y = answer_temp41;

answer_temp41 = x*answer_temp41 - y*answer_temp11;
answer_temp42 = x*answer_temp42 - y*answer_temp12;
answer_temp43 = x*answer_temp43 - y*answer_temp13;
answer_temp44 = x*answer_temp44 - y*answer_temp14;
answer_temp45 = x*answer_temp45 - y*answer_temp15;
value41t = x*value41t - y*value11t;
value42t = x*value42t - y*value12t;
value43t = x*value43t - y*value13t;
value44t = x*value44t - y*value14t;
value45t = x*value45t - y*value15t;

x = answer_temp11;
y = answer_temp51;

answer_temp51 = x*answer_temp51 - y*answer_temp11;
answer_temp52 = x*answer_temp52 - y*answer_temp12;
answer_temp53t = x*answer_temp53t - y*answer_temp13;
answer_temp54t = x*answer_temp54t - y*answer_temp14;
answer_temp55t = x*answer_temp55t - y*answer_temp15;
value51t = x*value51t - y*value11t;
value52t = x*value52t - y*value12t;
value53t = x*value53t - y*value13t;
value54t = x*value54t - y*value14t;
value55t = x*value55t - y*value15t;


x = answer_temp22;
y = answer_temp12;

answer_temp11 = x*answer_temp11 - y*answer_temp21;
answer_temp12 = x*answer_temp12 - y*answer_temp22;
answer_temp13 = x*answer_temp13 - y*answer_temp23;
answer_temp14 = x*answer_temp14 - y*answer_temp24;
answer_temp15 = x*answer_temp15 - y*answer_temp25;
value11t = x*value11t - y*value21t;
value12t = x*value12t - y*value22t;
value13t = x*value13t - y*value23t;
value14t = x*value14t - y*value24t;
value15t = x*value15t - y*value25t;

x = answer_temp22;
y = answer_temp32;

answer_temp31 = x*answer_temp31 - y*answer_temp21;
answer_temp32 = x*answer_temp32 - y*answer_temp22;
answer_temp33 = x*answer_temp33 - y*answer_temp23;
answer_temp34 = x*answer_temp34 - y*answer_temp24;
answer_temp35 = x*answer_temp35 - y*answer_temp25;
value31t = x*value31t - y*value21t;
value32t = x*value32t - y*value22t;
value33t = x*value33t - y*value23t;
value34t = x*value34t - y*value24t;
value35t = x*value35t - y*value25t;

x = answer_temp22;
y = answer_temp42;

answer_temp41 = x*answer_temp41 - y*answer_temp21;
answer_temp42 = x*answer_temp42 - y*answer_temp22;
answer_temp43 = x*answer_temp43 - y*answer_temp23;
answer_temp44 = x*answer_temp44 - y*answer_temp24;
answer_temp45 = x*answer_temp45 - y*answer_temp25;
value41t = x*value41t - y*value21t;
value42t = x*value42t - y*value22t;
value43t = x*value43t - y*value23t;
value44t = x*value44t - y*value24t;
value45t = x*value45t - y*value25t;

x = answer_temp22;
y = answer_temp52;

answer_temp51 = x*answer_temp51 - y*answer_temp21;
answer_temp52 = x*answer_temp52 - y*answer_temp22;
answer_temp53t = x*answer_temp53t - y*answer_temp23;
answer_temp54t = x*answer_temp54t - y*answer_temp24;
answer_temp55t = x*answer_temp55t - y*answer_temp25;
value51t = x*value51t - y*value21t;
value52t = x*value52t - y*value22t;
value53t = x*value53t - y*value23t;
value54t = x*value54t - y*value24t;
value55t = x*value55t - y*value25t;


x = answer_temp33;
y = answer_temp13;

answer_temp11 = x*answer_temp11 - y*answer_temp31;
answer_temp12 = x*answer_temp12 - y*answer_temp32;
answer_temp13 = x*answer_temp13 - y*answer_temp33;
answer_temp14 = x*answer_temp14 - y*answer_temp34;
answer_temp15 = x*answer_temp15 - y*answer_temp35;
value11t = x*value11t - y*value31t;
value12t = x*value12t - y*value32t;
value13t = x*value13t - y*value33t;
value14t = x*value14t - y*value34t;
value15t = x*value15t - y*value35t;

x = answer_temp33;
y = answer_temp23;

answer_temp21 = x*answer_temp21 - y*answer_temp31;
answer_temp22 = x*answer_temp22 - y*answer_temp32;
answer_temp23 = x*answer_temp23 - y*answer_temp33;
answer_temp24 = x*answer_temp24 - y*answer_temp34;
answer_temp25 = x*answer_temp25 - y*answer_temp35;
value21t = x*value21t - y*value31t;
value22t = x*value22t - y*value32t;
value23t = x*value23t - y*value33t;
value24t = x*value24t - y*value34t;
value25t = x*value25t - y*value35t;

x = answer_temp33;
y = answer_temp43;

answer_temp41 = x*answer_temp41 - y*answer_temp31;
answer_temp42 = x*answer_temp42 - y*answer_temp32;
answer_temp43 = x*answer_temp43 - y*answer_temp33;
answer_temp44 = x*answer_temp44 - y*answer_temp34;
answer_temp45 = x*answer_temp45 - y*answer_temp35;
value41t = x*value41t - y*value31t;
value42t = x*value42t - y*value32t;
value43t = x*value43t - y*value33t;
value44t = x*value44t - y*value34t;
value45t = x*value45t - y*value35t;

x = answer_temp33;
y = answer_temp53t;

answer_temp51 = x*answer_temp51 - y*answer_temp31;
answer_temp52 = x*answer_temp52 - y*answer_temp32;
answer_temp53t = x*answer_temp53t - y*answer_temp33;
answer_temp54t = x*answer_temp54t - y*answer_temp34;
answer_temp55t = x*answer_temp55t - y*answer_temp35;
value51t = x*value51t - y*value31t;
value52t = x*value52t - y*value32t;
value53t = x*value53t - y*value33t;
value54t = x*value54t - y*value34t;
value55t = x*value55t - y*value35t;


x = answer_temp44;
y = answer_temp14;

answer_temp11 = x*answer_temp11 - y*answer_temp41;
answer_temp12 = x*answer_temp12 - y*answer_temp42;
answer_temp13 = x*answer_temp13 - y*answer_temp43;
answer_temp14 = x*answer_temp14 - y*answer_temp44;
answer_temp15 = x*answer_temp15 - y*answer_temp45;
value11t = x*value11t - y*value41t;
value12t = x*value12t - y*value42t;
value13t = x*value13t - y*value43t;
value14t = x*value14t - y*value44t;
value15t = x*value15t - y*value45t;

x = answer_temp44;
y = answer_temp24;

answer_temp21 = x*answer_temp21 - y*answer_temp41;
answer_temp22 = x*answer_temp22 - y*answer_temp42;
answer_temp23 = x*answer_temp23 - y*answer_temp43;
answer_temp24 = x*answer_temp24 - y*answer_temp44;
answer_temp25 = x*answer_temp25 - y*answer_temp45;
value21t = x*value21t - y*value41t;
value22t = x*value22t - y*value42t;
value23t = x*value23t - y*value43t;
value24t = x*value24t - y*value44t;
value25t = x*value25t - y*value45t;

x = answer_temp44;
y = answer_temp34;

answer_temp31 = x*answer_temp31 - y*answer_temp41;
answer_temp32 = x*answer_temp32 - y*answer_temp42;
answer_temp33 = x*answer_temp33 - y*answer_temp43;
answer_temp34 = x*answer_temp34 - y*answer_temp44;
answer_temp35 = x*answer_temp35 - y*answer_temp45;
value31t = x*value31t - y*value41t;
value32t = x*value32t - y*value42t;
value33t = x*value33t - y*value43t;
value34t = x*value34t - y*value44t;
value35t = x*value35t - y*value45t;

x = answer_temp44;
y = answer_temp54t;

answer_temp51 = x*answer_temp51 - y*answer_temp41;
answer_temp52 = x*answer_temp52 - y*answer_temp42;
answer_temp53t = x*answer_temp53t - y*answer_temp43;
answer_temp54t = x*answer_temp54t - y*answer_temp44;
answer_temp55t = x*answer_temp55t - y*answer_temp45;
value51t = x*value51t - y*value41t;
value52t = x*value52t - y*value42t;
value53t = x*value53t - y*value43t;
value54t = x*value54t - y*value44t;
value55t = x*value55t - y*value45t;


x = answer_temp55t;
y = answer_temp15;

answer_temp11 = x*answer_temp11 - y*answer_temp51;
answer_temp12 = x*answer_temp12 - y*answer_temp52;
answer_temp13 = x*answer_temp13 - y*answer_temp53t;
answer_temp14 = x*answer_temp14 - y*answer_temp54t;
answer_temp15 = x*answer_temp15 - y*answer_temp55t;
value11t = x*value11t - y*value51t;
value12t = x*value12t - y*value52t;
value13t = x*value13t - y*value53t;
value14t = x*value14t - y*value54t;
value15t = x*value15t - y*value55t;

x = answer_temp55t;
y = answer_temp25;

answer_temp21 = x*answer_temp21 - y*answer_temp51;
answer_temp22 = x*answer_temp22 - y*answer_temp52;
answer_temp23 = x*answer_temp23 - y*answer_temp53t;
answer_temp24 = x*answer_temp24 - y*answer_temp54t;
answer_temp25 = x*answer_temp25 - y*answer_temp55t;
value21t = x*value21t - y*value51t;
value22t = x*value22t - y*value52t;
value23t = x*value23t - y*value53t;
value24t = x*value24t - y*value54t;
value25t = x*value25t - y*value55t;

x = answer_temp55t;
y = answer_temp35;

answer_temp31 = x*answer_temp31 - y*answer_temp51;
answer_temp32 = x*answer_temp32 - y*answer_temp52;
answer_temp33 = x*answer_temp33 - y*answer_temp53t;
answer_temp34 = x*answer_temp34 - y*answer_temp54t;
answer_temp35 = x*answer_temp35 - y*answer_temp55t;
value31t = x*value31t - y*value51t;
value32t = x*value32t - y*value52t;
value33t = x*value33t - y*value53t;
value34t = x*value34t - y*value54t;
value35t = x*value35t - y*value55t;

x = answer_temp55t;
y = answer_temp45;

answer_temp41 = x*answer_temp41 - y*answer_temp51;
answer_temp42 = x*answer_temp42 - y*answer_temp52;
answer_temp43 = x*answer_temp43 - y*answer_temp53t;
answer_temp44 = x*answer_temp44 - y*answer_temp54t;
answer_temp45 = x*answer_temp45 - y*answer_temp55t;
value41t = x*value41t - y*value51t;
value42t = x*value42t - y*value52t;
value43t = x*value43t - y*value53t;
value44t = x*value44t - y*value54t;
value45t = x*value45t - y*value55t;



if(answer_temp11==32'd0 || answer_temp22 == 32'd0 || answer_temp33 == 32'd0 || answer_temp44==32'd0 || answer_temp55t==32'd0)
begin
	value11=32'dx;
	value22=32'dx;
	value33=32'dx;
	value44=32'dx;
	value55=32'dx;
end

else
begin
	value11 = value11t;
	value12 = value12t;
	value13 = value13t;
	value14 = value14t;
	value15 = value15t;

	value21 = value21t;
	value22 = value22t;
	value23 = value23t;
	value24 = value24t;
	value25 = value25t;

	value31 = value31t;
	value32 = value32t;
	value33 = value33t;
	value34 = value34t;
	value35 = value35t;

	value41 = value41t;
	value42 = value42t;
	value43 = value43t;
	value44 = value44t;
	value45 = value45t;

	value51 = value51t;
	value52 = value52t;
	value53 = value53t;
	value54 = value54t;
	value55 = value55t;
end


inverse[0] = value11;
inverse[1] = value12;
inverse[2] = value13;
inverse[3] = value14;
inverse[4] = value15;

inverse[5] = value21;
inverse[6] = value22;
inverse[7] = value23;
inverse[8] = value24;
inverse[9] = value25;

inverse[10] = value31;
inverse[11] = value32;
inverse[12] = value33;
inverse[13] = value34;
inverse[14] = value35;

inverse[15] = value41;
inverse[16] = value42;
inverse[17] = value43;
inverse[18] = value44;
inverse[19] = value45;

inverse[20] = value51;
inverse[21] = value52;
inverse[22] = value53;
inverse[23] = value54;
inverse[24] = value55;

end

end

wire [31:0] value11dt,value12dt,value13dt,value14dt,value15dt;
wire [31:0] value21dt,value22dt,value23dt,value24dt,value25dt;
wire [31:0] value31dt,value32dt,value33dt,value34dt,value35dt;
wire [31:0] value41dt,value42dt,value43dt,value44dt,value45dt;
wire [31:0] value51dt,value52dt,value53dt,value54dt,value55dt;

wire  ridentity11dt,ridentity12dt,ridentity13dt,ridentity14dt,ridentity15dt;
wire  ridentity21dt,ridentity22dt,ridentity23dt,ridentity24dt,ridentity25dt;
wire  ridentity31dt,ridentity32dt,ridentity33dt,ridentity34dt,ridentity35dt;
wire  ridentity41dt,ridentity42dt,ridentity43dt,ridentity44dt,ridentity45dt;
wire  ridentity51dt,ridentity52dt,ridentity53dt,ridentity54dt,ridentity55dt;

wire [31:0] fidentity11dt,fidentity12dt,fidentity13dt,fidentity14dt,fidentity15dt;
wire [31:0] fidentity21dt,fidentity22dt,fidentity23dt,fidentity24dt,fidentity25dt;
wire [31:0] fidentity31dt,fidentity32dt,fidentity33dt,fidentity34dt,fidentity35dt;
wire [31:0] fidentity41dt,fidentity42dt,fidentity43dt,fidentity44dt,fidentity45dt;
wire [31:0] fidentity51dt,fidentity52dt,fidentity53dt,fidentity54dt,fidentity55dt;*/

assign identity11d = identity11;
assign identity12d = identity12;
assign identity13d = identity13;
assign identity14d = identity14;
assign identity15d = identity15;

assign identity21d = identity21;
assign identity22d = identity22;
assign identity23d = identity23;
assign identity24d = identity24;
assign identity25d = identity25;

assign identity31d = identity31;
assign identity32d = identity32;
assign identity33d = identity33;
assign identity34d = identity34;
assign identity35d = identity35;

assign identity41d = identity41;
assign identity42d = identity42;
assign identity43d = identity43;
assign identity44d = identity44;
assign identity45d = identity45;

assign identity51d = identity51;
assign identity52d = identity52;
assign identity53d = identity53;
assign identity54d = identity54;
assign identity55d = identity55;

wire [31:0] a,b,c,d,e;

assign a = answer_temp11;
assign b = answer_temp22;
assign c = answer_temp33;
assign d = answer_temp44;
assign e = answer_temp55t;


assign identity11d = identity11dt;
assign identity12d = identity12dt;
assign identity13d = identity13dt;
assign identity14d = identity14dt;
assign identity15d = identity15dt;

assign identity21d = identity21dt;
assign identity22d = identity22dt;
assign identity23d = identity23dt;
assign identity24d = identity24dt;
assign identity25d = identity25dt;

assign identity31d = identity31dt;
assign identity32d = identity32dt;
assign identity33d = identity33dt;
assign identity34d = identity34dt;
assign identity35d = identity35dt;

assign identity41d = identity41dt;
assign identity42d = identity42dt;
assign identity43d = identity43dt;
assign identity44d = identity44dt;
assign identity45d = identity45dt;

assign identity51d = identity51dt;
assign identity52d = identity52dt;
assign identity53d = identity53dt;
assign identity54d = identity54dt;
assign identity55d = identity55dt;



endmodule