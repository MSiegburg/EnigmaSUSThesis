// THIS IS A GENERATED FILE (Generated at 2026-07-07T21:12:18+02:00)
// This file was generated with SUS Compiler 0.4.0
// enigma_machine_runtime #()
module enigma_machine_runtime(
	/* clock */ input clk,
	input wire setup,
	input wire[2:0] rotor_setup[0:2],
	input wire[4:0] rotor_positions[0:2],
	input wire[4:0] ring_positions[0:2],
	input wire change_plugs,
	input wire[4:0] plug,
	input wire[4:0] value,
	input wire prep_message_encode,
	input wire parse_letter,
	input wire[4:0] input_letter,
	output /*mux_wire*/ logic[4:0] encode_letter_final,
	input wire cur_settings,
	output /*mux_wire*/ logic[2:0] cur_rotors[0:2]
);

/*state*/ logic[2:0] left_rotor_used;
/*state*/ logic[2:0] middle_rotor_used;
/*state*/ logic[2:0] right_rotor_used;
/*mux_wire*/ logic right_rotor_advance;
/*mux_wire*/ logic middle_rotor_advance;
/*mux_wire*/ logic left_rotor_advance;
/*state*/ logic doublestepping;
/*mux_wire*/ logic[4:0] plugboard1;
/*mux_wire*/ logic[4:0] rrotor1;
/*mux_wire*/ logic[4:0] mrotor1;
/*mux_wire*/ logic[4:0] lrotor1;
/*mux_wire*/ logic[4:0] reflectout;
/*mux_wire*/ logic[4:0] lrotor2;
/*mux_wire*/ logic[4:0] mrotor2;
/*mux_wire*/ logic[4:0] rrotor2;
/*mux_wire*/ logic[4:0] plugboard2;
wire[2:0] _1 = rotor_setup[0];
wire[2:0] _2 = rotor_setup[1];
wire[2:0] _3 = rotor_setup[2];
wire[2:0] _4 = rotor_setup[0];
wire[4:0] _5 = rotor_positions[0];
wire[4:0] _6 = ring_positions[0];
/*mux_wire*/ logic _right_rotor_inst_setup;
/*mux_wire*/ logic[2:0] _right_rotor_inst_rotor_to_use;
/*mux_wire*/ logic[4:0] _right_rotor_inst_rotor_starting_position;
/*mux_wire*/ logic[4:0] _right_rotor_inst_ring_position_in_use;
wire[2:0] _9 = rotor_setup[1];
wire[4:0] _10 = rotor_positions[1];
wire[4:0] _11 = ring_positions[1];
/*mux_wire*/ logic _middle_rotor_inst_setup;
/*mux_wire*/ logic[2:0] _middle_rotor_inst_rotor_to_use;
/*mux_wire*/ logic[4:0] _middle_rotor_inst_rotor_starting_position;
/*mux_wire*/ logic[4:0] _middle_rotor_inst_ring_position_in_use;
wire[2:0] _14 = rotor_setup[2];
wire[4:0] _15 = rotor_positions[2];
wire[4:0] _16 = ring_positions[2];
/*mux_wire*/ logic _left_rotor_inst_setup;
/*mux_wire*/ logic[2:0] _left_rotor_inst_rotor_to_use;
/*mux_wire*/ logic[4:0] _left_rotor_inst_rotor_starting_position;
/*mux_wire*/ logic[4:0] _left_rotor_inst_ring_position_in_use;
/*mux_wire*/ logic _plugboard_inst_set_plug;
/*mux_wire*/ logic[4:0] _plugboard_inst_plug;
/*mux_wire*/ logic[4:0] _plugboard_inst_value;
/*mux_wire*/ logic _right_rotor_inst_turnover;
/*mux_wire*/ logic _right_rotor_inst_advance;
wire _right_rotor_inst_advance_signal;
/*mux_wire*/ logic _middle_rotor_inst_turnover;
/*mux_wire*/ logic _middle_rotor_inst_testDoublestep;
wire _middle_rotor_inst_doublestep;
/*mux_wire*/ logic _left_rotor_inst_turnover;
/*mux_wire*/ logic _left_rotor_inst_advance;
wire _left_rotor_inst_advance_signal;
/*mux_wire*/ logic _plugboard_inst_pass_letter_forward;
/*mux_wire*/ logic[4:0] _plugboard_inst_input_letter1;
wire[4:0] _plugboard_inst_output_letter1;
/*mux_wire*/ logic _right_rotor_inst_encode_left;
/*mux_wire*/ logic[4:0] _right_rotor_inst_letter_index;
wire[4:0] _right_rotor_inst_encode_letter;
/*mux_wire*/ logic _middle_rotor_inst_encode_left;
/*mux_wire*/ logic[4:0] _middle_rotor_inst_letter_index;
wire[4:0] _middle_rotor_inst_encode_letter;
/*mux_wire*/ logic _left_rotor_inst_encode_left;
/*mux_wire*/ logic[4:0] _left_rotor_inst_letter_index;
wire[4:0] _left_rotor_inst_encode_letter;
/*mux_wire*/ logic _reflector_inst_reflector;
/*mux_wire*/ logic[4:0] _reflector_inst_input_letter;
wire[4:0] _reflector_inst_output_letter;
/*mux_wire*/ logic _left_rotor_inst_encode_right;
/*mux_wire*/ logic[4:0] _left_rotor_inst_rev_letter_index;
wire[4:0] _left_rotor_inst_rev_encode_letter;
/*mux_wire*/ logic _middle_rotor_inst_encode_right;
/*mux_wire*/ logic[4:0] _middle_rotor_inst_rev_letter_index;
wire[4:0] _middle_rotor_inst_rev_encode_letter;
/*mux_wire*/ logic _right_rotor_inst_encode_right;
/*mux_wire*/ logic[4:0] _right_rotor_inst_rev_letter_index;
wire[4:0] _right_rotor_inst_rev_encode_letter;
/*mux_wire*/ logic _plugboard_inst_pass_letter_backward;
/*mux_wire*/ logic[4:0] _plugboard_inst_input_letter2;
wire[4:0] _plugboard_inst_output_letter2;
enigma_rotor_runtime right_rotor_inst(
	.clk(clk),
	.turnover(_right_rotor_inst_turnover),
	.testDoublestep(),
	.doublestep(),
	.setup(_right_rotor_inst_setup),
	.rotor_to_use(_right_rotor_inst_rotor_to_use),
	.rotor_starting_position(_right_rotor_inst_rotor_starting_position),
	.ring_position_in_use(_right_rotor_inst_ring_position_in_use),
	.advance(_right_rotor_inst_advance),
	.advance_signal(_right_rotor_inst_advance_signal),
	.encode_left(_right_rotor_inst_encode_left),
	.letter_index(_right_rotor_inst_letter_index),
	.encode_letter(_right_rotor_inst_encode_letter),
	.encode_right(_right_rotor_inst_encode_right),
	.rev_letter_index(_right_rotor_inst_rev_letter_index),
	.rev_encode_letter(_right_rotor_inst_rev_encode_letter)
);
enigma_rotor_runtime middle_rotor_inst(
	.clk(clk),
	.turnover(_middle_rotor_inst_turnover),
	.testDoublestep(_middle_rotor_inst_testDoublestep),
	.doublestep(_middle_rotor_inst_doublestep),
	.setup(_middle_rotor_inst_setup),
	.rotor_to_use(_middle_rotor_inst_rotor_to_use),
	.rotor_starting_position(_middle_rotor_inst_rotor_starting_position),
	.ring_position_in_use(_middle_rotor_inst_ring_position_in_use),
	.advance(),
	.advance_signal(),
	.encode_left(_middle_rotor_inst_encode_left),
	.letter_index(_middle_rotor_inst_letter_index),
	.encode_letter(_middle_rotor_inst_encode_letter),
	.encode_right(_middle_rotor_inst_encode_right),
	.rev_letter_index(_middle_rotor_inst_rev_letter_index),
	.rev_encode_letter(_middle_rotor_inst_rev_encode_letter)
);
enigma_rotor_runtime left_rotor_inst(
	.clk(clk),
	.turnover(_left_rotor_inst_turnover),
	.testDoublestep(),
	.doublestep(),
	.setup(_left_rotor_inst_setup),
	.rotor_to_use(_left_rotor_inst_rotor_to_use),
	.rotor_starting_position(_left_rotor_inst_rotor_starting_position),
	.ring_position_in_use(_left_rotor_inst_ring_position_in_use),
	.advance(_left_rotor_inst_advance),
	.advance_signal(_left_rotor_inst_advance_signal),
	.encode_left(_left_rotor_inst_encode_left),
	.letter_index(_left_rotor_inst_letter_index),
	.encode_letter(_left_rotor_inst_encode_letter),
	.encode_right(_left_rotor_inst_encode_right),
	.rev_letter_index(_left_rotor_inst_rev_letter_index),
	.rev_encode_letter(_left_rotor_inst_rev_encode_letter)
);
reflector reflector_inst(
	.clk(clk),
	.reflector(_reflector_inst_reflector),
	.input_letter(_reflector_inst_input_letter),
	.output_letter(_reflector_inst_output_letter)
);
plugboard_plugboard_config_0_1_2_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25 plugboard_inst(
	.clk(clk),
	.set_plug(_plugboard_inst_set_plug),
	.plug(_plugboard_inst_plug),
	.value(_plugboard_inst_value),
	.pass_letter_forward(_plugboard_inst_pass_letter_forward),
	.input_letter1(_plugboard_inst_input_letter1),
	.output_letter1(_plugboard_inst_output_letter1),
	.pass_letter_backward(_plugboard_inst_pass_letter_backward),
	.input_letter2(_plugboard_inst_input_letter2),
	.output_letter2(_plugboard_inst_output_letter2)
);
always_ff @(posedge clk) begin // state left_rotor_used
	if(setup) left_rotor_used <= _3;
