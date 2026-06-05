// THIS IS A GENERATED FILE (Generated at 2026-06-05T13:19:21+02:00)
// This file was generated with SUS Compiler 0.3.10
// main #()
module main(
	input clk,
	input wire[4:0] in_letter,
	output /*mux_wire*/ logic[4:0] out_letter
);

/*mux_wire*/ logic _test_parse_letter;
/*mux_wire*/ logic[4:0] _test_input_letter;
wire[4:0] _test_encode_letter;
enigma_machine_rotors_used_1_2_3_initial_plugboard_0_1_2_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25_rotor_settings_0_0_0_ring_settings_0_0_0 test(
	.clk(clk),
	.parse_letter(_test_parse_letter),
	.input_letter(_test_input_letter),
	.encode_letter(_test_encode_letter)
);
always_comb begin // combinatorial out_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	out_letter = 5'dx;
	out_letter = _test_encode_letter;
end
always_comb begin // combinatorial _test_parse_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_test_parse_letter = 1'bx;
	_test_parse_letter = 1'b0;
	_test_parse_letter = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_test_parse_letter = _test_parse_letter;
end
always_comb begin // combinatorial _test_input_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_test_input_letter = 5'dx;
	_test_input_letter = in_letter;
end
endmodule

// enigma_machine #(rotors_used: [1, 2, 3], initial_plugboard: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25], rotor_settings: [0, 0, 0], ring_settings: [0, 0, 0])
module enigma_machine_rotors_used_1_2_3_initial_plugboard_0_1_2_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25_rotor_settings_0_0_0_ring_settings_0_0_0(
	input clk,
	input wire parse_letter,
	input wire[4:0] input_letter,
	output /*mux_wire*/ logic[4:0] encode_letter
);

/*state*/ logic right_rotor_advance;
/*state*/ logic middle_rotor_advance;
/*state*/ logic left_rotor_advance;
/*mux_wire*/ logic _rotor_right_turnover;
/*mux_wire*/ logic _rotor_right_advance;
wire _rotor_right_advance_signal;
/*mux_wire*/ logic _rotor_middle_turnover;
/*mux_wire*/ logic _rotor_middle_advance;
wire _rotor_middle_advance_signal;
/*mux_wire*/ logic _rotor_left_turnover;
/*mux_wire*/ logic _rotor_left_advance;
wire _rotor_left_advance_signal;
/*mux_wire*/ logic _plugboard_used_pass_letter;
/*mux_wire*/ logic[4:0] _plugboard_used_input_letter;
wire[4:0] _plugboard_used_output_letter;
/*mux_wire*/ logic _rotor_right_encode_left;
/*mux_wire*/ logic[4:0] _rotor_right_letter_index;
wire[4:0] _rotor_right_encode_letter;
/*mux_wire*/ logic _rotor_middle_encode_left;
/*mux_wire*/ logic[4:0] _rotor_middle_letter_index;
wire[4:0] _rotor_middle_encode_letter;
/*mux_wire*/ logic _rotor_left_encode_left;
/*mux_wire*/ logic[4:0] _rotor_left_letter_index;
wire[4:0] _rotor_left_encode_letter;
/*mux_wire*/ logic _reflector_reflector;
/*mux_wire*/ logic[4:0] _reflector_input_letter;
wire[4:0] _reflector_output_letter;
/*mux_wire*/ logic _rotor_left_encode_right;
/*mux_wire*/ logic[4:0] _rotor_left_rev_letter_index;
wire[4:0] _rotor_left_rev_encode_letter;
/*mux_wire*/ logic _rotor_middle_encode_right;
/*mux_wire*/ logic[4:0] _rotor_middle_rev_letter_index;
wire[4:0] _rotor_middle_rev_encode_letter;
/*mux_wire*/ logic _rotor_right_encode_right;
/*mux_wire*/ logic[4:0] _rotor_right_rev_letter_index;
wire[4:0] _rotor_right_rev_encode_letter;
plugboard_plugboard_config_0_1_2_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25 plugboard_used(
	.clk(clk),
	.pass_letter(_plugboard_used_pass_letter),
	.input_letter(_plugboard_used_input_letter),
	.output_letter(_plugboard_used_output_letter)
);
enigma_rotor_initial_position_0_ring_position_0_rotor_number_1 rotor_right(
	.clk(clk),
	.reset(),
	.write_rotor(),
	.write_value(),
	.advance(_rotor_right_advance),
	.advance_signal(_rotor_right_advance_signal),
	.turnover(_rotor_right_turnover),
	.encode_left(_rotor_right_encode_left),
	.letter_index(_rotor_right_letter_index),
	.encode_letter(_rotor_right_encode_letter),
	.encode_right(_rotor_right_encode_right),
	.rev_letter_index(_rotor_right_rev_letter_index),
	.rev_encode_letter(_rotor_right_rev_encode_letter)
);
enigma_rotor_initial_position_0_ring_position_0_rotor_number_2 rotor_middle(
	.clk(clk),
	.reset(),
	.write_rotor(),
	.write_value(),
	.advance(_rotor_middle_advance),
	.advance_signal(_rotor_middle_advance_signal),
	.turnover(_rotor_middle_turnover),
	.encode_left(_rotor_middle_encode_left),
	.letter_index(_rotor_middle_letter_index),
	.encode_letter(_rotor_middle_encode_letter),
	.encode_right(_rotor_middle_encode_right),
	.rev_letter_index(_rotor_middle_rev_letter_index),
	.rev_encode_letter(_rotor_middle_rev_encode_letter)
);
enigma_rotor_initial_position_0_ring_position_0_rotor_number_3 rotor_left(
	.clk(clk),
	.reset(),
	.write_rotor(),
	.write_value(),
	.advance(_rotor_left_advance),
	.advance_signal(_rotor_left_advance_signal),
	.turnover(_rotor_left_turnover),
	.encode_left(_rotor_left_encode_left),
	.letter_index(_rotor_left_letter_index),
	.encode_letter(_rotor_left_encode_letter),
	.encode_right(_rotor_left_encode_right),
	.rev_letter_index(_rotor_left_rev_letter_index),
	.rev_encode_letter(_rotor_left_rev_encode_letter)
);
reflector reflector(
	.clk(clk),
	.reflector(_reflector_reflector),
	.input_letter(_reflector_input_letter),
	.output_letter(_reflector_output_letter)
);
always_ff @(posedge clk) begin // state right_rotor_advance
	if(parse_letter) right_rotor_advance <= _rotor_right_advance_signal;
