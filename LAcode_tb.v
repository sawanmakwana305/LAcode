module LAcode_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [4:0] address;
	/*reg [31:0] data_in11;
	reg [31:0] data_in12;
	reg [31:0] data_in13;
	reg [31:0] data_in14;
	reg [31:0] data_in15;
	reg [31:0] data_in21;
	reg [31:0] data_in22;
	reg [31:0] data_in23;
	reg [31:0] data_in24;
	reg [31:0] data_in25;
	reg [31:0] data_in31;
	reg [31:0] data_in32;
	reg [31:0] data_in33;
	reg [31:0] data_in34;
	reg [31:0] data_in35;
	reg [31:0] data_in41;
	reg [31:0] data_in42;
	reg [31:0] data_in43;
	reg [31:0] data_in44;
	reg [31:0] data_in45;
	reg [31:0] data_in51;
	reg [31:0] data_in52;
	reg [31:0] data_in53;
	reg [31:0] data_in54;
	reg [31:0] data_in55;*/

	// Outputs
	wire [31:0] value11;
	wire [31:0] value12;
	wire [31:0] value13;
	wire [31:0] value14;
	wire [31:0] value15;
	wire [31:0] value21;
	wire [31:0] value22;
	wire [31:0] value23;
	wire [31:0] value24;
	wire [31:0] value25;
	wire [31:0] value31;
	wire [31:0] value32;
	wire [31:0] value33;
	wire [31:0] value34;
	wire [31:0] value35;
	wire [31:0] value41;
	wire [31:0] value42;
	wire [31:0] value43;
	wire [31:0] value44;
	wire [31:0] value45;
	wire [31:0] value51;
	wire [31:0] value52;
	wire [31:0] value53;
	wire [31:0] value54;
	wire [31:0] value55;
	wire [31:0] value11d;
	wire [31:0] value12d;
	wire [31:0] value13d;
	wire [31:0] value14d;
	wire [31:0] value15d;
	wire [31:0] value21d;
	wire [31:0] value22d;
	wire [31:0] value23d;
	wire [31:0] value24d;
	wire [31:0] value25d;
	wire [31:0] value31d;
	wire [31:0] value32d;
	wire [31:0] value33d;
	wire [31:0] value34d;
	wire [31:0] value35d;
	wire [31:0] value41d;
	wire [31:0] value42d;
	wire [31:0] value43d;
	wire [31:0] value44d;
	wire [31:0] value45d;
	wire [31:0] value51d;
	wire [31:0] value52d;
	wire [31:0] value53d;
	wire [31:0] value54d;
	wire [31:0] value55d;
	
	wire [31:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	LAcode uut (
		.clk(clk), 
		.address(address),
		.data_out(data_out),
		.reset(reset),
		/*.data_in11(data_in11), 
		.data_in12(data_in12), 
		.data_in13(data_in13), 
		.data_in14(data_in14), 
		.data_in15(data_in15), 
		.data_in21(data_in21), 
		.data_in22(data_in22), 
		.data_in23(data_in23), 
		.data_in24(data_in24), 
		.data_in25(data_in25), 
		.data_in31(data_in31), 
		.data_in32(data_in32), 
		.data_in33(data_in33), 
		.data_in34(data_in34), 
		.data_in35(data_in35), 
		.data_in41(data_in41), 
		.data_in42(data_in42), 
		.data_in43(data_in43), 
		.data_in44(data_in44), 
		.data_in45(data_in45), 
		.data_in51(data_in51), 
		.data_in52(data_in52), 
		.data_in53(data_in53), 
		.data_in54(data_in54), 
		.data_in55(data_in55), */
		.value11(value11), 
		.value12(value12), 
		.value13(value13), 
		.value14(value14), 
		.value15(value15), 
		.value21(value21), 
		.value22(value22), 
		.value23(value23), 
		.value24(value24), 
		.value25(value25), 
		.value31(value31), 
		.value32(value32), 
		.value33(value33), 
		.value34(value34), 
		.value35(value35), 
		.value41(value41), 
		.value42(value42), 
		.value43(value43), 
		.value44(value44), 
		.value45(value45), 
		.value51(value51), 
		.value52(value52), 
		.value53(value53), 
		.value54(value54), 
		.value55(value55), 
		.value11d(value11d), 
		.value12d(value12d), 
		.value13d(value13d), 
		.value14d(value14d), 
		.value15d(value15d), 
		.value21d(value21d), 
		.value22d(value22d), 
		.value23d(value23d), 
		.value24d(value24d), 
		.value25d(value25d), 
		.value31d(value31d), 
		.value32d(value32d), 
		.value33d(value33d), 
		.value34d(value34d), 
		.value35d(value35d), 
		.value41d(value41d), 
		.value42d(value42d), 
		.value43d(value43d), 
		.value44d(value44d), 
		.value45d(value45d), 
		.value51d(value51d), 
		.value52d(value52d), 
		.value53d(value53d), 
		.value54d(value54d), 
		.value55d(value55d)
	);
	
	always #100 clk = ~clk;

	initial 
	begin
		clk = 0;
		reset=0;
		
		#50;
		address = 5'd0;
		
		#200;
		address = 5'd1;
		
		#200;
		address = 5'd2;
		
		#200;
		address = 5'd3;
		
		#200;
		address = 5'd4;
		
		#200;
		address = 5'd5;
		
		#200;
		address = 5'd6;
		
		#200;
		address = 5'd7;
		
		#200;
		address = 5'd8;
		#200;
		address = 5'd9;
		#200;
		address = 5'd10;
		#200;
		address = 5'd11;
		#200;
		address = 5'd12;
		
		#200;
		address = 5'd13;
		
		#200;
		address = 5'd14;
		#200;
		address = 5'd15;
		#200;
		address = 5'd16;
		#200;
		address = 5'd17;
		#200;
		address = 5'd18;
		#200;
		address = 5'd19;
		#200;
		address = 5'd20;
		#200;
		address = 5'd21;
		#200;
		address = 5'd22;
		#200;
		address = 5'd23;
		#200;
		address = 5'd24;
		#200;
		address = 5'd25;
		#200;
		reset=1'b1;
		#200;
		
		reset=1'b0;

	end
      
endmodule