end
always_ff @(posedge clk) begin // state middle_rotor_used
	if(setup) middle_rotor_used <= _2;
end
always_ff @(posedge clk) begin // state right_rotor_used
	if(setup) right_rotor_used <= _1;
end
always_comb begin // combinatorial right_rotor_advance
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	right_rotor_advance = 1'bx;
	if(prep_message_encode) right_rotor_advance = _right_rotor_inst_advance_signal;
	if(parse_letter) right_rotor_advance = _right_rotor_inst_advance_signal;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	right_rotor_advance = right_rotor_advance;
end
always_comb begin // combinatorial middle_rotor_advance
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	middle_rotor_advance = 1'bx;
	if(prep_message_encode) middle_rotor_advance = _middle_rotor_inst_doublestep;
	if(parse_letter) middle_rotor_advance = _middle_rotor_inst_doublestep;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	middle_rotor_advance = middle_rotor_advance;
end
always_comb begin // combinatorial left_rotor_advance
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	left_rotor_advance = 1'bx;
	if(prep_message_encode) if(middle_rotor_advance) left_rotor_advance = _left_rotor_inst_advance_signal;
	if(parse_letter) if(middle_rotor_advance) left_rotor_advance = _left_rotor_inst_advance_signal;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	left_rotor_advance = left_rotor_advance;