end
always_ff @(posedge clk) begin // state middle_rotor_advance
	if(parse_letter) if(right_rotor_advance) middle_rotor_advance <= _rotor_middle_advance_signal;
	if(parse_letter) if(!right_rotor_advance) if(middle_rotor_advance) middle_rotor_advance <= 1'b0;
end
always_ff @(posedge clk) begin // state left_rotor_advance
	if(parse_letter) if(right_rotor_advance) if(middle_rotor_advance) left_rotor_advance <= _rotor_left_advance_signal;
end
always_comb begin // combinatorial encode_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	encode_letter = 5'dx;
	if(parse_letter) encode_letter = _plugboard_used_output_letter;
end
always_comb begin // combinatorial _rotor_right_turnover
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_right_turnover = 1'bx;
	_rotor_right_turnover = 1'b0;
	if(parse_letter) _rotor_right_turnover = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_rotor_right_turnover = _rotor_right_turnover;
end
always_comb begin // combinatorial _rotor_right_advance
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_right_advance = 1'bx;
	_rotor_right_advance = 1'b0;
	if(parse_letter) _rotor_right_advance = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_rotor_right_advance = _rotor_right_advance;
end
always_comb begin // combinatorial _rotor_middle_turnover
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_middle_turnover = 1'bx;
	_rotor_middle_turnover = 1'b0;
	if(parse_letter) if(right_rotor_advance) _rotor_middle_turnover = 1'b1;
	if(parse_letter) if(!right_rotor_advance) if(middle_rotor_advance) _rotor_middle_turnover = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_rotor_middle_turnover = _rotor_middle_turnover;
end
always_comb begin // combinatorial _rotor_middle_advance
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_middle_advance = 1'bx;
	_rotor_middle_advance = 1'b0;
	if(parse_letter) if(right_rotor_advance) _rotor_middle_advance = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_rotor_middle_advance = _rotor_middle_advance;
end
always_comb begin // combinatorial _rotor_left_turnover
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_left_turnover = 1'bx;
	_rotor_left_turnover = 1'b0;
	if(parse_letter) if(right_rotor_advance) if(middle_rotor_advance) _rotor_left_turnover = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_rotor_left_turnover = _rotor_left_turnover;
end
always_comb begin // combinatorial _rotor_left_advance
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_left_advance = 1'bx;
	_rotor_left_advance = 1'b0;
	if(parse_letter) if(right_rotor_advance) if(middle_rotor_advance) _rotor_left_advance = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_rotor_left_advance = _rotor_left_advance;
