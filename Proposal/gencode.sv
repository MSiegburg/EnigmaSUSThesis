// THIS IS A GENERATED FILE (Generated at 2026-04-15T09:13:49+02:00)
// This file was generated with SUS Compiler 0.3.10
// wire_encode #()
module wire_encode(
	input clk,
	input wire[4:0] shift_amount_in,
	output /*mux_wire*/ logic[4:0] encoded_letter
);

/*mux_wire*/ logic[4:0] wire_assign[25:0];
localparam[4:0] _1[25:0] = '{5'd5, 5'd23, 5'd1, 5'd2, 5'd6, 5'd11, 5'd10, 5'd12, 5'd24, 5'd19, 5'd13, 5'd0, 5'd17, 5'd16, 5'd25, 5'd3, 5'd15, 5'd22, 5'd21, 5'd4, 5'd8, 5'd9, 5'd7, 5'd14, 5'd20, 5'd18};
wire[4:0] _3 = wire_assign[shift_amount_in];
always_comb begin // combinatorial encoded_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	encoded_letter = 5'dx;
	encoded_letter = _3;
end
always_comb begin // combinatorial wire_assign
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wire_assign = '{5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx, 5'dx};
	for(int _v0 = 0; _v0 < 26; _v0 = _v0 + 1) begin
wire_assign[_v0] = _1[_v0];
end
end
endmodule