end
always_ff @(posedge clk) begin // state doublestepping
	if(prep_message_encode) if(middle_rotor_advance) doublestepping <= 1'b1;
	if(prep_message_encode) if(doublestepping) doublestepping <= 1'b0;
	if(parse_letter) if(middle_rotor_advance) doublestepping <= 1'b1;
	if(parse_letter) if(doublestepping) doublestepping <= 1'b0;
end
always_comb begin // combinatorial plugboard1
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	plugboard1 = 5'dx;
	if(parse_letter) plugboard1 = _plugboard_inst_output_letter1;
end
always_comb begin // combinatorial rrotor1
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rrotor1 = 5'dx;
	if(parse_letter) rrotor1 = _right_rotor_inst_encode_letter;
end
always_comb begin // combinatorial mrotor1
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mrotor1 = 5'dx;
	if(parse_letter) mrotor1 = _middle_rotor_inst_encode_letter;
end
always_comb begin // combinatorial lrotor1
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	lrotor1 = 5'dx;
	if(parse_letter) lrotor1 = _left_rotor_inst_encode_letter;
end
always_comb begin // combinatorial reflectout
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	reflectout = 5'dx;
	if(parse_letter) reflectout = _reflector_inst_output_letter;
end
always_comb begin // combinatorial lrotor2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	lrotor2 = 5'dx;
	if(parse_letter) lrotor2 = _left_rotor_inst_rev_encode_letter;
end
always_comb begin // combinatorial mrotor2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mrotor2 = 5'dx;
	if(parse_letter) mrotor2 = _middle_rotor_inst_rev_encode_letter;
end
always_comb begin // combinatorial rrotor2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rrotor2 = 5'dx;
	if(parse_letter) rrotor2 = _right_rotor_inst_rev_encode_letter;
end
always_comb begin // combinatorial plugboard2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	plugboard2 = 5'dx;
	if(parse_letter) plugboard2 = _plugboard_inst_output_letter2;
end
always_comb begin // combinatorial _right_rotor_inst_setup
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_right_rotor_inst_setup = 1'bx;
	_right_rotor_inst_setup = 1'b0;
	if(setup) _right_rotor_inst_setup = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_right_rotor_inst_setup = _right_rotor_inst_setup;
end
always_comb begin // combinatorial _right_rotor_inst_rotor_to_use
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_right_rotor_inst_rotor_to_use = 3'dx;
	if(setup) _right_rotor_inst_rotor_to_use = _4;
end
always_comb begin // combinatorial _right_rotor_inst_rotor_starting_position
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_right_rotor_inst_rotor_starting_position = 5'dx;
	if(setup) _right_rotor_inst_rotor_starting_position = _5;
end
always_comb begin // combinatorial _right_rotor_inst_ring_position_in_use
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_right_rotor_inst_ring_position_in_use = 5'dx;
	if(setup) _right_rotor_inst_ring_position_in_use = _6;
end
always_comb begin // combinatorial _middle_rotor_inst_setup
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_middle_rotor_inst_setup = 1'bx;
	_middle_rotor_inst_setup = 1'b0;
	if(setup) _middle_rotor_inst_setup = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_middle_rotor_inst_setup = _middle_rotor_inst_setup;
end
always_comb begin // combinatorial _middle_rotor_inst_rotor_to_use
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_middle_rotor_inst_rotor_to_use = 3'dx;
	if(setup) _middle_rotor_inst_rotor_to_use = _9;
end
always_comb begin // combinatorial _middle_rotor_inst_rotor_starting_position
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_middle_rotor_inst_rotor_starting_position = 5'dx;
	if(setup) _middle_rotor_inst_rotor_starting_position = _10;
end
always_comb begin // combinatorial _middle_rotor_inst_ring_position_in_use
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_middle_rotor_inst_ring_position_in_use = 5'dx;
	if(setup) _middle_rotor_inst_ring_position_in_use = _11;