end
always_comb begin // combinatorial _plugboard_used_pass_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_plugboard_used_pass_letter = 1'bx;
	_plugboard_used_pass_letter = 1'b0;
	if(parse_letter) _plugboard_used_pass_letter = 1'b1;
	if(parse_letter) _plugboard_used_pass_letter = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_plugboard_used_pass_letter = _plugboard_used_pass_letter;
end
always_comb begin // combinatorial _plugboard_used_input_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_plugboard_used_input_letter = 5'dx;
	if(parse_letter) _plugboard_used_input_letter = input_letter;
	if(parse_letter) _plugboard_used_input_letter = _rotor_right_rev_encode_letter;
end
always_comb begin // combinatorial _rotor_right_encode_left
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_right_encode_left = 1'bx;
	_rotor_right_encode_left = 1'b0;
	if(parse_letter) _rotor_right_encode_left = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_rotor_right_encode_left = _rotor_right_encode_left;
end
always_comb begin // combinatorial _rotor_right_letter_index
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_right_letter_index = 5'dx;
	if(parse_letter) _rotor_right_letter_index = _plugboard_used_output_letter;
end
always_comb begin // combinatorial _rotor_middle_encode_left
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_middle_encode_left = 1'bx;
	_rotor_middle_encode_left = 1'b0;
	if(parse_letter) _rotor_middle_encode_left = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_rotor_middle_encode_left = _rotor_middle_encode_left;
end
always_comb begin // combinatorial _rotor_middle_letter_index
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_middle_letter_index = 5'dx;
	if(parse_letter) _rotor_middle_letter_index = _rotor_right_encode_letter;
end
always_comb begin // combinatorial _rotor_left_encode_left
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_left_encode_left = 1'bx;
	_rotor_left_encode_left = 1'b0;
	if(parse_letter) _rotor_left_encode_left = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_rotor_left_encode_left = _rotor_left_encode_left;
end
always_comb begin // combinatorial _rotor_left_letter_index
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_left_letter_index = 5'dx;
	if(parse_letter) _rotor_left_letter_index = _rotor_middle_encode_letter;
end
always_comb begin // combinatorial _reflector_reflector
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_reflector_reflector = 1'bx;
	_reflector_reflector = 1'b0;
	if(parse_letter) _reflector_reflector = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_reflector_reflector = _reflector_reflector;
end
always_comb begin // combinatorial _reflector_input_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_reflector_input_letter = 5'dx;
	if(parse_letter) _reflector_input_letter = _rotor_left_encode_letter;
end
always_comb begin // combinatorial _rotor_left_encode_right
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_left_encode_right = 1'bx;
	_rotor_left_encode_right = 1'b0;
	if(parse_letter) _rotor_left_encode_right = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_rotor_left_encode_right = _rotor_left_encode_right;
end
always_comb begin // combinatorial _rotor_left_rev_letter_index
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_left_rev_letter_index = 5'dx;
	if(parse_letter) _rotor_left_rev_letter_index = _reflector_output_letter;
end
always_comb begin // combinatorial _rotor_middle_encode_right
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_middle_encode_right = 1'bx;
	_rotor_middle_encode_right = 1'b0;
	if(parse_letter) _rotor_middle_encode_right = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_rotor_middle_encode_right = _rotor_middle_encode_right;
end
always_comb begin // combinatorial _rotor_middle_rev_letter_index
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_middle_rev_letter_index = 5'dx;
	if(parse_letter) _rotor_middle_rev_letter_index = _rotor_left_rev_encode_letter;
end
always_comb begin // combinatorial _rotor_right_encode_right
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_right_encode_right = 1'bx;
	_rotor_right_encode_right = 1'b0;
	if(parse_letter) _rotor_right_encode_right = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_rotor_right_encode_right = _rotor_right_encode_right;
end
always_comb begin // combinatorial _rotor_right_rev_letter_index
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rotor_right_rev_letter_index = 5'dx;
	if(parse_letter) _rotor_right_rev_letter_index = _rotor_middle_rev_encode_letter;
end
endmodule

// reflector #()
module reflector(
	input clk,
	input wire reflector,
	input wire[4:0] input_letter,
	output /*mux_wire*/ logic[4:0] output_letter
);

