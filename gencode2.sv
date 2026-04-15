// THIS IS A GENERATED FILE (Generated at 2026-04-15T12:48:59+02:00)
// This file was generated with SUS Compiler 0.3.10
// wire_decode #()
module wire_decode(
	input clk,
	input wire[4:0] letter_index,
	output /*mux_wire*/ logic[4:0] decoded_letter
);

/*mux_wire*/ logic[4:0] wire_assign_rev[25:0];
localparam[4:0] _1[25:0] = '{5'd11, 5'd2, 5'd3, 5'd15, 5'd19, 5'd0, 5'd4, 5'd22, 5'd20, 5'd21, 5'd6, 5'd5, 5'd7, 5'd10, 5'd23, 5'd15, 5'd13, 5'd12, 5'd25, 5'd9, 5'd24, 5'd18, 5'd17, 5'd1, 5'd8, 5'd14};
wire[4:0] _3 = wire_assign_rev[letter_index];
always_comb begin // combinatorial decoded_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	decoded_letter = 5'dx;
	decoded_letter = _3;
end
always_comb begin // combinatorial wire_assign_rev
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wire_assign_rev = '{5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx};
	for(int _v0 = 0; _v0 < 26; _v0 = _v0 + 1) begin
wire_assign_rev[_v0] = _1[_v0];
end
end
endmodule

// wire_encode #()
module wire_encode(
	input clk,
	input wire[4:0] letter_index,
	input wire[4:0] cur_rotor_position,
	output /*mux_wire*/ logic[4:0] encoded_letter
);

/*mux_wire*/ logic[4:0] wire_assign[25:0];
localparam[4:0] _1[25:0] = '{5'd5, 5'd23, 5'd1, 5'd2, 5'd6, 5'd11, 5'd10, 5'd12, 5'd24, 5'd19, 5'd13, 5'd0, 5'd17, 5'd16, 5'd25, 5'd3, 5'd15, 5'd22, 5'd21, 5'd4, 5'd8, 5'd9, 5'd7, 5'd14, 5'd20, 5'd18};
/*mux_wire*/ logic[4:0] letter_index_shift;
wire[5:0] _4;
assign _4 = letter_index + cur_rotor_position;
wire[4:0] _6;
assign _6 = _4 % 5'd26;
wire[4:0] _8 = wire_assign[letter_index_shift];
always_comb begin // combinatorial encoded_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	encoded_letter = 5'dx;
	encoded_letter = _8;
end
always_comb begin // combinatorial wire_assign
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wire_assign = '{5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx};
	for(int _v0 = 0; _v0 < 26; _v0 = _v0 + 1) begin
wire_assign[_v0] = _1[_v0];
end
end
always_comb begin // combinatorial letter_index_shift
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	letter_index_shift = 5'dx;
	letter_index_shift = _6;
end
endmodule

// rotor_position_reg #()
module rotor_position_reg(
	input clk,
	input wire rst,
	input wire write_rotor,
	input wire[4:0] set_rotor,
	input wire advance,
	output /*mux_wire*/ logic[4:0] cur_rotor_position
);

/*state*/ logic[4:0] rotor_position = 5'd0;
wire[4:0] _8;
assign _8 = rotor_position + 1'd1;
wire[4:0] _10;
assign _10 = _8 % 5'd26;
always_comb begin // combinatorial cur_rotor_position
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	cur_rotor_position = 5'dx;
	cur_rotor_position = rotor_position;
end
always_ff @(posedge clk) begin // state rotor_position
	if(rst) rotor_position <= 1'd0;
	if(!rst) if(write_rotor) rotor_position <= set_rotor;
	if(!rst) if(!write_rotor) if(advance) rotor_position <= _10;
end
endmodule

// BoolToInt #()
module BoolToInt(
	input clk,
	input wire i,
	output /*mux_wire*/ logic[0:0] o
);

always_comb begin // combinatorial o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	o = 1'dx;
	if(i) o = 1'd1;
	if(!i) o = 1'd0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	o = o;
end
endmodule

// IntToBool #()
module IntToBool(
	input clk,
	input wire[0:0] i,
	output /*mux_wire*/ logic o
);

wire _3;
assign _3 = i == 1'd1;
always_comb begin // combinatorial o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	o = 1'bx;
	o = _3;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	o = o;
end
endmodule

// CrossActionNoData #()
module CrossActionNoData(
	input in_clk,
	input wire din,
	output /*mux_wire*/ logic dout
);

/*mux_wire*/ logic _cross_valid_din;
wire _cross_valid_dout;
CrossDomain_T_type_bool cross_valid(
	.in_clk(in_clk),
	.din(_cross_valid_din),
	.dout(_cross_valid_dout)
);
always_comb begin // combinatorial _cross_valid_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_cross_valid_din = 1'bx;
	if(din) _cross_valid_din = 1'b1;
	if(!din) _cross_valid_din = 1'b0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_cross_valid_din = _cross_valid_din;
end
always_comb begin // combinatorial dout
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	dout = 1'bx;
	dout = 1'b0;
	if(_cross_valid_dout) dout = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	dout = dout;
end
endmodule

// CrossDomain #(T: type bool #())
module CrossDomain_T_type_bool(
	input in_clk,
	input wire din,
	output /*mux_wire*/ logic dout
);

	assign dout = din;
endmodule