end
always_comb begin // combinatorial _left_rotor_inst_setup
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_left_rotor_inst_setup = 1'bx;
	_left_rotor_inst_setup = 1'b0;
	if(setup) _left_rotor_inst_setup = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_left_rotor_inst_setup = _left_rotor_inst_setup;
end
always_comb begin // combinatorial _left_rotor_inst_rotor_to_use
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_left_rotor_inst_rotor_to_use = 3'dx;
	if(setup) _left_rotor_inst_rotor_to_use = _14;
end
always_comb begin // combinatorial _left_rotor_inst_rotor_starting_position
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_left_rotor_inst_rotor_starting_position = 5'dx;
	if(setup) _left_rotor_inst_rotor_starting_position = _15;
end
always_comb begin // combinatorial _left_rotor_inst_ring_position_in_use
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_left_rotor_inst_ring_position_in_use = 5'dx;
	if(setup) _left_rotor_inst_ring_position_in_use = _16;
end
always_comb begin // combinatorial _plugboard_inst_set_plug
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_plugboard_inst_set_plug = 1'bx;
	_plugboard_inst_set_plug = 1'b0;
	if(change_plugs) _plugboard_inst_set_plug = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_plugboard_inst_set_plug = _plugboard_inst_set_plug;
end
always_comb begin // combinatorial _plugboard_inst_plug
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_plugboard_inst_plug = 5'dx;
	if(change_plugs) _plugboard_inst_plug = plug;
end
always_comb begin // combinatorial _plugboard_inst_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_plugboard_inst_value = 5'dx;
	if(change_plugs) _plugboard_inst_value = value;
end
always_comb begin // combinatorial _right_rotor_inst_turnover
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_right_rotor_inst_turnover = 1'bx;
	_right_rotor_inst_turnover = 1'b0;
	if(prep_message_encode) _right_rotor_inst_turnover = 1'b1;
	if(parse_letter) _right_rotor_inst_turnover = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_right_rotor_inst_turnover = _right_rotor_inst_turnover;
end
always_comb begin // combinatorial _right_rotor_inst_advance
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_right_rotor_inst_advance = 1'bx;
	_right_rotor_inst_advance = 1'b0;
	if(prep_message_encode) _right_rotor_inst_advance = 1'b1;
	if(parse_letter) _right_rotor_inst_advance = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_right_rotor_inst_advance = _right_rotor_inst_advance;
end
always_comb begin // combinatorial _middle_rotor_inst_turnover
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_middle_rotor_inst_turnover = 1'bx;
	_middle_rotor_inst_turnover = 1'b0;
	if(prep_message_encode) if(right_rotor_advance) _middle_rotor_inst_turnover = 1'b1;
	if(prep_message_encode) if(doublestepping) _middle_rotor_inst_turnover = 1'b1;
	if(parse_letter) if(right_rotor_advance) _middle_rotor_inst_turnover = 1'b1;
	if(parse_letter) if(doublestepping) _middle_rotor_inst_turnover = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_middle_rotor_inst_turnover = _middle_rotor_inst_turnover;
end
always_comb begin // combinatorial _middle_rotor_inst_testDoublestep
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_middle_rotor_inst_testDoublestep = 1'bx;
	_middle_rotor_inst_testDoublestep = 1'b0;
	if(prep_message_encode) _middle_rotor_inst_testDoublestep = 1'b1;
	if(parse_letter) _middle_rotor_inst_testDoublestep = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_middle_rotor_inst_testDoublestep = _middle_rotor_inst_testDoublestep;
end
always_comb begin // combinatorial _left_rotor_inst_turnover
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_left_rotor_inst_turnover = 1'bx;
	_left_rotor_inst_turnover = 1'b0;
	if(prep_message_encode) if(middle_rotor_advance) _left_rotor_inst_turnover = 1'b1;
	if(parse_letter) if(middle_rotor_advance) _left_rotor_inst_turnover = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_left_rotor_inst_turnover = _left_rotor_inst_turnover;
end
always_comb begin // combinatorial _left_rotor_inst_advance
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_left_rotor_inst_advance = 1'bx;
	_left_rotor_inst_advance = 1'b0;
	if(prep_message_encode) if(middle_rotor_advance) _left_rotor_inst_advance = 1'b1;
	if(parse_letter) if(middle_rotor_advance) _left_rotor_inst_advance = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_left_rotor_inst_advance = _left_rotor_inst_advance;
end
always_comb begin // combinatorial encode_letter_final
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	encode_letter_final = 5'dx;
	if(parse_letter) encode_letter_final = plugboard2;
end
always_comb begin // combinatorial _plugboard_inst_pass_letter_forward
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_plugboard_inst_pass_letter_forward = 1'bx;
	_plugboard_inst_pass_letter_forward = 1'b0;
	if(parse_letter) _plugboard_inst_pass_letter_forward = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_plugboard_inst_pass_letter_forward = _plugboard_inst_pass_letter_forward;
end
always_comb begin // combinatorial _plugboard_inst_input_letter1
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_plugboard_inst_input_letter1 = 5'dx;
	if(parse_letter) _plugboard_inst_input_letter1 = input_letter;