localparam[4:0] reflector_table[25:0] = '{5'd24, 5'd17, 5'd20, 5'd7, 5'd16, 5'd18, 5'd11, 5'd3, 5'd15, 5'd23, 5'd13, 5'd6, 5'd14, 5'd10, 5'd12, 5'd8, 5'd4, 5'd1, 5'd5, 5'd25, 5'd2, 5'd22, 5'd21, 5'd9, 5'd0, 5'd19};
wire[4:0] _2 = reflector_table[input_letter];
always_comb begin // combinatorial output_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	output_letter = 5'dx;
	if(reflector) output_letter = _2;
end
endmodule

// enigma_rotor #(initial_position: 0, ring_position: 0, rotor_number: 3)
module enigma_rotor_initial_position_0_ring_position_0_rotor_number_3(
	input clk,
	input wire reset,
	input wire write_rotor,
	input wire[4:0] write_value,
	input wire advance,
	output /*mux_wire*/ logic advance_signal,
	input wire turnover,
	input wire encode_left,
	input wire[4:0] letter_index,
	output /*mux_wire*/ logic[4:0] encode_letter,
	input wire encode_right,
	input wire[4:0] rev_letter_index,
	output /*mux_wire*/ logic[4:0] rev_encode_letter
);

/*state*/ logic[4:0] rotor_position;
/*mux_wire*/ logic[4:0] sub_array_left[25:0];
/*mux_wire*/ logic[4:0] sub_array_right[25:0];
wire[4:0] _26 = sub_array_left[0];
wire[4:0] _27 = sub_array_left[1];
wire[4:0] _28 = sub_array_left[2];
wire[4:0] _29 = sub_array_left[3];
wire[4:0] _30 = sub_array_left[4];
wire[4:0] _31 = sub_array_left[5];
wire[4:0] _32 = sub_array_left[6];
wire[4:0] _33 = sub_array_left[7];
wire[4:0] _34 = sub_array_left[8];
wire[4:0] _35 = sub_array_left[9];
wire[4:0] _36 = sub_array_left[10];
wire[4:0] _37 = sub_array_left[11];
wire[4:0] _38 = sub_array_left[12];
wire[4:0] _39 = sub_array_left[13];
wire[4:0] _40 = sub_array_left[14];
wire[4:0] _41 = sub_array_left[15];
wire[4:0] _42 = sub_array_left[16];
wire[4:0] _43 = sub_array_left[17];
wire[4:0] _44 = sub_array_left[18];
wire[4:0] _45 = sub_array_left[19];
wire[4:0] _46 = sub_array_left[20];
wire[4:0] _47 = sub_array_left[21];
wire[4:0] _48 = sub_array_left[22];
wire[4:0] _49 = sub_array_left[23];
wire[4:0] _50 = sub_array_left[24];
wire _54;
assign _54 = rotor_position == 5'd21;
wire[4:0] _57;
assign _57 = rotor_position + 1'd1;
wire[4:0] _59;
assign _59 = (_57 == 26) ? 0 : _57; // == mod 26
wire[4:0] _62;
assign _62 = rotor_position + 1'd1;
wire[4:0] _64;
assign _64 = (_62 == 26) ? 0 : _62; // == mod 26
wire[4:0] _67;
assign _67 = rotor_position + 1'd1;
wire[4:0] _69;
assign _69 = (_67 == 26) ? 0 : _67; // == mod 26
wire[5:0] _72;
assign _72 = letter_index + rotor_position;
wire[4:0] _74;
assign _74 = _72 - ((_72 >= 26) ? 26 : 0); // == mod 26
wire[4:0] _75 = sub_array_left[_74];
wire[5:0] _78;
assign _78 = rev_letter_index + rotor_position;
wire[4:0] _80;
assign _80 = _78 - ((_78 >= 26) ? 26 : 0); // == mod 26
wire[4:0] _81 = sub_array_right[_80];
always_ff @(posedge clk) begin // state rotor_position
	rotor_position <= 1'd0;
	if(reset) rotor_position <= 1'd0;
	if(write_rotor) rotor_position <= write_value;
	if(advance) if(_54) rotor_position <= _59;
	if(advance) if(!_54) rotor_position <= _64;
	if(turnover) rotor_position <= _69;