end
always_comb begin // combinatorial _right_rotor_inst_encode_left
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_right_rotor_inst_encode_left = 1'bx;
	_right_rotor_inst_encode_left = 1'b0;
	if(parse_letter) _right_rotor_inst_encode_left = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_right_rotor_inst_encode_left = _right_rotor_inst_encode_left;
end
always_comb begin // combinatorial _right_rotor_inst_letter_index
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_right_rotor_inst_letter_index = 5'dx;
	if(parse_letter) _right_rotor_inst_letter_index = plugboard1;
end
always_comb begin // combinatorial _middle_rotor_inst_encode_left
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_middle_rotor_inst_encode_left = 1'bx;
	_middle_rotor_inst_encode_left = 1'b0;
	if(parse_letter) _middle_rotor_inst_encode_left = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_middle_rotor_inst_encode_left = _middle_rotor_inst_encode_left;
end
always_comb begin // combinatorial _middle_rotor_inst_letter_index
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_middle_rotor_inst_letter_index = 5'dx;
	if(parse_letter) _middle_rotor_inst_letter_index = rrotor1;
end
always_comb begin // combinatorial _left_rotor_inst_encode_left
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_left_rotor_inst_encode_left = 1'bx;
	_left_rotor_inst_encode_left = 1'b0;
	if(parse_letter) _left_rotor_inst_encode_left = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_left_rotor_inst_encode_left = _left_rotor_inst_encode_left;
end
always_comb begin // combinatorial _left_rotor_inst_letter_index
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_left_rotor_inst_letter_index = 5'dx;
	if(parse_letter) _left_rotor_inst_letter_index = mrotor1;
end
always_comb begin // combinatorial _reflector_inst_reflector
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_reflector_inst_reflector = 1'bx;
	_reflector_inst_reflector = 1'b0;
	if(parse_letter) _reflector_inst_reflector = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_reflector_inst_reflector = _reflector_inst_reflector;
end
always_comb begin // combinatorial _reflector_inst_input_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_reflector_inst_input_letter = 5'dx;
	if(parse_letter) _reflector_inst_input_letter = lrotor1;
end
always_comb begin // combinatorial _left_rotor_inst_encode_right
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_left_rotor_inst_encode_right = 1'bx;
	_left_rotor_inst_encode_right = 1'b0;
	if(parse_letter) _left_rotor_inst_encode_right = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_left_rotor_inst_encode_right = _left_rotor_inst_encode_right;
end
always_comb begin // combinatorial _left_rotor_inst_rev_letter_index
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_left_rotor_inst_rev_letter_index = 5'dx;
	if(parse_letter) _left_rotor_inst_rev_letter_index = reflectout;
end
always_comb begin // combinatorial _middle_rotor_inst_encode_right
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_middle_rotor_inst_encode_right = 1'bx;
	_middle_rotor_inst_encode_right = 1'b0;
	if(parse_letter) _middle_rotor_inst_encode_right = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_middle_rotor_inst_encode_right = _middle_rotor_inst_encode_right;
end
always_comb begin // combinatorial _middle_rotor_inst_rev_letter_index
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_middle_rotor_inst_rev_letter_index = 5'dx;
	if(parse_letter) _middle_rotor_inst_rev_letter_index = lrotor2;
end
always_comb begin // combinatorial _right_rotor_inst_encode_right
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_right_rotor_inst_encode_right = 1'bx;
	_right_rotor_inst_encode_right = 1'b0;
	if(parse_letter) _right_rotor_inst_encode_right = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_right_rotor_inst_encode_right = _right_rotor_inst_encode_right;
end
always_comb begin // combinatorial _right_rotor_inst_rev_letter_index
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_right_rotor_inst_rev_letter_index = 5'dx;
	if(parse_letter) _right_rotor_inst_rev_letter_index = mrotor2;
end
always_comb begin // combinatorial _plugboard_inst_pass_letter_backward
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_plugboard_inst_pass_letter_backward = 1'bx;
	_plugboard_inst_pass_letter_backward = 1'b0;
	if(parse_letter) _plugboard_inst_pass_letter_backward = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_plugboard_inst_pass_letter_backward = _plugboard_inst_pass_letter_backward;
end
always_comb begin // combinatorial _plugboard_inst_input_letter2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_plugboard_inst_input_letter2 = 5'dx;
	if(parse_letter) _plugboard_inst_input_letter2 = rrotor2;
end
always_comb begin // combinatorial cur_rotors
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	cur_rotors = '{3'dx, 3'dx, 3'dx};
	if(cur_settings) cur_rotors[0] = right_rotor_used;
	if(cur_settings) cur_rotors[1] = middle_rotor_used;
	if(cur_settings) cur_rotors[2] = left_rotor_used;
end
endmodule // enigma_machine_runtime #()

// plugboard #(plugboard_config: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25])
module plugboard_plugboard_config_0_1_2_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25(
	/* clock */ input clk,
	input wire set_plug,
	input wire[4:0] plug,
	input wire[4:0] value,
	input wire pass_letter_forward,
	input wire[4:0] input_letter1,
	output /*mux_wire*/ logic[4:0] output_letter1,
	input wire pass_letter_backward,
	input wire[4:0] input_letter2,
	output /*mux_wire*/ logic[4:0] output_letter2
);

/*mux_wire*/ logic[4:0] plugboard_settings[0:25];
wire[4:0] _4 = plugboard_settings[input_letter1];
wire[4:0] _6 = plugboard_settings[input_letter2];
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
	plugboard_settings[25] = 5'd25;
	if(set_plug) plugboard_settings[plug] = value;
end
always_comb begin // combinatorial output_letter1
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	output_letter1 = 5'dx;
	if(pass_letter_forward) output_letter1 = _4;
end
always_comb begin // combinatorial output_letter2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	output_letter2 = 5'dx;
	if(pass_letter_backward) output_letter2 = _6;
end
endmodule // plugboard #(plugboard_config: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25])

// reflector #()
module reflector(
	/* clock */ input clk,
	input wire reflector,
	input wire[4:0] input_letter,
	output /*mux_wire*/ logic[4:0] output_letter
);

localparam[4:0] reflector_table[0:25] = '{5'd24, 5'd17, 5'd20, 5'd7, 5'd16, 5'd18, 5'd11, 5'd3, 5'd15, 5'd23, 5'd13, 5'd6, 5'd14, 5'd10, 5'd12, 5'd8, 5'd4, 5'd1, 5'd5, 5'd25, 5'd2, 5'd22, 5'd21, 5'd9, 5'd0, 5'd19};
wire[4:0] _2 = reflector_table[input_letter];
always_comb begin // combinatorial output_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	output_letter = 5'dx;
	if(reflector) output_letter = _2;
end
endmodule // reflector #()

// enigma_rotor_runtime #()
module enigma_rotor_runtime(
	/* clock */ input clk,
	input wire turnover,
	input wire testDoublestep,
	output /*mux_wire*/ logic doublestep,
	input wire setup,
	input wire[2:0] rotor_to_use,
	input wire[4:0] rotor_starting_position,
	input wire[4:0] ring_position_in_use,
	input wire advance,
	output /*mux_wire*/ logic advance_signal,
	input wire encode_left,
	input wire[4:0] letter_index,
	output /*mux_wire*/ logic[4:0] encode_letter,
	input wire encode_right,
	input wire[4:0] rev_letter_index,
	output /*mux_wire*/ logic[4:0] rev_encode_letter
);