end
always_comb begin // combinatorial sub_array_left
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	sub_array_left = '{5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx};
	sub_array_left[0] = 1'd1;
	sub_array_left[1] = 2'd3;
	sub_array_left[2] = 3'd5;
	sub_array_left[3] = 3'd7;
	sub_array_left[4] = 4'd9;
	sub_array_left[5] = 4'd11;
	sub_array_left[6] = 2'd2;
	sub_array_left[7] = 4'd15;
	sub_array_left[8] = 5'd17;
	sub_array_left[9] = 5'd19;
	sub_array_left[10] = 5'd23;
	sub_array_left[11] = 5'd21;
	sub_array_left[12] = 5'd25;
	sub_array_left[13] = 4'd13;
	sub_array_left[14] = 5'd24;
	sub_array_left[15] = 3'd4;
	sub_array_left[16] = 4'd8;
	sub_array_left[17] = 5'd22;
	sub_array_left[18] = 3'd6;
	sub_array_left[19] = 1'd0;
	sub_array_left[20] = 4'd10;
	sub_array_left[21] = 4'd12;
	sub_array_left[22] = 5'd20;
	sub_array_left[23] = 5'd18;
	sub_array_left[24] = 5'd16;
end
always_comb begin // combinatorial sub_array_right
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	sub_array_right = '{5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx};
	sub_array_right[_26] = 1'd0;
	sub_array_right[_27] = 1'd1;
	sub_array_right[_28] = 2'd2;
	sub_array_right[_29] = 2'd3;
	sub_array_right[_30] = 3'd4;
	sub_array_right[_31] = 3'd5;
	sub_array_right[_32] = 3'd6;
	sub_array_right[_33] = 3'd7;
	sub_array_right[_34] = 4'd8;
	sub_array_right[_35] = 4'd9;
	sub_array_right[_36] = 4'd10;
	sub_array_right[_37] = 4'd11;
	sub_array_right[_38] = 4'd12;
	sub_array_right[_39] = 4'd13;
	sub_array_right[_40] = 4'd14;
	sub_array_right[_41] = 4'd15;
	sub_array_right[_42] = 5'd16;
	sub_array_right[_43] = 5'd17;
	sub_array_right[_44] = 5'd18;
	sub_array_right[_45] = 5'd19;
	sub_array_right[_46] = 5'd20;
	sub_array_right[_47] = 5'd21;
	sub_array_right[_48] = 5'd22;
	sub_array_right[_49] = 5'd23;
	sub_array_right[_50] = 5'd24;
end
always_comb begin // combinatorial advance_signal
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	advance_signal = 1'bx;
	if(advance) if(_54) advance_signal = 1'b1;
	if(advance) if(!_54) advance_signal = 1'b0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	advance_signal = advance_signal;
end
always_comb begin // combinatorial encode_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	encode_letter = 5'dx;
	if(encode_left) encode_letter = _75;
end
always_comb begin // combinatorial rev_encode_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rev_encode_letter = 5'dx;
	if(encode_right) rev_encode_letter = _81;
end
endmodule

// enigma_rotor #(initial_position: 0, ring_position: 0, rotor_number: 2)
module enigma_rotor_initial_position_0_ring_position_0_rotor_number_2(
	input clk,
	input wire reset,
	input wire write_rotor,
	input wire[4:0] write_value,
	input wire advance,
	output /*mux_wire*/ logic advance_signal,
	input wire turnover,
	input wire encode_left,
	input wire[4:0] letter_index,
	output /*mux_wire*/ logic[4:0] encode_letter,
	input wire encode_right,
	input wire[4:0] rev_letter_index,
	output /*mux_wire*/ logic[4:0] rev_encode_letter
);