/*state*/ logic[2:0] rotor_in_use;
/*state*/ logic[4:0] ring_position;
/*state*/ logic[4:0] rotor_position;
wire[4:0] _3;
assign _3 = rotor_position + 1'd1;
wire[4:0] _5;
assign _5 = (_3 == 26) ? 0 : _3; // == mod 26
localparam[4:0] turnover_positions[0:4] = '{5'd16, 5'd4, 5'd21, 5'd9, 5'd25};
wire[4:0] _8 = turnover_positions[rotor_in_use];
wire[5:0] _10;
assign _10 = _8 + ring_position;
wire[4:0] _12;
assign _12 = _10 - ((_10 >= 26) ? 26 : 0); // == mod 26
wire _13;
assign _13 = rotor_position == _12;
/*mux_wire*/ logic[4:0] modified_advance_position;
localparam[4:0] turnover_positions_2[0:4] = '{5'd16, 5'd4, 5'd21, 5'd9, 5'd25};
wire[4:0] _18 = turnover_positions_2[rotor_in_use];
wire[5:0] _20;
assign _20 = _18 + ring_position;
wire[4:0] _22;
assign _22 = _20 - ((_20 >= 26) ? 26 : 0); // == mod 26
wire _25;
assign _25 = rotor_position == modified_advance_position;
/*mux_wire*/ logic[4:0] substitution_result_left;
/*mux_wire*/ logic[4:0] shift;
wire signed[5:0] _28;
assign _28 = rotor_position - ring_position;
wire[5:0] _30;
assign _30 = _28 + $signed({1'b0, 5'd26});
wire[4:0] _32;
assign _32 = _30 - ((_30 >= 26) ? 26 : 0); // == mod 26
wire[5:0] _36;
assign _36 = letter_index + shift;
wire[4:0] _38;
assign _38 = _36 - ((_36 >= 26) ? 26 : 0); // == mod 26
localparam[4:0] rotors[0:9][0:25] = '{'{5'd4, 5'd10, 5'd12, 5'd5, 5'd11, 5'd6, 5'd3, 5'd16, 5'd21, 5'd25, 5'd13, 5'd19, 5'd14, 5'd22, 5'd24, 5'd7, 5'd23, 5'd20, 5'd18, 5'd15, 5'd0, 5'd8, 5'd1, 5'd17, 5'd2, 5'd9}, '{5'd0, 5'd9, 5'd3, 5'd10, 5'd18, 5'd8, 5'd17, 5'd20, 5'd23, 5'd1, 5'd11, 5'd7, 5'd22, 5'd19, 5'd12, 5'd2, 5'd16, 5'd6, 5'd25, 5'd13, 5'd15, 5'd24, 5'd5, 5'd21, 5'd14, 5'd4}, '{5'd1, 5'd3, 5'd5, 5'd7, 5'd9, 5'd11, 5'd2, 5'd15, 5'd17, 5'd19, 5'd23, 5'd21, 5'd25, 5'd13, 5'd24, 5'd4, 5'd8, 5'd22, 5'd6, 5'd0, 5'd10, 5'd12, 5'd20, 5'd18, 5'd16, 5'd14}, '{5'd4, 5'd18, 5'd14, 5'd21, 5'd15, 5'd25, 5'd9, 5'd0, 5'd24, 5'd16, 5'd20, 5'd8, 5'd17, 5'd7, 5'd23, 5'd11, 5'd13, 5'd5, 5'd19, 5'd6, 5'd10, 5'd3, 5'd2, 5'd12, 5'd22, 5'd1}, '{5'd21, 5'd25, 5'd1, 5'd17, 5'd6, 5'd8, 5'd19, 5'd24, 5'd20, 5'd15, 5'd18, 5'd3, 5'd13, 5'd7, 5'd11, 5'd23, 5'd0, 5'd22, 5'd12, 5'd9, 5'd16, 5'd14, 5'd5, 5'd4, 5'd2, 5'd10}, '{5'd20, 5'd22, 5'd24, 5'd6, 5'd0, 5'd3, 5'd5, 5'd15, 5'd21, 5'd25, 5'd1, 5'd4, 5'd2, 5'd10, 5'd12, 5'd19, 5'd7, 5'd23, 5'd18, 5'd11, 5'd17, 5'd8, 5'd13, 5'd16, 5'd14, 5'd9}, '{5'd0, 5'd9, 5'd15, 5'd2, 5'd25, 5'd22, 5'd17, 5'd11, 5'd5, 5'd1, 5'd3, 5'd10, 5'd14, 5'd19, 5'd24, 5'd20, 5'd16, 5'd6, 5'd4, 5'd13, 5'd7, 5'd23, 5'd12, 5'd8, 5'd21, 5'd18}, '{5'd19, 5'd0, 5'd6, 5'd1, 5'd15, 5'd2, 5'd18, 5'd3, 5'd16, 5'd4, 5'd20, 5'd5, 5'd21, 5'd13, 5'd25, 5'd7, 5'd24, 5'd8, 5'd23, 5'd9, 5'd22, 5'd11, 5'd17, 5'd10, 5'd14, 5'd12}, '{5'd7, 5'd25, 5'd22, 5'd21, 5'd0, 5'd17, 5'd19, 5'd13, 5'd11, 5'd6, 5'd20, 5'd15, 5'd23, 5'd16, 5'd2, 5'd4, 5'd9, 5'd12, 5'd1, 5'd18, 5'd10, 5'd3, 5'd24, 5'd14, 5'd8, 5'd5}, '{5'd16, 5'd2, 5'd24, 5'd11, 5'd23, 5'd22, 5'd4, 5'd13, 5'd5, 5'd19, 5'd25, 5'd14, 5'd18, 5'd12, 5'd21, 5'd9, 5'd20, 5'd3, 5'd10, 5'd6, 5'd8, 5'd0, 5'd17, 5'd15, 5'd7, 5'd1}};
wire[4:0] _39 = rotors[rotor_in_use][_38];
wire signed[5:0] _42;
assign _42 = substitution_result_left - shift;
wire[4:0] _44;
assign _44 = _42 + ((_42 < 0) ? 26 : 0); // == mod 26
/*mux_wire*/ logic[4:0] substitution_result_right;
/*mux_wire*/ logic[4:0] shift_2;
wire signed[5:0] _47;
assign _47 = rotor_position - ring_position;
wire[5:0] _49;
assign _49 = _47 + $signed({1'b0, 5'd26});
wire[4:0] _51;
assign _51 = _49 - ((_49 >= 26) ? 26 : 0); // == mod 26
wire[3:0] _54;
assign _54 = rotor_in_use + 3'd5;
wire[5:0] _57;
assign _57 = rev_letter_index + shift_2;
wire[4:0] _59;
assign _59 = _57 - ((_57 >= 26) ? 26 : 0); // == mod 26
localparam[4:0] rotors_2[0:9][0:25] = '{'{5'd4, 5'd10, 5'd12, 5'd5, 5'd11, 5'd6, 5'd3, 5'd16, 5'd21, 5'd25, 5'd13, 5'd19, 5'd14, 5'd22, 5'd24, 5'd7, 5'd23, 5'd20, 5'd18, 5'd15, 5'd0, 5'd8, 5'd1, 5'd17, 5'd2, 5'd9}, '{5'd0, 5'd9, 5'd3, 5'd10, 5'd18, 5'd8, 5'd17, 5'd20, 5'd23, 5'd1, 5'd11, 5'd7, 5'd22, 5'd19, 5'd12, 5'd2, 5'd16, 5'd6, 5'd25, 5'd13, 5'd15, 5'd24, 5'd5, 5'd21, 5'd14, 5'd4}, '{5'd1, 5'd3, 5'd5, 5'd7, 5'd9, 5'd11, 5'd2, 5'd15, 5'd17, 5'd19, 5'd23, 5'd21, 5'd25, 5'd13, 5'd24, 5'd4, 5'd8, 5'd22, 5'd6, 5'd0, 5'd10, 5'd12, 5'd20, 5'd18, 5'd16, 5'd14}, '{5'd4, 5'd18, 5'd14, 5'd21, 5'd15, 5'd25, 5'd9, 5'd0, 5'd24, 5'd16, 5'd20, 5'd8, 5'd17, 5'd7, 5'd23, 5'd11, 5'd13, 5'd5, 5'd19, 5'd6, 5'd10, 5'd3, 5'd2, 5'd12, 5'd22, 5'd1}, '{5'd21, 5'd25, 5'd1, 5'd17, 5'd6, 5'd8, 5'd19, 5'd24, 5'd20, 5'd15, 5'd18, 5'd3, 5'd13, 5'd7, 5'd11, 5'd23, 5'd0, 5'd22, 5'd12, 5'd9, 5'd16, 5'd14, 5'd5, 5'd4, 5'd2, 5'd10}, '{5'd20, 5'd22, 5'd24, 5'd6, 5'd0, 5'd3, 5'd5, 5'd15, 5'd21, 5'd25, 5'd1, 5'd4, 5'd2, 5'd10, 5'd12, 5'd19, 5'd7, 5'd23, 5'd18, 5'd11, 5'd17, 5'd8, 5'd13, 5'd16, 5'd14, 5'd9}, '{5'd0, 5'd9, 5'd15, 5'd2, 5'd25, 5'd22, 5'd17, 5'd11, 5'd5, 5'd1, 5'd3, 5'd10, 5'd14, 5'd19, 5'd24, 5'd20, 5'd16, 5'd6, 5'd4, 5'd13, 5'd7, 5'd23, 5'd12, 5'd8, 5'd21, 5'd18}, '{5'd19, 5'd0, 5'd6, 5'd1, 5'd15, 5'd2, 5'd18, 5'd3, 5'd16, 5'd4, 5'd20, 5'd5, 5'd21, 5'd13, 5'd25, 5'd7, 5'd24, 5'd8, 5'd23, 5'd9, 5'd22, 5'd11, 5'd17, 5'd10, 5'd14, 5'd12}, '{5'd7, 5'd25, 5'd22, 5'd21, 5'd0, 5'd17, 5'd19, 5'd13, 5'd11, 5'd6, 5'd20, 5'd15, 5'd23, 5'd16, 5'd2, 5'd4, 5'd9, 5'd12, 5'd1, 5'd18, 5'd10, 5'd3, 5'd24, 5'd14, 5'd8, 5'd5}, '{5'd16, 5'd2, 5'd24, 5'd11, 5'd23, 5'd22, 5'd4, 5'd13, 5'd5, 5'd19, 5'd25, 5'd14, 5'd18, 5'd12, 5'd21, 5'd9, 5'd20, 5'd3, 5'd10, 5'd6, 5'd8, 5'd0, 5'd17, 5'd15, 5'd7, 5'd1}};
wire[4:0] _60 = rotors_2[_54][_59];
wire signed[5:0] _63;
assign _63 = substitution_result_right - shift_2;
wire[4:0] _65;
assign _65 = _63 + ((_63 < 0) ? 26 : 0); // == mod 26
always_ff @(posedge clk) begin // state rotor_in_use
	if(setup) rotor_in_use <= rotor_to_use;
end
always_ff @(posedge clk) begin // state ring_position
	if(setup) ring_position <= ring_position_in_use;
end
always_ff @(posedge clk) begin // state rotor_position
	if(turnover) rotor_position <= _5;
	if(setup) rotor_position <= rotor_starting_position;
end
always_comb begin // combinatorial doublestep
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	doublestep = 1'bx;
	if(testDoublestep) if(_13) doublestep = 1'b1;
	if(testDoublestep) if(!_13) doublestep = 1'b0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	doublestep = doublestep;
end
always_comb begin // combinatorial advance_signal
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	advance_signal = 1'bx;
	if(advance) if(_25) advance_signal = 1'b1;
	if(advance) if(!_25) advance_signal = 1'b0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	advance_signal = advance_signal;
end
always_comb begin // combinatorial modified_advance_position
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	modified_advance_position = 5'dx;
	if(advance) modified_advance_position = _22;
end
always_comb begin // combinatorial encode_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	encode_letter = 5'dx;
	if(encode_left) encode_letter = _44;
end
always_comb begin // combinatorial substitution_result_left
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	substitution_result_left = 5'dx;
	if(encode_left) substitution_result_left = _39;
end
always_comb begin // combinatorial shift
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	shift = 5'dx;
	if(encode_left) shift = _32;
end
always_comb begin // combinatorial rev_encode_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rev_encode_letter = 5'dx;
	if(encode_right) rev_encode_letter = _65;
end
always_comb begin // combinatorial substitution_result_right
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	substitution_result_right = 5'dx;
	if(encode_right) substitution_result_right = _60;
end
always_comb begin // combinatorial shift_2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	shift_2 = 5'dx;
	if(encode_right) shift_2 = _51;
end
endmodule // enigma_rotor_runtime #()