/*state*/ logic[4:0] rotor_position;
/*mux_wire*/ logic[4:0] sub_array_left[25:0];
/*mux_wire*/ logic[4:0] sub_array_right[25:0];
wire[4:0] _26 = sub_array_left[0];
wire[4:0] _27 = sub_array_left[1];
wire[4:0] _28 = sub_array_left[2];
wire[4:0] _29 = sub_array_left[3];
wire[4:0] _30 = sub_array_left[4];
wire[4:0] _31 = sub_array_left[5];
wire[4:0] _32 = sub_array_left[6];
wire[4:0] _33 = sub_array_left[7];
wire[4:0] _34 = sub_array_left[8];
wire[4:0] _35 = sub_array_left[9];
wire[4:0] _36 = sub_array_left[10];
wire[4:0] _37 = sub_array_left[11];
wire[4:0] _38 = sub_array_left[12];
wire[4:0] _39 = sub_array_left[13];
wire[4:0] _40 = sub_array_left[14];
wire[4:0] _41 = sub_array_left[15];
wire[4:0] _42 = sub_array_left[16];
wire[4:0] _43 = sub_array_left[17];
wire[4:0] _44 = sub_array_left[18];
wire[4:0] _45 = sub_array_left[19];
wire[4:0] _46 = sub_array_left[20];
wire[4:0] _47 = sub_array_left[21];
wire[4:0] _48 = sub_array_left[22];
wire[4:0] _49 = sub_array_left[23];
wire[4:0] _50 = sub_array_left[24];
wire _54;
assign _54 = rotor_position == 3'd4;
wire[4:0] _57;
assign _57 = rotor_position + 1'd1;
wire[4:0] _59;
assign _59 = (_57 == 26) ? 0 : _57; // == mod 26
wire[4:0] _62;
assign _62 = rotor_position + 1'd1;
wire[4:0] _64;
assign _64 = (_62 == 26) ? 0 : _62; // == mod 26
wire[4:0] _67;
assign _67 = rotor_position + 1'd1;
wire[4:0] _69;
assign _69 = (_67 == 26) ? 0 : _67; // == mod 26
wire[5:0] _72;
assign _72 = letter_index + rotor_position;
wire[4:0] _74;
assign _74 = _72 - ((_72 >= 26) ? 26 : 0); // == mod 26
wire[4:0] _75 = sub_array_left[_74];
wire[5:0] _78;
assign _78 = rev_letter_index + rotor_position;
wire[4:0] _80;
assign _80 = _78 - ((_78 >= 26) ? 26 : 0); // == mod 26
wire[4:0] _81 = sub_array_right[_80];
always_ff @(posedge clk) begin // state rotor_position
	rotor_position <= 1'd0;
	if(reset) rotor_position <= 1'd0;
	if(write_rotor) rotor_position <= write_value;
	if(advance) if(_54) rotor_position <= _59;
	if(advance) if(!_54) rotor_position <= _64;
	if(turnover) rotor_position <= _69;
end
always_comb begin // combinatorial sub_array_left
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	sub_array_left = '{5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx};
	sub_array_left[0] = 1'd0;
	sub_array_left[1] = 4'd9;
	sub_array_left[2] = 2'd3;
	sub_array_left[3] = 4'd10;
	sub_array_left[4] = 5'd18;
	sub_array_left[5] = 4'd8;
	sub_array_left[6] = 5'd17;
	sub_array_left[7] = 5'd20;
	sub_array_left[8] = 5'd23;
	sub_array_left[9] = 1'd1;
	sub_array_left[10] = 4'd11;
	sub_array_left[11] = 3'd7;
	sub_array_left[12] = 5'd22;
	sub_array_left[13] = 5'd19;
	sub_array_left[14] = 4'd12;
	sub_array_left[15] = 2'd2;
	sub_array_left[16] = 5'd16;
	sub_array_left[17] = 3'd6;
	sub_array_left[18] = 5'd25;
	sub_array_left[19] = 4'd13;
	sub_array_left[20] = 4'd15;
	sub_array_left[21] = 5'd24;
	sub_array_left[22] = 3'd5;
	sub_array_left[23] = 5'd21;
	sub_array_left[24] = 4'd14;
end
always_comb begin // combinatorial sub_array_right
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	sub_array_right = '{5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx};
	sub_array_right[_26] = 1'd0;
	sub_array_right[_27] = 1'd1;
	sub_array_right[_28] = 2'd2;
	sub_array_right[_29] = 2'd3;
	sub_array_right[_30] = 3'd4;
	sub_array_right[_31] = 3'd5;
	sub_array_right[_32] = 3'd6;
	sub_array_right[_33] = 3'd7;
	sub_array_right[_34] = 4'd8;
	sub_array_right[_35] = 4'd9;
	sub_array_right[_36] = 4'd10;
	sub_array_right[_37] = 4'd11;
	sub_array_right[_38] = 4'd12;
	sub_array_right[_39] = 4'd13;
	sub_array_right[_40] = 4'd14;
	sub_array_right[_41] = 4'd15;
	sub_array_right[_42] = 5'd16;
	sub_array_right[_43] = 5'd17;
	sub_array_right[_44] = 5'd18;
	sub_array_right[_45] = 5'd19;
	sub_array_right[_46] = 5'd20;
	sub_array_right[_47] = 5'd21;
	sub_array_right[_48] = 5'd22;
	sub_array_right[_49] = 5'd23;
	sub_array_right[_50] = 5'd24;
end
always_comb begin // combinatorial advance_signal
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	advance_signal = 1'bx;
	if(advance) if(_54) advance_signal = 1'b1;
	if(advance) if(!_54) advance_signal = 1'b0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	advance_signal = advance_signal;
end
always_comb begin // combinatorial encode_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	encode_letter = 5'dx;
	if(encode_left) encode_letter = _75;
end
always_comb begin // combinatorial rev_encode_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rev_encode_letter = 5'dx;
	if(encode_right) rev_encode_letter = _81;
end
endmodule

// enigma_rotor #(initial_position: 0, ring_position: 0, rotor_number: 1)
module enigma_rotor_initial_position_0_ring_position_0_rotor_number_1(
	input clk,
	input wire reset,
	input wire write_rotor,
	input wire[4:0] write_value,
	input wire advance,
	output /*mux_wire*/ logic advance_signal,
	input wire turnover,
	input wire encode_left,
	input wire[4:0] letter_index,
	output /*mux_wire*/ logic[4:0] encode_letter,
	input wire encode_right,
	input wire[4:0] rev_letter_index,
	output /*mux_wire*/ logic[4:0] rev_encode_letter
);

/*state*/ logic[4:0] rotor_position;
/*mux_wire*/ logic[4:0] sub_array_left[25:0];
/*mux_wire*/ logic[4:0] sub_array_right[25:0];
wire[4:0] _26 = sub_array_left[0];
wire[4:0] _27 = sub_array_left[1];
wire[4:0] _28 = sub_array_left[2];
wire[4:0] _29 = sub_array_left[3];
wire[4:0] _30 = sub_array_left[4];
wire[4:0] _31 = sub_array_left[5];
wire[4:0] _32 = sub_array_left[6];
wire[4:0] _33 = sub_array_left[7];
wire[4:0] _34 = sub_array_left[8];
wire[4:0] _35 = sub_array_left[9];
wire[4:0] _36 = sub_array_left[10];
wire[4:0] _37 = sub_array_left[11];
wire[4:0] _38 = sub_array_left[12];
wire[4:0] _39 = sub_array_left[13];
wire[4:0] _40 = sub_array_left[14];
wire[4:0] _41 = sub_array_left[15];
wire[4:0] _42 = sub_array_left[16];
wire[4:0] _43 = sub_array_left[17];
wire[4:0] _44 = sub_array_left[18];
wire[4:0] _45 = sub_array_left[19];
wire[4:0] _46 = sub_array_left[20];
wire[4:0] _47 = sub_array_left[21];
wire[4:0] _48 = sub_array_left[22];
wire[4:0] _49 = sub_array_left[23];
wire[4:0] _50 = sub_array_left[24];
wire _54;
assign _54 = rotor_position == 5'd16;
wire[4:0] _57;
assign _57 = rotor_position + 1'd1;
wire[4:0] _59;
assign _59 = (_57 == 26) ? 0 : _57; // == mod 26
wire[4:0] _62;
assign _62 = rotor_position + 1'd1;
wire[4:0] _64;
assign _64 = (_62 == 26) ? 0 : _62; // == mod 26
wire[4:0] _67;
assign _67 = rotor_position + 1'd1;
wire[4:0] _69;
assign _69 = (_67 == 26) ? 0 : _67; // == mod 26
wire[5:0] _72;
assign _72 = letter_index + rotor_position;
wire[4:0] _74;
assign _74 = _72 - ((_72 >= 26) ? 26 : 0); // == mod 26
wire[4:0] _75 = sub_array_left[_74];
wire[5:0] _78;
assign _78 = rev_letter_index + rotor_position;
wire[4:0] _80;
assign _80 = _78 - ((_78 >= 26) ? 26 : 0); // == mod 26
wire[4:0] _81 = sub_array_right[_80];
always_ff @(posedge clk) begin // state rotor_position
	rotor_position <= 1'd0;
	if(reset) rotor_position <= 1'd0;
	if(write_rotor) rotor_position <= write_value;
	if(advance) if(_54) rotor_position <= _59;
	if(advance) if(!_54) rotor_position <= _64;
	if(turnover) rotor_position <= _69;
end
always_comb begin // combinatorial sub_array_left
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	sub_array_left = '{5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx};
	sub_array_left[0] = 3'd4;
	sub_array_left[1] = 4'd10;
	sub_array_left[2] = 4'd12;
	sub_array_left[3] = 3'd5;
	sub_array_left[4] = 4'd11;
	sub_array_left[5] = 3'd6;
	sub_array_left[6] = 2'd3;
	sub_array_left[7] = 5'd16;
	sub_array_left[8] = 5'd21;
	sub_array_left[9] = 5'd25;
	sub_array_left[10] = 4'd13;
	sub_array_left[11] = 5'd19;
	sub_array_left[12] = 4'd14;
	sub_array_left[13] = 5'd22;
	sub_array_left[14] = 5'd24;
	sub_array_left[15] = 3'd7;
	sub_array_left[16] = 5'd23;
	sub_array_left[17] = 5'd20;
	sub_array_left[18] = 5'd18;
	sub_array_left[19] = 4'd15;
	sub_array_left[20] = 1'd0;
	sub_array_left[21] = 4'd8;
	sub_array_left[22] = 1'd1;
	sub_array_left[23] = 5'd17;
	sub_array_left[24] = 2'd2;
end
always_comb begin // combinatorial sub_array_right
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	sub_array_right = '{5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx};
	sub_array_right[_26] = 1'd0;
	sub_array_right[_27] = 1'd1;
	sub_array_right[_28] = 2'd2;
	sub_array_right[_29] = 2'd3;
	sub_array_right[_30] = 3'd4;
	sub_array_right[_31] = 3'd5;
	sub_array_right[_32] = 3'd6;
	sub_array_right[_33] = 3'd7;
	sub_array_right[_34] = 4'd8;
	sub_array_right[_35] = 4'd9;
	sub_array_right[_36] = 4'd10;
	sub_array_right[_37] = 4'd11;
	sub_array_right[_38] = 4'd12;
	sub_array_right[_39] = 4'd13;
	sub_array_right[_40] = 4'd14;
	sub_array_right[_41] = 4'd15;
	sub_array_right[_42] = 5'd16;
	sub_array_right[_43] = 5'd17;
	sub_array_right[_44] = 5'd18;
	sub_array_right[_45] = 5'd19;
	sub_array_right[_46] = 5'd20;
	sub_array_right[_47] = 5'd21;
	sub_array_right[_48] = 5'd22;
	sub_array_right[_49] = 5'd23;
	sub_array_right[_50] = 5'd24;
end
always_comb begin // combinatorial advance_signal
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	advance_signal = 1'bx;
	if(advance) if(_54) advance_signal = 1'b1;
	if(advance) if(!_54) advance_signal = 1'b0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	advance_signal = advance_signal;
end
always_comb begin // combinatorial encode_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	encode_letter = 5'dx;
	if(encode_left) encode_letter = _75;
end
always_comb begin // combinatorial rev_encode_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rev_encode_letter = 5'dx;
	if(encode_right) rev_encode_letter = _81;
end
endmodule

// plugboard #(plugboard_config: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25])
module plugboard_plugboard_config_0_1_2_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25(
	input clk,
	input wire pass_letter,
	input wire[4:0] input_letter,
	output /*mux_wire*/ logic[4:0] output_letter
);

/*mux_wire*/ logic[4:0] plugboard_settings[25:0];
wire[4:0] _2 = plugboard_settings[input_letter];
always_comb begin // combinatorial plugboard_settings
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	plugboard_settings = '{5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx};
	plugboard_settings[0] = 1'd0;
	plugboard_settings[1] = 1'd1;
	plugboard_settings[2] = 2'd2;
	plugboard_settings[3] = 2'd3;
	plugboard_settings[4] = 3'd4;
	plugboard_settings[5] = 3'd5;
	plugboard_settings[6] = 3'd6;
	plugboard_settings[7] = 3'd7;
	plugboard_settings[8] = 4'd8;
	plugboard_settings[9] = 4'd9;
	plugboard_settings[10] = 4'd10;
	plugboard_settings[11] = 4'd11;
	plugboard_settings[12] = 4'd12;
	plugboard_settings[13] = 4'd13;
	plugboard_settings[14] = 4'd14;
	plugboard_settings[15] = 4'd15;
	plugboard_settings[16] = 5'd16;
	plugboard_settings[17] = 5'd17;
	plugboard_settings[18] = 5'd18;
	plugboard_settings[19] = 5'd19;
	plugboard_settings[20] = 5'd20;
	plugboard_settings[21] = 5'd21;
	plugboard_settings[22] = 5'd22;
	plugboard_settings[23] = 5'd23;
	plugboard_settings[24] = 5'd24;
end
always_comb begin // combinatorial output_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	output_letter = 5'dx;
	if(pass_letter) output_letter = _2;
end
endmodule

