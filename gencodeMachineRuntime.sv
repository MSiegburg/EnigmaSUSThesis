// THIS IS A GENERATED FILE (Generated at 2026-07-16T16:18:03+02:00)
// This file was generated with SUS Compiler 0.4.0
// enigma_top #()
module enigma_top(
	/* clock */ input aclk,
	input wire aresetn,
	input wire[11:0] s_axi_control_awaddr,
	input wire s_axi_control_awvalid,
	output /*mux_wire*/ logic s_axi_control_awready,
	input wire[31:0] s_axi_control_wdata,
	input wire[3:0] s_axi_control_wstrb,
	input wire s_axi_control_wvalid,
	output /*mux_wire*/ logic s_axi_control_wready,
	output /*mux_wire*/ logic[1:0] s_axi_control_bresp,
	output /*mux_wire*/ logic s_axi_control_bvalid,
	input wire s_axi_control_bready,
	input wire[11:0] s_axi_control_araddr,
	input wire s_axi_control_arvalid,
	output /*mux_wire*/ logic s_axi_control_arready,
	output /*mux_wire*/ logic[31:0] s_axi_control_rdata,
	output /*mux_wire*/ logic[1:0] s_axi_control_rresp,
	output /*mux_wire*/ logic s_axi_control_rvalid,
	input wire s_axi_control_rready,
	output /*mux_wire*/ logic m_axi_awvalid,
	input wire m_axi_awready,
	output /*mux_wire*/ logic[63:0] m_axi_awaddr,
	output /*mux_wire*/ logic[7:0] m_axi_awlen,
	output /*mux_wire*/ logic[2:0] m_axi_awsize,
	output /*mux_wire*/ logic[1:0] m_axi_awburst,
	output /*mux_wire*/ logic[2:0] m_axi_awprot,
	output /*mux_wire*/ logic[3:0] m_axi_awcache,
	output /*mux_wire*/ logic[3:0] m_axi_awqos,
	output /*mux_wire*/ logic m_axi_awlock,
	output /*mux_wire*/ logic[3:0] m_axi_awregion,
	output /*mux_wire*/ logic m_axi_wvalid,
	input wire m_axi_wready,
	output /*mux_wire*/ logic[31:0] m_axi_wdata,
	output /*mux_wire*/ logic[3:0] m_axi_wstrb,
	output /*mux_wire*/ logic m_axi_wlast,
	input wire m_axi_bvalid,
	output /*mux_wire*/ logic m_axi_bready,
	input wire[1:0] m_axi_bresp,
	output /*mux_wire*/ logic m_axi_arvalid,
	input wire m_axi_arready,
	output /*mux_wire*/ logic[63:0] m_axi_araddr,
	output /*mux_wire*/ logic[7:0] m_axi_arlen,
	output /*mux_wire*/ logic[2:0] m_axi_arsize,
	output /*mux_wire*/ logic[1:0] m_axi_arburst,
	output /*mux_wire*/ logic[2:0] m_axi_arprot,
	output /*mux_wire*/ logic[3:0] m_axi_arcache,
	output /*mux_wire*/ logic[3:0] m_axi_arqos,
	output /*mux_wire*/ logic m_axi_arlock,
	output /*mux_wire*/ logic[3:0] m_axi_arregion,
	input wire m_axi_rvalid,
	output /*mux_wire*/ logic m_axi_rready,
	input wire[31:0] m_axi_rdata,
	input wire[1:0] m_axi_rresp,
	input wire m_axi_rlast
);

wire _ctrl_awready;
wire _ctrl_wready;
wire[1:0] _ctrl_bresp;
wire _ctrl_bvalid;
wire _ctrl_arready;
wire[31:0] _ctrl_rdata;
wire[1:0] _ctrl_rresp;
wire _ctrl_rvalid;
/*mux_wire*/ logic[11:0] _ctrl_awaddr;
/*mux_wire*/ logic _ctrl_awvalid;
/*mux_wire*/ logic[31:0] _ctrl_wdata;
/*mux_wire*/ logic[3:0] _ctrl_wstrb;
/*mux_wire*/ logic _ctrl_wvalid;
/*mux_wire*/ logic _ctrl_bready;
/*mux_wire*/ logic[11:0] _ctrl_araddr;
/*mux_wire*/ logic _ctrl_arvalid;
/*mux_wire*/ logic _ctrl_rready;
wire _writer_awvalid;
wire[63:0] _writer_awaddr;
wire[7:0] _writer_awlen;
wire[2:0] _writer_awsize;
wire[1:0] _writer_awburst;
wire[2:0] _writer_awprot;
wire[3:0] _writer_awcache;
wire[3:0] _writer_awqos;
wire _writer_awlock;
wire[3:0] _writer_awregion;
wire _writer_wvalid;
wire[31:0] _writer_wdata;
wire[3:0] _writer_wstrb;
wire _writer_wlast;
wire _writer_bready;
/*mux_wire*/ logic _writer_awready;
/*mux_wire*/ logic _writer_wready;
/*mux_wire*/ logic _writer_bvalid;
/*mux_wire*/ logic[1:0] _writer_bresp;
wire _reader_arvalid;
wire[63:0] _reader_araddr;
wire[7:0] _reader_arlen;
wire[2:0] _reader_arsize;
wire[1:0] _reader_arburst;
wire[2:0] _reader_arprot;
wire[3:0] _reader_arcache;
wire[3:0] _reader_arqos;
wire _reader_arlock;
wire[3:0] _reader_arregion;
wire _reader_rready;
/*mux_wire*/ logic _reader_arready;
/*mux_wire*/ logic _reader_rvalid;
/*mux_wire*/ logic[31:0] _reader_rdata;
/*mux_wire*/ logic[1:0] _reader_rresp;
/*mux_wire*/ logic _reader_rlast;
/*mux_wire*/ logic[63:0] message_adress;
wire[31:0] _ctrl_input_regs[0:44];
wire[31:0] _53 = _ctrl_input_regs[0];
wire[31:0] _54 = _ctrl_input_regs[1];
/*mux_wire*/ logic[63:0] read_start_addr;
/*mux_wire*/ logic[63:0] _BitsToUInt_bits;
wire[63:0] _BitsToUInt_value;
/*mux_wire*/ logic[63:0] encode_adress;
wire[31:0] _56 = _ctrl_input_regs[2];
wire[31:0] _57 = _ctrl_input_regs[3];
/*mux_wire*/ logic[63:0] write_start_addr;
/*mux_wire*/ logic[63:0] _BitsToUInt_2_bits;
wire[63:0] _BitsToUInt_2_value;
/*state*/ logic[2:0] current_state;
/*state*/ logic[2:0] rotors_to_use[0:2];
/*state*/ logic[4:0] rotor_positions_to_use[0:2];
/*state*/ logic[4:0] ring_positions_to_use[0:2];
/*state*/ logic[4:0] plugboard_config[0:25];
/*state*/ logic[4:0] plugboard_iterator;
/*mux_wire*/ logic[31:0] number_to_transfer;
wire _ctrl_start;
wire[31:0] _61 = _ctrl_input_regs[4];
/*mux_wire*/ logic[31:0] _BitsToUInt_3_bits;
wire[31:0] _BitsToUInt_3_value;
/*mux_wire*/ logic _writer_request_new_write;
/*mux_wire*/ logic[63:0] _writer_start_addr;
wire[31:0] _65 = _ctrl_input_regs[5];
/*mux_wire*/ logic[31:0] _BitsToUInt_4_bits;
wire[31:0] _BitsToUInt_4_value;
/*mux_wire*/ logic[31:0] _IntNarrow_din;
wire[2:0] _IntNarrow_dout;
wire[31:0] _66 = _ctrl_input_regs[8];
/*mux_wire*/ logic[31:0] _BitsToInt_bits;
wire signed[31:0] _BitsToInt_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_2_din;
wire[4:0] _IntNarrow_2_dout;
wire[31:0] _67 = _ctrl_input_regs[11];
/*mux_wire*/ logic[31:0] _BitsToInt_2_bits;
wire signed[31:0] _BitsToInt_2_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_3_din;
wire[4:0] _IntNarrow_3_dout;
wire[31:0] _68 = _ctrl_input_regs[6];
/*mux_wire*/ logic[31:0] _BitsToUInt_5_bits;
wire[31:0] _BitsToUInt_5_value;
/*mux_wire*/ logic[31:0] _IntNarrow_4_din;
wire[2:0] _IntNarrow_4_dout;
wire[31:0] _69 = _ctrl_input_regs[9];
/*mux_wire*/ logic[31:0] _BitsToInt_3_bits;
wire signed[31:0] _BitsToInt_3_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_5_din;
wire[4:0] _IntNarrow_5_dout;
wire[31:0] _70 = _ctrl_input_regs[12];
/*mux_wire*/ logic[31:0] _BitsToInt_4_bits;
wire signed[31:0] _BitsToInt_4_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_6_din;
wire[4:0] _IntNarrow_6_dout;
wire[31:0] _71 = _ctrl_input_regs[7];
/*mux_wire*/ logic[31:0] _BitsToUInt_6_bits;
wire[31:0] _BitsToUInt_6_value;
/*mux_wire*/ logic[31:0] _IntNarrow_7_din;
wire[2:0] _IntNarrow_7_dout;
wire[31:0] _72 = _ctrl_input_regs[10];
/*mux_wire*/ logic[31:0] _BitsToInt_5_bits;
wire signed[31:0] _BitsToInt_5_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_8_din;
wire[4:0] _IntNarrow_8_dout;
wire[31:0] _73 = _ctrl_input_regs[13];
/*mux_wire*/ logic[31:0] _BitsToInt_6_bits;
wire signed[31:0] _BitsToInt_6_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_9_din;
wire[4:0] _IntNarrow_9_dout;
wire[31:0] _74 = _ctrl_input_regs[14];
/*mux_wire*/ logic[31:0] _BitsToInt_7_bits;
wire signed[31:0] _BitsToInt_7_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_10_din;
wire[4:0] _IntNarrow_10_dout;
wire[31:0] _75 = _ctrl_input_regs[15];
/*mux_wire*/ logic[31:0] _BitsToInt_8_bits;
wire signed[31:0] _BitsToInt_8_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_11_din;
wire[4:0] _IntNarrow_11_dout;
wire[31:0] _76 = _ctrl_input_regs[16];
/*mux_wire*/ logic[31:0] _BitsToInt_9_bits;
wire signed[31:0] _BitsToInt_9_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_12_din;
wire[4:0] _IntNarrow_12_dout;
wire[31:0] _77 = _ctrl_input_regs[17];
/*mux_wire*/ logic[31:0] _BitsToInt_10_bits;
wire signed[31:0] _BitsToInt_10_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_13_din;
wire[4:0] _IntNarrow_13_dout;
wire[31:0] _78 = _ctrl_input_regs[18];
/*mux_wire*/ logic[31:0] _BitsToInt_11_bits;
wire signed[31:0] _BitsToInt_11_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_14_din;
wire[4:0] _IntNarrow_14_dout;
wire[31:0] _79 = _ctrl_input_regs[19];
/*mux_wire*/ logic[31:0] _BitsToInt_12_bits;
wire signed[31:0] _BitsToInt_12_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_15_din;
wire[4:0] _IntNarrow_15_dout;
wire[31:0] _80 = _ctrl_input_regs[20];
/*mux_wire*/ logic[31:0] _BitsToInt_13_bits;
wire signed[31:0] _BitsToInt_13_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_16_din;
wire[4:0] _IntNarrow_16_dout;
wire[31:0] _81 = _ctrl_input_regs[21];
/*mux_wire*/ logic[31:0] _BitsToInt_14_bits;
wire signed[31:0] _BitsToInt_14_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_17_din;
wire[4:0] _IntNarrow_17_dout;
wire[31:0] _82 = _ctrl_input_regs[22];
/*mux_wire*/ logic[31:0] _BitsToInt_15_bits;
wire signed[31:0] _BitsToInt_15_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_18_din;
wire[4:0] _IntNarrow_18_dout;
wire[31:0] _83 = _ctrl_input_regs[23];
/*mux_wire*/ logic[31:0] _BitsToInt_16_bits;
wire signed[31:0] _BitsToInt_16_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_19_din;
wire[4:0] _IntNarrow_19_dout;
wire[31:0] _84 = _ctrl_input_regs[24];
/*mux_wire*/ logic[31:0] _BitsToInt_17_bits;
wire signed[31:0] _BitsToInt_17_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_20_din;
wire[4:0] _IntNarrow_20_dout;
wire[31:0] _85 = _ctrl_input_regs[25];
/*mux_wire*/ logic[31:0] _BitsToInt_18_bits;
wire signed[31:0] _BitsToInt_18_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_21_din;
wire[4:0] _IntNarrow_21_dout;
wire[31:0] _86 = _ctrl_input_regs[26];
/*mux_wire*/ logic[31:0] _BitsToInt_19_bits;
wire signed[31:0] _BitsToInt_19_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_22_din;
wire[4:0] _IntNarrow_22_dout;
wire[31:0] _87 = _ctrl_input_regs[27];
/*mux_wire*/ logic[31:0] _BitsToInt_20_bits;
wire signed[31:0] _BitsToInt_20_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_23_din;
wire[4:0] _IntNarrow_23_dout;
wire[31:0] _88 = _ctrl_input_regs[28];
/*mux_wire*/ logic[31:0] _BitsToInt_21_bits;
wire signed[31:0] _BitsToInt_21_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_24_din;
wire[4:0] _IntNarrow_24_dout;
wire[31:0] _89 = _ctrl_input_regs[29];
/*mux_wire*/ logic[31:0] _BitsToInt_22_bits;
wire signed[31:0] _BitsToInt_22_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_25_din;
wire[4:0] _IntNarrow_25_dout;
wire[31:0] _90 = _ctrl_input_regs[30];
/*mux_wire*/ logic[31:0] _BitsToInt_23_bits;
wire signed[31:0] _BitsToInt_23_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_26_din;
wire[4:0] _IntNarrow_26_dout;
wire[31:0] _91 = _ctrl_input_regs[31];
/*mux_wire*/ logic[31:0] _BitsToInt_24_bits;
wire signed[31:0] _BitsToInt_24_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_27_din;
wire[4:0] _IntNarrow_27_dout;
wire[31:0] _92 = _ctrl_input_regs[32];
/*mux_wire*/ logic[31:0] _BitsToInt_25_bits;
wire signed[31:0] _BitsToInt_25_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_28_din;
wire[4:0] _IntNarrow_28_dout;
wire[31:0] _93 = _ctrl_input_regs[33];
/*mux_wire*/ logic[31:0] _BitsToInt_26_bits;
wire signed[31:0] _BitsToInt_26_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_29_din;
wire[4:0] _IntNarrow_29_dout;
wire[31:0] _94 = _ctrl_input_regs[34];
/*mux_wire*/ logic[31:0] _BitsToInt_27_bits;
wire signed[31:0] _BitsToInt_27_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_30_din;
wire[4:0] _IntNarrow_30_dout;
wire[31:0] _95 = _ctrl_input_regs[35];
/*mux_wire*/ logic[31:0] _BitsToInt_28_bits;
wire signed[31:0] _BitsToInt_28_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_31_din;
wire[4:0] _IntNarrow_31_dout;
wire[31:0] _96 = _ctrl_input_regs[36];
/*mux_wire*/ logic[31:0] _BitsToInt_29_bits;
wire signed[31:0] _BitsToInt_29_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_32_din;
wire[4:0] _IntNarrow_32_dout;
wire[31:0] _97 = _ctrl_input_regs[37];
/*mux_wire*/ logic[31:0] _BitsToInt_30_bits;
wire signed[31:0] _BitsToInt_30_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_33_din;
wire[4:0] _IntNarrow_33_dout;
wire[31:0] _98 = _ctrl_input_regs[38];
/*mux_wire*/ logic[31:0] _BitsToInt_31_bits;
wire signed[31:0] _BitsToInt_31_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_34_din;
wire[4:0] _IntNarrow_34_dout;
wire[31:0] _99 = _ctrl_input_regs[39];
/*mux_wire*/ logic[31:0] _BitsToInt_32_bits;
wire signed[31:0] _BitsToInt_32_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_35_din;
wire[4:0] _IntNarrow_35_dout;
wire _102;
assign _102 = current_state == 1'd1;
/*mux_wire*/ logic _enigma_machine_setup;
/*mux_wire*/ logic[2:0] _enigma_machine_rotor_setup[0:2];
/*mux_wire*/ logic[4:0] _enigma_machine_rotor_positions[0:2];
/*mux_wire*/ logic[4:0] _enigma_machine_ring_positions[0:2];
wire _111;
assign _111 = current_state == 2'd2;
wire _114;
assign _114 = plugboard_iterator < 5'd25;
wire _115;
assign _115 = _111 & _114;
wire[4:0] _118 = plugboard_config[plugboard_iterator];
/*mux_wire*/ logic _enigma_machine_change_plugs;
/*mux_wire*/ logic[4:0] _enigma_machine_plug;
/*mux_wire*/ logic[4:0] _enigma_machine_value;
wire[4:0] _123;
assign _123 = plugboard_iterator + 1'd1;
wire[4:0] _125;
assign _125 = (_123 == 26) ? 0 : _123; // == mod 26
wire _128;
assign _128 = current_state == 2'd2;
wire _131;
assign _131 = plugboard_iterator == 5'd25;
wire _132;
assign _132 = _128 & _131;
wire[4:0] _135 = plugboard_config[plugboard_iterator];
wire _140;
assign _140 = current_state == 2'd3;
/*mux_wire*/ logic _enigma_machine_prep_message_encode;
/*mux_wire*/ logic _reader_request_new_read;
/*mux_wire*/ logic[63:0] _reader_start_addr;
/*mux_wire*/ logic[31:0] _reader_count;
// (zero sized) _reader_extra_data
// (zero sized) _148
wire _writer_may_write;
/*mux_wire*/ logic _reader_ready_for_lots_of_data;
wire _reader_chunk_valid;
/*latency*/ logic __reader_chunk_valid_D997; always_ff @(posedge aclk) begin __reader_chunk_valid_D997 <= _reader_chunk_valid; end
/*latency*/ logic __reader_chunk_valid_D998; always_ff @(posedge aclk) begin __reader_chunk_valid_D998 <= __reader_chunk_valid_D997; end
/*latency*/ logic __reader_chunk_valid_D999; always_ff @(posedge aclk) begin __reader_chunk_valid_D999 <= __reader_chunk_valid_D998; end
/*latency*/ logic __reader_chunk_valid_D1000; always_ff @(posedge aclk) begin __reader_chunk_valid_D1000 <= __reader_chunk_valid_D999; end
wire[31:0] _reader_elements[0:0];
wire[0:0] _reader_chunk_length;
// (zero sized) _reader_chunk_offset
wire _reader_last;
// (zero sized) _reader_extra_data_out
/*mux_wire*/ logic[31:0] elements[0:0];
/*mux_wire*/ logic[0:0] chunk_length;
/*latency*/ logic[0:0] _chunk_length_D997; always_ff @(posedge aclk) begin _chunk_length_D997 <= chunk_length; end
/*latency*/ logic[0:0] _chunk_length_D998; always_ff @(posedge aclk) begin _chunk_length_D998 <= _chunk_length_D997; end
/*latency*/ logic[0:0] _chunk_length_D999; always_ff @(posedge aclk) begin _chunk_length_D999 <= _chunk_length_D998; end
// (zero sized) chunk_offset
/*mux_wire*/ logic last;
/*latency*/ logic _last_D997; always_ff @(posedge aclk) begin _last_D997 <= last; end
/*latency*/ logic _last_D998; always_ff @(posedge aclk) begin _last_D998 <= _last_D997; end
/*latency*/ logic _last_D999; always_ff @(posedge aclk) begin _last_D999 <= _last_D998; end
// (zero sized) _unused_extra_data
/*mux_wire*/ logic[4:0] letter_to_parse;
/*latency*/ logic[4:0] _letter_to_parse_D997; always_ff @(posedge aclk) begin _letter_to_parse_D997 <= letter_to_parse; end
/*latency*/ logic[4:0] _letter_to_parse_D998; always_ff @(posedge aclk) begin _letter_to_parse_D998 <= _letter_to_parse_D997; end
/*latency*/ logic[4:0] _letter_to_parse_D999; always_ff @(posedge aclk) begin _letter_to_parse_D999 <= _letter_to_parse_D998; end
/*latency*/ logic[4:0] _letter_to_parse_D1000; always_ff @(posedge aclk) begin _letter_to_parse_D1000 <= _letter_to_parse_D999; end
/*mux_wire*/ logic[4:0] encoded_letter;
wire[31:0] _150 = elements[0];
/*mux_wire*/ logic[31:0] _BitsToInt_33_bits;
wire signed[31:0] _BitsToInt_33_value;
/*mux_wire*/ logic signed[31:0] _IntNarrow_36_din;
wire[4:0] _IntNarrow_36_dout;
/*mux_wire*/ logic _enigma_machine_parse_letter;
/*mux_wire*/ logic[4:0] _enigma_machine_input_letter;
wire[4:0] _enigma_machine_encode_letter_final;
/*mux_wire*/ logic[31:0] to_save[0:0];
/*mux_wire*/ logic signed[31:0] _IntToBits_value;
wire[31:0] _IntToBits_bits;
/*mux_wire*/ logic _writer_write;
/*mux_wire*/ logic[31:0] _writer_elements[0:0];
/*mux_wire*/ logic[0:0] _writer_chunk_length;
// (zero sized) _writer_chunk_offset
/*mux_wire*/ logic _writer_last;
wire _writer_write_has_been_committed;
/*mux_wire*/ logic _ctrl_finish;
// (zero sized) _ctrl_output_regs
// (zero sized) _163
wire _165;
assign _165 = ~aresetn;
/*mux_wire*/ logic _reader_rst;
/*mux_wire*/ logic _writer_rst;
/*mux_wire*/ logic _ctrl_rst;
xrt_ctrl_slave_NUM_INPUT_REGS_45_NUM_OUTPUT_REGS_0_ADDR_WIDTH_12_AXI_WIDTH_32 ctrl(
	.clk(aclk),
	.awaddr(_ctrl_awaddr),
	.awvalid(_ctrl_awvalid),
	.awready(_ctrl_awready),
	.wdata(_ctrl_wdata),
	.wstrb(_ctrl_wstrb),
	.wvalid(_ctrl_wvalid),
	.wready(_ctrl_wready),
	.bresp(_ctrl_bresp),
	.bvalid(_ctrl_bvalid),
	.bready(_ctrl_bready),
	.araddr(_ctrl_araddr),
	.arvalid(_ctrl_arvalid),
	.arready(_ctrl_arready),
	.rdata(_ctrl_rdata),
	.rresp(_ctrl_rresp),
	.rvalid(_ctrl_rvalid),
	.rready(_ctrl_rready),
	.input_regs(_ctrl_input_regs),
	.start(_ctrl_start),
	.finish(_ctrl_finish),
	// (zero sized port) .output_regs(_ctrl_output_regs)
	.rst(_ctrl_rst)
);
axi4_burst_reader_ExtraDataT_type_bool_0_AXI_WIDTH_32_ADDR_WIDTH_64_ADDR_ALIGN_4_COUNT_TO_4294967296_MAX_IN_FLIGHT_412 reader(
	.clk(aclk),
	.arvalid(_reader_arvalid),
	.arready(_reader_arready),
	.araddr(_reader_araddr),
	.arlen(_reader_arlen),
	.arsize(_reader_arsize),
	.arburst(_reader_arburst),
	.arprot(_reader_arprot),
	.arcache(_reader_arcache),
	.arqos(_reader_arqos),
	.arlock(_reader_arlock),
	.arregion(_reader_arregion),
	.rvalid(_reader_rvalid),
	.rready(_reader_rready),
	.rdata(_reader_rdata),
	.rresp(_reader_rresp),
	.rlast(_reader_rlast),
	.may_request_new_read(),
	.request_new_read(_reader_request_new_read),
	.start_addr(_reader_start_addr),
	.count(_reader_count),
	// (zero sized port) .extra_data(_reader_extra_data)
	.ready_for_lots_of_data(_reader_ready_for_lots_of_data),
	.chunk_valid(_reader_chunk_valid),
	.elements(_reader_elements),
	.chunk_length(_reader_chunk_length),
	// (zero sized port) .chunk_offset(_reader_chunk_offset)
	.last(_reader_last),
	// (zero sized port) .extra_data_out(_reader_extra_data_out)
	.rst(_reader_rst)
);
axi4_burst_writer_AXI_WIDTH_32_ADDR_WIDTH_64_ADDR_ALIGN_4_MAY_PUSH_LATENCY_415_ADDR_MAY_PUSH_LATENCY_0 writer(
	.clk(aclk),
	.awvalid(_writer_awvalid),
	.awready(_writer_awready),
	.awaddr(_writer_awaddr),
	.awlen(_writer_awlen),
	.awsize(_writer_awsize),
	.awburst(_writer_awburst),
	.awcache(_writer_awcache),
	.awprot(_writer_awprot),
	.awqos(_writer_awqos),
	.awlock(_writer_awlock),
	.awregion(_writer_awregion),
	.wvalid(_writer_wvalid),
	.wready(_writer_wready),
	.wlast(_writer_wlast),
	.wdata(_writer_wdata),
	.wstrb(_writer_wstrb),
	.bvalid(_writer_bvalid),
	.bresp(_writer_bresp),
	.bready(_writer_bready),
	.may_request_new_write(),
	.request_new_write(_writer_request_new_write),
	.start_addr(_writer_start_addr),
	.write_has_been_committed(_writer_write_has_been_committed),
	.may_write(_writer_may_write),
	.write(_writer_write),
	.elements(_writer_elements),
	.chunk_length(_writer_chunk_length),
	// (zero sized port) .chunk_offset(_writer_chunk_offset)
	.last(_writer_last),
	.rst(_writer_rst)
);
BitsToUInt_NUM_BITS_64 BitsToUInt(
	.clk(aclk),
	.bits(_BitsToUInt_bits),
	.value(_BitsToUInt_value)
);
BitsToUInt_NUM_BITS_64 BitsToUInt_2(
	.clk(aclk),
	.bits(_BitsToUInt_2_bits),
	.value(_BitsToUInt_2_value)
);
enigma_machine_runtime enigma_machine(
	.clk(aclk),
	.setup(_enigma_machine_setup),
	.rotor_setup(_enigma_machine_rotor_setup),
	.rotor_positions(_enigma_machine_rotor_positions),
	.ring_positions(_enigma_machine_ring_positions),
	.change_plugs(_enigma_machine_change_plugs),
	.plug(_enigma_machine_plug),
	.value(_enigma_machine_value),
	.prep_message_encode(_enigma_machine_prep_message_encode),
	.parse_letter(_enigma_machine_parse_letter),
	.input_letter(_enigma_machine_input_letter),
	.encode_letter_final(_enigma_machine_encode_letter_final),
	.cur_settings(),
	.cur_rotors()
);
BitsToUInt_NUM_BITS_32 BitsToUInt_3(
	.clk(aclk),
	.bits(_BitsToUInt_3_bits),
	.value(_BitsToUInt_3_value)
);
BitsToUInt_NUM_BITS_32 BitsToUInt_4(
	.clk(aclk),
	.bits(_BitsToUInt_4_bits),
	.value(_BitsToUInt_4_value)
);
IntNarrow_FROM_I_0_TO_I_4294967296_FROM_0_TO_5 IntNarrow(
	.clk(aclk),
	.din(_IntNarrow_din),
	.dout(_IntNarrow_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt(
	.clk(aclk),
	.bits(_BitsToInt_bits),
	.value(_BitsToInt_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_2(
	.clk(aclk),
	.din(_IntNarrow_2_din),
	.dout(_IntNarrow_2_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_2(
	.clk(aclk),
	.bits(_BitsToInt_2_bits),
	.value(_BitsToInt_2_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_3(
	.clk(aclk),
	.din(_IntNarrow_3_din),
	.dout(_IntNarrow_3_dout)
);
BitsToUInt_NUM_BITS_32 BitsToUInt_5(
	.clk(aclk),
	.bits(_BitsToUInt_5_bits),
	.value(_BitsToUInt_5_value)
);
IntNarrow_FROM_I_0_TO_I_4294967296_FROM_0_TO_5 IntNarrow_4(
	.clk(aclk),
	.din(_IntNarrow_4_din),
	.dout(_IntNarrow_4_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_3(
	.clk(aclk),
	.bits(_BitsToInt_3_bits),
	.value(_BitsToInt_3_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_5(
	.clk(aclk),
	.din(_IntNarrow_5_din),
	.dout(_IntNarrow_5_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_4(
	.clk(aclk),
	.bits(_BitsToInt_4_bits),
	.value(_BitsToInt_4_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_6(
	.clk(aclk),
	.din(_IntNarrow_6_din),
	.dout(_IntNarrow_6_dout)
);
BitsToUInt_NUM_BITS_32 BitsToUInt_6(
	.clk(aclk),
	.bits(_BitsToUInt_6_bits),
	.value(_BitsToUInt_6_value)
);
IntNarrow_FROM_I_0_TO_I_4294967296_FROM_0_TO_5 IntNarrow_7(
	.clk(aclk),
	.din(_IntNarrow_7_din),
	.dout(_IntNarrow_7_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_5(
	.clk(aclk),
	.bits(_BitsToInt_5_bits),
	.value(_BitsToInt_5_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_8(
	.clk(aclk),
	.din(_IntNarrow_8_din),
	.dout(_IntNarrow_8_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_6(
	.clk(aclk),
	.bits(_BitsToInt_6_bits),
	.value(_BitsToInt_6_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_9(
	.clk(aclk),
	.din(_IntNarrow_9_din),
	.dout(_IntNarrow_9_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_7(
	.clk(aclk),
	.bits(_BitsToInt_7_bits),
	.value(_BitsToInt_7_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_10(
	.clk(aclk),
	.din(_IntNarrow_10_din),
	.dout(_IntNarrow_10_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_8(
	.clk(aclk),
	.bits(_BitsToInt_8_bits),
	.value(_BitsToInt_8_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_11(
	.clk(aclk),
	.din(_IntNarrow_11_din),
	.dout(_IntNarrow_11_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_9(
	.clk(aclk),
	.bits(_BitsToInt_9_bits),
	.value(_BitsToInt_9_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_12(
	.clk(aclk),
	.din(_IntNarrow_12_din),
	.dout(_IntNarrow_12_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_10(
	.clk(aclk),
	.bits(_BitsToInt_10_bits),
	.value(_BitsToInt_10_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_13(
	.clk(aclk),
	.din(_IntNarrow_13_din),
	.dout(_IntNarrow_13_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_11(
	.clk(aclk),
	.bits(_BitsToInt_11_bits),
	.value(_BitsToInt_11_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_14(
	.clk(aclk),
	.din(_IntNarrow_14_din),
	.dout(_IntNarrow_14_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_12(
	.clk(aclk),
	.bits(_BitsToInt_12_bits),
	.value(_BitsToInt_12_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_15(
	.clk(aclk),
	.din(_IntNarrow_15_din),
	.dout(_IntNarrow_15_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_13(
	.clk(aclk),
	.bits(_BitsToInt_13_bits),
	.value(_BitsToInt_13_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_16(
	.clk(aclk),
	.din(_IntNarrow_16_din),
	.dout(_IntNarrow_16_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_14(
	.clk(aclk),
	.bits(_BitsToInt_14_bits),
	.value(_BitsToInt_14_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_17(
	.clk(aclk),
	.din(_IntNarrow_17_din),
	.dout(_IntNarrow_17_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_15(
	.clk(aclk),
	.bits(_BitsToInt_15_bits),
	.value(_BitsToInt_15_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_18(
	.clk(aclk),
	.din(_IntNarrow_18_din),
	.dout(_IntNarrow_18_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_16(
	.clk(aclk),
	.bits(_BitsToInt_16_bits),
	.value(_BitsToInt_16_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_19(
	.clk(aclk),
	.din(_IntNarrow_19_din),
	.dout(_IntNarrow_19_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_17(
	.clk(aclk),
	.bits(_BitsToInt_17_bits),
	.value(_BitsToInt_17_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_20(
	.clk(aclk),
	.din(_IntNarrow_20_din),
	.dout(_IntNarrow_20_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_18(
	.clk(aclk),
	.bits(_BitsToInt_18_bits),
	.value(_BitsToInt_18_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_21(
	.clk(aclk),
	.din(_IntNarrow_21_din),
	.dout(_IntNarrow_21_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_19(
	.clk(aclk),
	.bits(_BitsToInt_19_bits),
	.value(_BitsToInt_19_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_22(
	.clk(aclk),
	.din(_IntNarrow_22_din),
	.dout(_IntNarrow_22_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_20(
	.clk(aclk),
	.bits(_BitsToInt_20_bits),
	.value(_BitsToInt_20_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_23(
	.clk(aclk),
	.din(_IntNarrow_23_din),
	.dout(_IntNarrow_23_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_21(
	.clk(aclk),
	.bits(_BitsToInt_21_bits),
	.value(_BitsToInt_21_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_24(
	.clk(aclk),
	.din(_IntNarrow_24_din),
	.dout(_IntNarrow_24_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_22(
	.clk(aclk),
	.bits(_BitsToInt_22_bits),
	.value(_BitsToInt_22_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_25(
	.clk(aclk),
	.din(_IntNarrow_25_din),
	.dout(_IntNarrow_25_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_23(
	.clk(aclk),
	.bits(_BitsToInt_23_bits),
	.value(_BitsToInt_23_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_26(
	.clk(aclk),
	.din(_IntNarrow_26_din),
	.dout(_IntNarrow_26_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_24(
	.clk(aclk),
	.bits(_BitsToInt_24_bits),
	.value(_BitsToInt_24_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_27(
	.clk(aclk),
	.din(_IntNarrow_27_din),
	.dout(_IntNarrow_27_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_25(
	.clk(aclk),
	.bits(_BitsToInt_25_bits),
	.value(_BitsToInt_25_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_28(
	.clk(aclk),
	.din(_IntNarrow_28_din),
	.dout(_IntNarrow_28_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_26(
	.clk(aclk),
	.bits(_BitsToInt_26_bits),
	.value(_BitsToInt_26_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_29(
	.clk(aclk),
	.din(_IntNarrow_29_din),
	.dout(_IntNarrow_29_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_27(
	.clk(aclk),
	.bits(_BitsToInt_27_bits),
	.value(_BitsToInt_27_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_30(
	.clk(aclk),
	.din(_IntNarrow_30_din),
	.dout(_IntNarrow_30_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_28(
	.clk(aclk),
	.bits(_BitsToInt_28_bits),
	.value(_BitsToInt_28_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_31(
	.clk(aclk),
	.din(_IntNarrow_31_din),
	.dout(_IntNarrow_31_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_29(
	.clk(aclk),
	.bits(_BitsToInt_29_bits),
	.value(_BitsToInt_29_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_32(
	.clk(aclk),
	.din(_IntNarrow_32_din),
	.dout(_IntNarrow_32_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_30(
	.clk(aclk),
	.bits(_BitsToInt_30_bits),
	.value(_BitsToInt_30_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_33(
	.clk(aclk),
	.din(_IntNarrow_33_din),
	.dout(_IntNarrow_33_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_31(
	.clk(aclk),
	.bits(_BitsToInt_31_bits),
	.value(_BitsToInt_31_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_34(
	.clk(aclk),
	.din(_IntNarrow_34_din),
	.dout(_IntNarrow_34_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_32(
	.clk(aclk),
	.bits(_BitsToInt_32_bits),
	.value(_BitsToInt_32_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_35(
	.clk(aclk),
	.din(_IntNarrow_35_din),
	.dout(_IntNarrow_35_dout)
);
BitsToInt_NUM_BITS_32 BitsToInt_33(
	.clk(aclk),
	.bits(_BitsToInt_33_bits),
	.value(_BitsToInt_33_value)
);
IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26 IntNarrow_36(
	.clk(aclk),
	.din(_IntNarrow_36_din),
	.dout(_IntNarrow_36_dout)
);
IntToBits_NUM_BITS_32 IntToBits(
	.clk(aclk),
	.value(_IntToBits_value),
	.bits(_IntToBits_bits)
);
always_comb begin // combinatorial s_axi_control_awready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	s_axi_control_awready = 1'bx;
	s_axi_control_awready = _ctrl_awready;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	s_axi_control_awready = s_axi_control_awready;
end
always_comb begin // combinatorial s_axi_control_wready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	s_axi_control_wready = 1'bx;
	s_axi_control_wready = _ctrl_wready;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	s_axi_control_wready = s_axi_control_wready;
end
always_comb begin // combinatorial s_axi_control_bresp
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	s_axi_control_bresp = 2'bxx;
	s_axi_control_bresp = _ctrl_bresp;
end
always_comb begin // combinatorial s_axi_control_bvalid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	s_axi_control_bvalid = 1'bx;
	s_axi_control_bvalid = _ctrl_bvalid;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	s_axi_control_bvalid = s_axi_control_bvalid;
end
always_comb begin // combinatorial s_axi_control_arready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	s_axi_control_arready = 1'bx;
	s_axi_control_arready = _ctrl_arready;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	s_axi_control_arready = s_axi_control_arready;
end
always_comb begin // combinatorial s_axi_control_rdata
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	s_axi_control_rdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	s_axi_control_rdata = _ctrl_rdata;
end
always_comb begin // combinatorial s_axi_control_rresp
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	s_axi_control_rresp = 2'bxx;
	s_axi_control_rresp = _ctrl_rresp;
end
always_comb begin // combinatorial s_axi_control_rvalid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	s_axi_control_rvalid = 1'bx;
	s_axi_control_rvalid = _ctrl_rvalid;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	s_axi_control_rvalid = s_axi_control_rvalid;
end
always_comb begin // combinatorial _ctrl_awaddr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ctrl_awaddr = 12'dx;
	_ctrl_awaddr = s_axi_control_awaddr;
end
always_comb begin // combinatorial _ctrl_awvalid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ctrl_awvalid = 1'bx;
	_ctrl_awvalid = s_axi_control_awvalid;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ctrl_awvalid = _ctrl_awvalid;
end
always_comb begin // combinatorial _ctrl_wdata
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ctrl_wdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_ctrl_wdata = s_axi_control_wdata;
end
always_comb begin // combinatorial _ctrl_wstrb
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ctrl_wstrb = 4'bxxxx;
	_ctrl_wstrb = s_axi_control_wstrb;
end
always_comb begin // combinatorial _ctrl_wvalid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ctrl_wvalid = 1'bx;
	_ctrl_wvalid = s_axi_control_wvalid;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ctrl_wvalid = _ctrl_wvalid;
end
always_comb begin // combinatorial _ctrl_bready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ctrl_bready = 1'bx;
	_ctrl_bready = s_axi_control_bready;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ctrl_bready = _ctrl_bready;
end
always_comb begin // combinatorial _ctrl_araddr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ctrl_araddr = 12'dx;
	_ctrl_araddr = s_axi_control_araddr;
end
always_comb begin // combinatorial _ctrl_arvalid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ctrl_arvalid = 1'bx;
	_ctrl_arvalid = s_axi_control_arvalid;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ctrl_arvalid = _ctrl_arvalid;
end
always_comb begin // combinatorial _ctrl_rready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ctrl_rready = 1'bx;
	_ctrl_rready = s_axi_control_rready;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ctrl_rready = _ctrl_rready;
end
always_comb begin // combinatorial m_axi_awvalid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_awvalid = 1'bx;
	m_axi_awvalid = _writer_awvalid;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	m_axi_awvalid = m_axi_awvalid;
end
always_comb begin // combinatorial m_axi_awaddr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_awaddr = 64'dx;
	m_axi_awaddr = _writer_awaddr;
end
always_comb begin // combinatorial m_axi_awlen
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_awlen = 8'dx;
	m_axi_awlen = _writer_awlen;
end
always_comb begin // combinatorial m_axi_awsize
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_awsize = 3'dx;
	m_axi_awsize = _writer_awsize;
end
always_comb begin // combinatorial m_axi_awburst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_awburst = 2'bxx;
	m_axi_awburst = _writer_awburst;
end
always_comb begin // combinatorial m_axi_awprot
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_awprot = 3'bxxx;
	m_axi_awprot = _writer_awprot;
end
always_comb begin // combinatorial m_axi_awcache
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_awcache = 4'bxxxx;
	m_axi_awcache = _writer_awcache;
end
always_comb begin // combinatorial m_axi_awqos
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_awqos = 4'dx;
	m_axi_awqos = _writer_awqos;
end
always_comb begin // combinatorial m_axi_awlock
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_awlock = 1'bx;
	m_axi_awlock = _writer_awlock;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	m_axi_awlock = m_axi_awlock;
end
always_comb begin // combinatorial m_axi_awregion
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_awregion = 4'dx;
	m_axi_awregion = _writer_awregion;
end
always_comb begin // combinatorial m_axi_wvalid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_wvalid = 1'bx;
	m_axi_wvalid = _writer_wvalid;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	m_axi_wvalid = m_axi_wvalid;
end
always_comb begin // combinatorial m_axi_wdata
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_wdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	m_axi_wdata = _writer_wdata;
end
always_comb begin // combinatorial m_axi_wstrb
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_wstrb = 4'bxxxx;
	m_axi_wstrb = _writer_wstrb;
end
always_comb begin // combinatorial m_axi_wlast
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_wlast = 1'bx;
	m_axi_wlast = _writer_wlast;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	m_axi_wlast = m_axi_wlast;
end
always_comb begin // combinatorial m_axi_bready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_bready = 1'bx;
	m_axi_bready = _writer_bready;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	m_axi_bready = m_axi_bready;
end
always_comb begin // combinatorial _writer_awready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_writer_awready = 1'bx;
	_writer_awready = m_axi_awready;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_writer_awready = _writer_awready;
end
always_comb begin // combinatorial _writer_wready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_writer_wready = 1'bx;
	_writer_wready = m_axi_wready;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_writer_wready = _writer_wready;
end
always_comb begin // combinatorial _writer_bvalid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_writer_bvalid = 1'bx;
	_writer_bvalid = m_axi_bvalid;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_writer_bvalid = _writer_bvalid;
end
always_comb begin // combinatorial _writer_bresp
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_writer_bresp = 2'bxx;
	_writer_bresp = m_axi_bresp;
end
always_comb begin // combinatorial m_axi_arvalid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_arvalid = 1'bx;
	m_axi_arvalid = _reader_arvalid;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	m_axi_arvalid = m_axi_arvalid;
end
always_comb begin // combinatorial m_axi_araddr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_araddr = 64'dx;
	m_axi_araddr = _reader_araddr;
end
always_comb begin // combinatorial m_axi_arlen
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_arlen = 8'dx;
	m_axi_arlen = _reader_arlen;
end
always_comb begin // combinatorial m_axi_arsize
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_arsize = 3'dx;
	m_axi_arsize = _reader_arsize;
end
always_comb begin // combinatorial m_axi_arburst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_arburst = 2'bxx;
	m_axi_arburst = _reader_arburst;
end
always_comb begin // combinatorial m_axi_arprot
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_arprot = 3'bxxx;
	m_axi_arprot = _reader_arprot;
end
always_comb begin // combinatorial m_axi_arcache
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_arcache = 4'bxxxx;
	m_axi_arcache = _reader_arcache;
end
always_comb begin // combinatorial m_axi_arqos
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_arqos = 4'dx;
	m_axi_arqos = _reader_arqos;
end
always_comb begin // combinatorial m_axi_arlock
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_arlock = 1'bx;
	m_axi_arlock = _reader_arlock;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	m_axi_arlock = m_axi_arlock;
end
always_comb begin // combinatorial m_axi_arregion
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_arregion = 4'dx;
	m_axi_arregion = _reader_arregion;
end
always_comb begin // combinatorial m_axi_rready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	m_axi_rready = 1'bx;
	m_axi_rready = _reader_rready;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	m_axi_rready = m_axi_rready;
end
always_comb begin // combinatorial _reader_arready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_reader_arready = 1'bx;
	_reader_arready = m_axi_arready;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_reader_arready = _reader_arready;
end
always_comb begin // combinatorial _reader_rvalid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_reader_rvalid = 1'bx;
	_reader_rvalid = m_axi_rvalid;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_reader_rvalid = _reader_rvalid;
end
always_comb begin // combinatorial _reader_rdata
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_reader_rdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_reader_rdata = m_axi_rdata;
end
always_comb begin // combinatorial _reader_rresp
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_reader_rresp = 2'bxx;
	_reader_rresp = m_axi_rresp;
end
always_comb begin // combinatorial _reader_rlast
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_reader_rlast = 1'bx;
	_reader_rlast = m_axi_rlast;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_reader_rlast = _reader_rlast;
end
always_comb begin // combinatorial message_adress
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	message_adress = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	for(int _v0 = 0; _v0 < 32; _v0 = _v0 + 1) begin
message_adress[_v0] = _53[_v0];
end
	for(int _v0 = 0; _v0 < 32; _v0 = _v0 + 1) begin
message_adress[32 + _v0] = _54[_v0];
end
end
always_comb begin // combinatorial read_start_addr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	read_start_addr = 64'dx;
	read_start_addr = _BitsToUInt_value;
end
always_comb begin // combinatorial _BitsToUInt_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToUInt_bits = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_BitsToUInt_bits = message_adress;
end
always_comb begin // combinatorial encode_adress
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	encode_adress = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	for(int _v0 = 0; _v0 < 32; _v0 = _v0 + 1) begin
encode_adress[_v0] = _56[_v0];
end
	for(int _v0 = 0; _v0 < 32; _v0 = _v0 + 1) begin
encode_adress[32 + _v0] = _57[_v0];
end
end
always_comb begin // combinatorial write_start_addr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	write_start_addr = 64'dx;
	write_start_addr = _BitsToUInt_2_value;
end
always_comb begin // combinatorial _BitsToUInt_2_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToUInt_2_bits = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_BitsToUInt_2_bits = encode_adress;
end
always_ff @(posedge aclk) begin // state current_state
	if(_ctrl_start) current_state <= 1'd1;
	if(_102) current_state <= 2'd2;
	if(_132) current_state <= 2'd3;
	if(_140) current_state <= 3'd4;
	if(_165) current_state <= 1'd0;
end
always_ff @(posedge aclk) begin // state rotors_to_use
	if(_ctrl_start) rotors_to_use[0] <= _IntNarrow_dout;
	if(_ctrl_start) rotors_to_use[1] <= _IntNarrow_4_dout;
	if(_ctrl_start) rotors_to_use[2] <= _IntNarrow_7_dout;
end
always_ff @(posedge aclk) begin // state rotor_positions_to_use
	if(_ctrl_start) rotor_positions_to_use[0] <= _IntNarrow_2_dout;
	if(_ctrl_start) rotor_positions_to_use[1] <= _IntNarrow_5_dout;
	if(_ctrl_start) rotor_positions_to_use[2] <= _IntNarrow_8_dout;
end
always_ff @(posedge aclk) begin // state ring_positions_to_use
	if(_ctrl_start) ring_positions_to_use[0] <= _IntNarrow_3_dout;
	if(_ctrl_start) ring_positions_to_use[1] <= _IntNarrow_6_dout;
	if(_ctrl_start) ring_positions_to_use[2] <= _IntNarrow_9_dout;
end
always_ff @(posedge aclk) begin // state plugboard_config
	if(_ctrl_start) plugboard_config[0] <= _IntNarrow_10_dout;
	if(_ctrl_start) plugboard_config[1] <= _IntNarrow_11_dout;
	if(_ctrl_start) plugboard_config[2] <= _IntNarrow_12_dout;
	if(_ctrl_start) plugboard_config[3] <= _IntNarrow_13_dout;
	if(_ctrl_start) plugboard_config[4] <= _IntNarrow_14_dout;
	if(_ctrl_start) plugboard_config[5] <= _IntNarrow_15_dout;
	if(_ctrl_start) plugboard_config[6] <= _IntNarrow_16_dout;
	if(_ctrl_start) plugboard_config[7] <= _IntNarrow_17_dout;
	if(_ctrl_start) plugboard_config[8] <= _IntNarrow_18_dout;
	if(_ctrl_start) plugboard_config[9] <= _IntNarrow_19_dout;
	if(_ctrl_start) plugboard_config[10] <= _IntNarrow_20_dout;
	if(_ctrl_start) plugboard_config[11] <= _IntNarrow_21_dout;
	if(_ctrl_start) plugboard_config[12] <= _IntNarrow_22_dout;
	if(_ctrl_start) plugboard_config[13] <= _IntNarrow_23_dout;
	if(_ctrl_start) plugboard_config[14] <= _IntNarrow_24_dout;
	if(_ctrl_start) plugboard_config[15] <= _IntNarrow_25_dout;
	if(_ctrl_start) plugboard_config[16] <= _IntNarrow_26_dout;
	if(_ctrl_start) plugboard_config[17] <= _IntNarrow_27_dout;
	if(_ctrl_start) plugboard_config[18] <= _IntNarrow_28_dout;
	if(_ctrl_start) plugboard_config[19] <= _IntNarrow_29_dout;
	if(_ctrl_start) plugboard_config[20] <= _IntNarrow_30_dout;
	if(_ctrl_start) plugboard_config[21] <= _IntNarrow_31_dout;
	if(_ctrl_start) plugboard_config[22] <= _IntNarrow_32_dout;
	if(_ctrl_start) plugboard_config[23] <= _IntNarrow_33_dout;
	if(_ctrl_start) plugboard_config[24] <= _IntNarrow_34_dout;
	if(_ctrl_start) plugboard_config[25] <= _IntNarrow_35_dout;
end
always_ff @(posedge aclk) begin // state plugboard_iterator
	if(_ctrl_start) plugboard_iterator <= 1'd0;
	if(_115) plugboard_iterator <= _125;
	if(_165) plugboard_iterator <= 1'd0;
end
always_comb begin // combinatorial number_to_transfer
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	number_to_transfer = 32'dx;
	if(_ctrl_start) number_to_transfer = _BitsToUInt_3_value;
end
always_comb begin // combinatorial _BitsToUInt_3_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToUInt_3_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToUInt_3_bits = _61;
end
always_comb begin // combinatorial _writer_request_new_write
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_writer_request_new_write = 1'bx;
	_writer_request_new_write = 1'b0;
	if(_ctrl_start) _writer_request_new_write = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_writer_request_new_write = _writer_request_new_write;
end
always_comb begin // combinatorial _writer_start_addr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_writer_start_addr = 64'dx;
	if(_ctrl_start) _writer_start_addr = write_start_addr;
end
always_comb begin // combinatorial _BitsToUInt_4_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToUInt_4_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToUInt_4_bits = _65;
end
always_comb begin // combinatorial _IntNarrow_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_din = 32'dx;
	if(_ctrl_start) _IntNarrow_din = _BitsToUInt_4_value;
end
always_comb begin // combinatorial _BitsToInt_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_bits = _66;
end
always_comb begin // combinatorial _IntNarrow_2_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_2_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_2_din = _BitsToInt_value;
end
always_comb begin // combinatorial _BitsToInt_2_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_2_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_2_bits = _67;
end
always_comb begin // combinatorial _IntNarrow_3_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_3_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_3_din = _BitsToInt_2_value;
end
always_comb begin // combinatorial _BitsToUInt_5_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToUInt_5_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToUInt_5_bits = _68;
end
always_comb begin // combinatorial _IntNarrow_4_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_4_din = 32'dx;
	if(_ctrl_start) _IntNarrow_4_din = _BitsToUInt_5_value;
end
always_comb begin // combinatorial _BitsToInt_3_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_3_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_3_bits = _69;
end
always_comb begin // combinatorial _IntNarrow_5_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_5_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_5_din = _BitsToInt_3_value;
end
always_comb begin // combinatorial _BitsToInt_4_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_4_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_4_bits = _70;
end
always_comb begin // combinatorial _IntNarrow_6_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_6_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_6_din = _BitsToInt_4_value;
end
always_comb begin // combinatorial _BitsToUInt_6_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToUInt_6_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToUInt_6_bits = _71;
end
always_comb begin // combinatorial _IntNarrow_7_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_7_din = 32'dx;
	if(_ctrl_start) _IntNarrow_7_din = _BitsToUInt_6_value;
end
always_comb begin // combinatorial _BitsToInt_5_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_5_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_5_bits = _72;
end
always_comb begin // combinatorial _IntNarrow_8_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_8_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_8_din = _BitsToInt_5_value;
end
always_comb begin // combinatorial _BitsToInt_6_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_6_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_6_bits = _73;
end
always_comb begin // combinatorial _IntNarrow_9_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_9_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_9_din = _BitsToInt_6_value;
end
always_comb begin // combinatorial _BitsToInt_7_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_7_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_7_bits = _74;
end
always_comb begin // combinatorial _IntNarrow_10_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_10_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_10_din = _BitsToInt_7_value;
end
always_comb begin // combinatorial _BitsToInt_8_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_8_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_8_bits = _75;
end
always_comb begin // combinatorial _IntNarrow_11_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_11_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_11_din = _BitsToInt_8_value;
end
always_comb begin // combinatorial _BitsToInt_9_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_9_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_9_bits = _76;
end
always_comb begin // combinatorial _IntNarrow_12_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_12_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_12_din = _BitsToInt_9_value;
end
always_comb begin // combinatorial _BitsToInt_10_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_10_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_10_bits = _77;
end
always_comb begin // combinatorial _IntNarrow_13_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_13_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_13_din = _BitsToInt_10_value;
end
always_comb begin // combinatorial _BitsToInt_11_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_11_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_11_bits = _78;
end
always_comb begin // combinatorial _IntNarrow_14_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_14_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_14_din = _BitsToInt_11_value;
end
always_comb begin // combinatorial _BitsToInt_12_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_12_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_12_bits = _79;
end
always_comb begin // combinatorial _IntNarrow_15_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_15_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_15_din = _BitsToInt_12_value;
end
always_comb begin // combinatorial _BitsToInt_13_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_13_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_13_bits = _80;
end
always_comb begin // combinatorial _IntNarrow_16_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_16_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_16_din = _BitsToInt_13_value;
end
always_comb begin // combinatorial _BitsToInt_14_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_14_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_14_bits = _81;
end
always_comb begin // combinatorial _IntNarrow_17_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_17_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_17_din = _BitsToInt_14_value;
end
always_comb begin // combinatorial _BitsToInt_15_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_15_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_15_bits = _82;
end
always_comb begin // combinatorial _IntNarrow_18_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_18_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_18_din = _BitsToInt_15_value;
end
always_comb begin // combinatorial _BitsToInt_16_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_16_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_16_bits = _83;
end
always_comb begin // combinatorial _IntNarrow_19_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_19_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_19_din = _BitsToInt_16_value;
end
always_comb begin // combinatorial _BitsToInt_17_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_17_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_17_bits = _84;
end
always_comb begin // combinatorial _IntNarrow_20_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_20_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_20_din = _BitsToInt_17_value;
end
always_comb begin // combinatorial _BitsToInt_18_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_18_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_18_bits = _85;
end
always_comb begin // combinatorial _IntNarrow_21_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_21_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_21_din = _BitsToInt_18_value;
end
always_comb begin // combinatorial _BitsToInt_19_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_19_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_19_bits = _86;
end
always_comb begin // combinatorial _IntNarrow_22_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_22_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_22_din = _BitsToInt_19_value;
end
always_comb begin // combinatorial _BitsToInt_20_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_20_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_20_bits = _87;
end
always_comb begin // combinatorial _IntNarrow_23_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_23_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_23_din = _BitsToInt_20_value;
end
always_comb begin // combinatorial _BitsToInt_21_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_21_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_21_bits = _88;
end
always_comb begin // combinatorial _IntNarrow_24_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_24_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_24_din = _BitsToInt_21_value;
end
always_comb begin // combinatorial _BitsToInt_22_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_22_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_22_bits = _89;
end
always_comb begin // combinatorial _IntNarrow_25_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_25_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_25_din = _BitsToInt_22_value;
end
always_comb begin // combinatorial _BitsToInt_23_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_23_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_23_bits = _90;
end
always_comb begin // combinatorial _IntNarrow_26_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_26_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_26_din = _BitsToInt_23_value;
end
always_comb begin // combinatorial _BitsToInt_24_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_24_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_24_bits = _91;
end
always_comb begin // combinatorial _IntNarrow_27_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_27_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_27_din = _BitsToInt_24_value;
end
always_comb begin // combinatorial _BitsToInt_25_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_25_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_25_bits = _92;
end
always_comb begin // combinatorial _IntNarrow_28_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_28_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_28_din = _BitsToInt_25_value;
end
always_comb begin // combinatorial _BitsToInt_26_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_26_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_26_bits = _93;
end
always_comb begin // combinatorial _IntNarrow_29_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_29_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_29_din = _BitsToInt_26_value;
end
always_comb begin // combinatorial _BitsToInt_27_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_27_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_27_bits = _94;
end
always_comb begin // combinatorial _IntNarrow_30_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_30_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_30_din = _BitsToInt_27_value;
end
always_comb begin // combinatorial _BitsToInt_28_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_28_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_28_bits = _95;
end
always_comb begin // combinatorial _IntNarrow_31_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_31_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_31_din = _BitsToInt_28_value;
end
always_comb begin // combinatorial _BitsToInt_29_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_29_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_29_bits = _96;
end
always_comb begin // combinatorial _IntNarrow_32_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_32_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_32_din = _BitsToInt_29_value;
end
always_comb begin // combinatorial _BitsToInt_30_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_30_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_30_bits = _97;
end
always_comb begin // combinatorial _IntNarrow_33_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_33_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_33_din = _BitsToInt_30_value;
end
always_comb begin // combinatorial _BitsToInt_31_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_31_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_31_bits = _98;
end
always_comb begin // combinatorial _IntNarrow_34_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_34_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_34_din = _BitsToInt_31_value;
end
always_comb begin // combinatorial _BitsToInt_32_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_32_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_ctrl_start) _BitsToInt_32_bits = _99;
end
always_comb begin // combinatorial _IntNarrow_35_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_35_din = 32'sdx;
	if(_ctrl_start) _IntNarrow_35_din = _BitsToInt_32_value;
end
always_comb begin // combinatorial _enigma_machine_setup
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_enigma_machine_setup = 1'bx;
	_enigma_machine_setup = 1'b0;
	if(_102) _enigma_machine_setup = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_enigma_machine_setup = _enigma_machine_setup;
end
always_comb begin // combinatorial _enigma_machine_rotor_setup
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_enigma_machine_rotor_setup = '{3'dx, 3'dx, 3'dx};
	for(int _v0 = 0; _v0 < 3; _v0 = _v0 + 1) begin
if(_102) _enigma_machine_rotor_setup[_v0] = rotors_to_use[_v0];
end
end
always_comb begin // combinatorial _enigma_machine_rotor_positions
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_enigma_machine_rotor_positions = '{5'dx, 5'dx, 5'dx};
	for(int _v0 = 0; _v0 < 3; _v0 = _v0 + 1) begin
if(_102) _enigma_machine_rotor_positions[_v0] = rotor_positions_to_use[_v0];
end
end
always_comb begin // combinatorial _enigma_machine_ring_positions
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_enigma_machine_ring_positions = '{5'dx, 5'dx, 5'dx};
	for(int _v0 = 0; _v0 < 3; _v0 = _v0 + 1) begin
if(_102) _enigma_machine_ring_positions[_v0] = ring_positions_to_use[_v0];
end
end
always_comb begin // combinatorial _enigma_machine_change_plugs
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_enigma_machine_change_plugs = 1'bx;
	_enigma_machine_change_plugs = 1'b0;
	if(_115) _enigma_machine_change_plugs = 1'b1;
	if(_132) _enigma_machine_change_plugs = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_enigma_machine_change_plugs = _enigma_machine_change_plugs;
end
always_comb begin // combinatorial _enigma_machine_plug
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_enigma_machine_plug = 5'dx;
	if(_115) _enigma_machine_plug = plugboard_iterator;
	if(_132) _enigma_machine_plug = plugboard_iterator;
end
always_comb begin // combinatorial _enigma_machine_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_enigma_machine_value = 5'dx;
	if(_115) _enigma_machine_value = _118;
	if(_132) _enigma_machine_value = _135;
end
always_comb begin // combinatorial _enigma_machine_prep_message_encode
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_enigma_machine_prep_message_encode = 1'bx;
	_enigma_machine_prep_message_encode = 1'b0;
	if(_140) _enigma_machine_prep_message_encode = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_enigma_machine_prep_message_encode = _enigma_machine_prep_message_encode;
end
always_comb begin // combinatorial _reader_request_new_read
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_reader_request_new_read = 1'bx;
	_reader_request_new_read = 1'b0;
	if(_140) _reader_request_new_read = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_reader_request_new_read = _reader_request_new_read;
end
always_comb begin // combinatorial _reader_start_addr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_reader_start_addr = 64'dx;
	if(_140) _reader_start_addr = read_start_addr;
end
always_comb begin // combinatorial _reader_count
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_reader_count = 32'dx;
	if(_140) _reader_count = number_to_transfer;
end
always_comb begin // combinatorial _reader_ready_for_lots_of_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_reader_ready_for_lots_of_data = 1'bx;
	_reader_ready_for_lots_of_data = _writer_may_write;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_reader_ready_for_lots_of_data = _reader_ready_for_lots_of_data;
end
always_comb begin // combinatorial elements
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	elements = '{32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
if(_reader_chunk_valid) elements[_v0] = _reader_elements[_v0];
end
end
always_comb begin // combinatorial chunk_length
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	chunk_length = 1'dx;
	if(_reader_chunk_valid) chunk_length = _reader_chunk_length;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	chunk_length = chunk_length;
end
always_comb begin // combinatorial last
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	last = 1'bx;
	if(_reader_chunk_valid) last = _reader_last;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	last = last;
end
always_comb begin // combinatorial letter_to_parse
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	letter_to_parse = 5'dx;
	if(_reader_chunk_valid) letter_to_parse = _IntNarrow_36_dout;
end
always_comb begin // combinatorial encoded_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	encoded_letter = 5'dx;
	if(__reader_chunk_valid_D1000) encoded_letter = _enigma_machine_encode_letter_final;
end
always_comb begin // combinatorial _BitsToInt_33_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToInt_33_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_reader_chunk_valid) _BitsToInt_33_bits = _150;
end
always_comb begin // combinatorial _IntNarrow_36_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_36_din = 32'sdx;
	if(_reader_chunk_valid) _IntNarrow_36_din = _BitsToInt_33_value;
end
always_comb begin // combinatorial _enigma_machine_parse_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_enigma_machine_parse_letter = 1'bx;
	_enigma_machine_parse_letter = 1'b0;
	if(__reader_chunk_valid_D1000) _enigma_machine_parse_letter = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_enigma_machine_parse_letter = _enigma_machine_parse_letter;
end
always_comb begin // combinatorial _enigma_machine_input_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_enigma_machine_input_letter = 5'dx;
	if(__reader_chunk_valid_D1000) _enigma_machine_input_letter = _letter_to_parse_D1000;
end
always_comb begin // combinatorial to_save
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	to_save = '{32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	if(__reader_chunk_valid_D1000) to_save[0] = _IntToBits_bits;
end
always_comb begin // combinatorial _IntToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntToBits_value = 32'sdx;
	if(__reader_chunk_valid_D1000) _IntToBits_value = encoded_letter;
end
always_comb begin // combinatorial _writer_write
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_writer_write = 1'bx;
	_writer_write = 1'b0;
	if(_reader_chunk_valid) _writer_write = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_writer_write = _writer_write;
end
always_comb begin // combinatorial _writer_elements
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_writer_elements = '{32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
if(__reader_chunk_valid_D1000) _writer_elements[_v0] = to_save[_v0];
end
end
always_comb begin // combinatorial _writer_chunk_length
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_writer_chunk_length = 1'dx;
	if(__reader_chunk_valid_D999) _writer_chunk_length = _chunk_length_D999;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_writer_chunk_length = _writer_chunk_length;
end
always_comb begin // combinatorial _writer_last
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_writer_last = 1'bx;
	if(__reader_chunk_valid_D999) _writer_last = _last_D999;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_writer_last = _writer_last;
end
always_comb begin // combinatorial _ctrl_finish
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ctrl_finish = 1'bx;
	_ctrl_finish = 1'b0;
	if(_writer_write_has_been_committed) _ctrl_finish = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ctrl_finish = _ctrl_finish;
end
always_comb begin // combinatorial _reader_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_reader_rst = 1'bx;
	_reader_rst = 1'b0;
	if(_165) _reader_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_reader_rst = _reader_rst;
end
always_comb begin // combinatorial _writer_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_writer_rst = 1'bx;
	_writer_rst = 1'b0;
	if(_165) _writer_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_writer_rst = _writer_rst;
end
always_comb begin // combinatorial _ctrl_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ctrl_rst = 1'bx;
	_ctrl_rst = 1'b0;
	if(_165) _ctrl_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ctrl_rst = _ctrl_rst;
end
endmodule // enigma_top #()

// IntToBits #(NUM_BITS: 32)
module IntToBits_NUM_BITS_32(
	/* clock */ input clk,
	input wire signed[31:0] value,
	output /*mux_wire*/ logic[31:0] bits
);

	assign bits = value;
endmodule // IntToBits #(NUM_BITS: 32)

// IntNarrow #(FROM_I: -2147483648, TO_I: 2147483648, FROM: 0, TO: 26)
module IntNarrow_FROM_I_N2147483648_TO_I_2147483648_FROM_0_TO_26(
	/* clock */ input clk,
	input wire signed[31:0] din,
	output /*mux_wire*/ logic[4:0] dout
);

	assign dout = din;
endmodule // IntNarrow #(FROM_I: -2147483648, TO_I: 2147483648, FROM: 0, TO: 26)

// BitsToInt #(NUM_BITS: 32)
module BitsToInt_NUM_BITS_32(
	/* clock */ input clk,
	input wire[31:0] bits,
	output /*mux_wire*/ logic signed[31:0] value
);

	assign value = bits;
endmodule // BitsToInt #(NUM_BITS: 32)

// IntNarrow #(FROM_I: 0, TO_I: 4294967296, FROM: 0, TO: 5)
module IntNarrow_FROM_I_0_TO_I_4294967296_FROM_0_TO_5(
	/* clock */ input clk,
	input wire[31:0] din,
	output /*mux_wire*/ logic[2:0] dout
);

	assign dout = din;
endmodule // IntNarrow #(FROM_I: 0, TO_I: 4294967296, FROM: 0, TO: 5)

// BitsToUInt #(NUM_BITS: 32)
module BitsToUInt_NUM_BITS_32(
	/* clock */ input clk,
	input wire[31:0] bits,
	output /*mux_wire*/ logic[31:0] value
);

	assign value = bits;
endmodule // BitsToUInt #(NUM_BITS: 32)

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
/*mux_wire*/ logic _middle_rotor_inst_advance;
wire _middle_rotor_inst_advance_signal;
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
	.setup(_middle_rotor_inst_setup),
	.rotor_to_use(_middle_rotor_inst_rotor_to_use),
	.rotor_starting_position(_middle_rotor_inst_rotor_starting_position),
	.ring_position_in_use(_middle_rotor_inst_ring_position_in_use),
	.advance(_middle_rotor_inst_advance),
	.advance_signal(_middle_rotor_inst_advance_signal),
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
	if(prep_message_encode) middle_rotor_advance = _middle_rotor_inst_advance_signal;
	if(parse_letter) middle_rotor_advance = _middle_rotor_inst_advance_signal;
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
	if(setup) doublestepping <= 1'b1;
	if(prep_message_encode) if(right_rotor_advance) doublestepping <= 1'b1;
	if(prep_message_encode) if(middle_rotor_advance) if(doublestepping) doublestepping <= 1'b0;
	if(parse_letter) if(right_rotor_advance) doublestepping <= 1'b1;
	if(parse_letter) if(middle_rotor_advance) if(doublestepping) doublestepping <= 1'b0;
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
	if(prep_message_encode) if(middle_rotor_advance) if(doublestepping) _middle_rotor_inst_turnover = 1'b1;
	if(parse_letter) if(right_rotor_advance) _middle_rotor_inst_turnover = 1'b1;
	if(parse_letter) if(middle_rotor_advance) if(doublestepping) _middle_rotor_inst_turnover = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_middle_rotor_inst_turnover = _middle_rotor_inst_turnover;
end
always_comb begin // combinatorial _middle_rotor_inst_advance
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_middle_rotor_inst_advance = 1'bx;
	_middle_rotor_inst_advance = 1'b0;
	if(prep_message_encode) _middle_rotor_inst_advance = 1'b1;
	if(parse_letter) _middle_rotor_inst_advance = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_middle_rotor_inst_advance = _middle_rotor_inst_advance;
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

/*state*/ logic[4:0] plugboard_settings[0:25] = '{5'd0, 5'd1, 5'd2, 5'd3, 5'd4, 5'd5, 5'd6, 5'd7, 5'd8, 5'd9, 5'd10, 5'd11, 5'd12, 5'd13, 5'd14, 5'd15, 5'd16, 5'd17, 5'd18, 5'd19, 5'd20, 5'd21, 5'd22, 5'd23, 5'd24, 5'd25};
wire[4:0] _4 = plugboard_settings[input_letter1];
wire[4:0] _6 = plugboard_settings[input_letter2];
always_ff @(posedge clk) begin // state plugboard_settings
	if(set_plug) plugboard_settings[plug] <= value;
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
/*mux_wire*/ logic[4:0] modified_advance_position;
localparam[4:0] turnover_positions[0:4] = '{5'd16, 5'd4, 5'd21, 5'd9, 5'd25};
wire[4:0] _10 = turnover_positions[rotor_in_use];
wire[5:0] _12;
assign _12 = _10 + ring_position;
wire[4:0] _14;
assign _14 = _12 - ((_12 >= 26) ? 26 : 0); // == mod 26
wire _17;
assign _17 = rotor_position == modified_advance_position;
/*mux_wire*/ logic[4:0] substitution_result_left;
/*mux_wire*/ logic[4:0] shift;
wire signed[5:0] _20;
assign _20 = rotor_position - ring_position;
wire[5:0] _22;
assign _22 = _20 + $signed({1'b0, 5'd26});
wire[4:0] _24;
assign _24 = _22 - ((_22 >= 26) ? 26 : 0); // == mod 26
wire[5:0] _28;
assign _28 = letter_index + shift;
wire[4:0] _30;
assign _30 = _28 - ((_28 >= 26) ? 26 : 0); // == mod 26
localparam[4:0] rotors[0:9][0:25] = '{'{5'd4, 5'd10, 5'd12, 5'd5, 5'd11, 5'd6, 5'd3, 5'd16, 5'd21, 5'd25, 5'd13, 5'd19, 5'd14, 5'd22, 5'd24, 5'd7, 5'd23, 5'd20, 5'd18, 5'd15, 5'd0, 5'd8, 5'd1, 5'd17, 5'd2, 5'd9}, '{5'd0, 5'd9, 5'd3, 5'd10, 5'd18, 5'd8, 5'd17, 5'd20, 5'd23, 5'd1, 5'd11, 5'd7, 5'd22, 5'd19, 5'd12, 5'd2, 5'd16, 5'd6, 5'd25, 5'd13, 5'd15, 5'd24, 5'd5, 5'd21, 5'd14, 5'd4}, '{5'd1, 5'd3, 5'd5, 5'd7, 5'd9, 5'd11, 5'd2, 5'd15, 5'd17, 5'd19, 5'd23, 5'd21, 5'd25, 5'd13, 5'd24, 5'd4, 5'd8, 5'd22, 5'd6, 5'd0, 5'd10, 5'd12, 5'd20, 5'd18, 5'd16, 5'd14}, '{5'd4, 5'd18, 5'd14, 5'd21, 5'd15, 5'd25, 5'd9, 5'd0, 5'd24, 5'd16, 5'd20, 5'd8, 5'd17, 5'd7, 5'd23, 5'd11, 5'd13, 5'd5, 5'd19, 5'd6, 5'd10, 5'd3, 5'd2, 5'd12, 5'd22, 5'd1}, '{5'd21, 5'd25, 5'd1, 5'd17, 5'd6, 5'd8, 5'd19, 5'd24, 5'd20, 5'd15, 5'd18, 5'd3, 5'd13, 5'd7, 5'd11, 5'd23, 5'd0, 5'd22, 5'd12, 5'd9, 5'd16, 5'd14, 5'd5, 5'd4, 5'd2, 5'd10}, '{5'd20, 5'd22, 5'd24, 5'd6, 5'd0, 5'd3, 5'd5, 5'd15, 5'd21, 5'd25, 5'd1, 5'd4, 5'd2, 5'd10, 5'd12, 5'd19, 5'd7, 5'd23, 5'd18, 5'd11, 5'd17, 5'd8, 5'd13, 5'd16, 5'd14, 5'd9}, '{5'd0, 5'd9, 5'd15, 5'd2, 5'd25, 5'd22, 5'd17, 5'd11, 5'd5, 5'd1, 5'd3, 5'd10, 5'd14, 5'd19, 5'd24, 5'd20, 5'd16, 5'd6, 5'd4, 5'd13, 5'd7, 5'd23, 5'd12, 5'd8, 5'd21, 5'd18}, '{5'd19, 5'd0, 5'd6, 5'd1, 5'd15, 5'd2, 5'd18, 5'd3, 5'd16, 5'd4, 5'd20, 5'd5, 5'd21, 5'd13, 5'd25, 5'd7, 5'd24, 5'd8, 5'd23, 5'd9, 5'd22, 5'd11, 5'd17, 5'd10, 5'd14, 5'd12}, '{5'd7, 5'd25, 5'd22, 5'd21, 5'd0, 5'd17, 5'd19, 5'd13, 5'd11, 5'd6, 5'd20, 5'd15, 5'd23, 5'd16, 5'd2, 5'd4, 5'd9, 5'd12, 5'd1, 5'd18, 5'd10, 5'd3, 5'd24, 5'd14, 5'd8, 5'd5}, '{5'd16, 5'd2, 5'd24, 5'd11, 5'd23, 5'd22, 5'd4, 5'd13, 5'd5, 5'd19, 5'd25, 5'd14, 5'd18, 5'd12, 5'd21, 5'd9, 5'd20, 5'd3, 5'd10, 5'd6, 5'd8, 5'd0, 5'd17, 5'd15, 5'd7, 5'd1}};
wire[4:0] _31 = rotors[rotor_in_use][_30];
wire signed[5:0] _34;
assign _34 = substitution_result_left - shift;
wire[4:0] _36;
assign _36 = _34 + ((_34 < 0) ? 26 : 0); // == mod 26
/*mux_wire*/ logic[4:0] substitution_result_right;
/*mux_wire*/ logic[4:0] shift_2;
wire signed[5:0] _39;
assign _39 = rotor_position - ring_position;
wire[5:0] _41;
assign _41 = _39 + $signed({1'b0, 5'd26});
wire[4:0] _43;
assign _43 = _41 - ((_41 >= 26) ? 26 : 0); // == mod 26
wire[3:0] _46;
assign _46 = rotor_in_use + 3'd5;
wire[5:0] _49;
assign _49 = rev_letter_index + shift_2;
wire[4:0] _51;
assign _51 = _49 - ((_49 >= 26) ? 26 : 0); // == mod 26
localparam[4:0] rotors_2[0:9][0:25] = '{'{5'd4, 5'd10, 5'd12, 5'd5, 5'd11, 5'd6, 5'd3, 5'd16, 5'd21, 5'd25, 5'd13, 5'd19, 5'd14, 5'd22, 5'd24, 5'd7, 5'd23, 5'd20, 5'd18, 5'd15, 5'd0, 5'd8, 5'd1, 5'd17, 5'd2, 5'd9}, '{5'd0, 5'd9, 5'd3, 5'd10, 5'd18, 5'd8, 5'd17, 5'd20, 5'd23, 5'd1, 5'd11, 5'd7, 5'd22, 5'd19, 5'd12, 5'd2, 5'd16, 5'd6, 5'd25, 5'd13, 5'd15, 5'd24, 5'd5, 5'd21, 5'd14, 5'd4}, '{5'd1, 5'd3, 5'd5, 5'd7, 5'd9, 5'd11, 5'd2, 5'd15, 5'd17, 5'd19, 5'd23, 5'd21, 5'd25, 5'd13, 5'd24, 5'd4, 5'd8, 5'd22, 5'd6, 5'd0, 5'd10, 5'd12, 5'd20, 5'd18, 5'd16, 5'd14}, '{5'd4, 5'd18, 5'd14, 5'd21, 5'd15, 5'd25, 5'd9, 5'd0, 5'd24, 5'd16, 5'd20, 5'd8, 5'd17, 5'd7, 5'd23, 5'd11, 5'd13, 5'd5, 5'd19, 5'd6, 5'd10, 5'd3, 5'd2, 5'd12, 5'd22, 5'd1}, '{5'd21, 5'd25, 5'd1, 5'd17, 5'd6, 5'd8, 5'd19, 5'd24, 5'd20, 5'd15, 5'd18, 5'd3, 5'd13, 5'd7, 5'd11, 5'd23, 5'd0, 5'd22, 5'd12, 5'd9, 5'd16, 5'd14, 5'd5, 5'd4, 5'd2, 5'd10}, '{5'd20, 5'd22, 5'd24, 5'd6, 5'd0, 5'd3, 5'd5, 5'd15, 5'd21, 5'd25, 5'd1, 5'd4, 5'd2, 5'd10, 5'd12, 5'd19, 5'd7, 5'd23, 5'd18, 5'd11, 5'd17, 5'd8, 5'd13, 5'd16, 5'd14, 5'd9}, '{5'd0, 5'd9, 5'd15, 5'd2, 5'd25, 5'd22, 5'd17, 5'd11, 5'd5, 5'd1, 5'd3, 5'd10, 5'd14, 5'd19, 5'd24, 5'd20, 5'd16, 5'd6, 5'd4, 5'd13, 5'd7, 5'd23, 5'd12, 5'd8, 5'd21, 5'd18}, '{5'd19, 5'd0, 5'd6, 5'd1, 5'd15, 5'd2, 5'd18, 5'd3, 5'd16, 5'd4, 5'd20, 5'd5, 5'd21, 5'd13, 5'd25, 5'd7, 5'd24, 5'd8, 5'd23, 5'd9, 5'd22, 5'd11, 5'd17, 5'd10, 5'd14, 5'd12}, '{5'd7, 5'd25, 5'd22, 5'd21, 5'd0, 5'd17, 5'd19, 5'd13, 5'd11, 5'd6, 5'd20, 5'd15, 5'd23, 5'd16, 5'd2, 5'd4, 5'd9, 5'd12, 5'd1, 5'd18, 5'd10, 5'd3, 5'd24, 5'd14, 5'd8, 5'd5}, '{5'd16, 5'd2, 5'd24, 5'd11, 5'd23, 5'd22, 5'd4, 5'd13, 5'd5, 5'd19, 5'd25, 5'd14, 5'd18, 5'd12, 5'd21, 5'd9, 5'd20, 5'd3, 5'd10, 5'd6, 5'd8, 5'd0, 5'd17, 5'd15, 5'd7, 5'd1}};
wire[4:0] _52 = rotors_2[_46][_51];
wire signed[5:0] _55;
assign _55 = substitution_result_right - shift_2;
wire[4:0] _57;
assign _57 = _55 + ((_55 < 0) ? 26 : 0); // == mod 26
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
always_comb begin // combinatorial advance_signal
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	advance_signal = 1'bx;
	if(advance) if(_17) advance_signal = 1'b1;
	if(advance) if(!_17) advance_signal = 1'b0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	advance_signal = advance_signal;
end
always_comb begin // combinatorial modified_advance_position
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	modified_advance_position = 5'dx;
	if(advance) modified_advance_position = _14;
end
always_comb begin // combinatorial encode_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	encode_letter = 5'dx;
	if(encode_left) encode_letter = _36;
end
always_comb begin // combinatorial substitution_result_left
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	substitution_result_left = 5'dx;
	if(encode_left) substitution_result_left = _31;
end
always_comb begin // combinatorial shift
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	shift = 5'dx;
	if(encode_left) shift = _24;
end
always_comb begin // combinatorial rev_encode_letter
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rev_encode_letter = 5'dx;
	if(encode_right) rev_encode_letter = _57;
end
always_comb begin // combinatorial substitution_result_right
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	substitution_result_right = 5'dx;
	if(encode_right) substitution_result_right = _52;
end
always_comb begin // combinatorial shift_2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	shift_2 = 5'dx;
	if(encode_right) shift_2 = _43;
end
endmodule // enigma_rotor_runtime #()

// BitsToUInt #(NUM_BITS: 64)
module BitsToUInt_NUM_BITS_64(
	/* clock */ input clk,
	input wire[63:0] bits,
	output /*mux_wire*/ logic[63:0] value
);

	assign value = bits;
endmodule // BitsToUInt #(NUM_BITS: 64)

// axi4_burst_writer #(AXI_WIDTH: 32, ADDR_WIDTH: 64, ADDR_ALIGN: 4, MAY_PUSH_LATENCY: 415, ADDR_MAY_PUSH_LATENCY: 0)
module axi4_burst_writer_AXI_WIDTH_32_ADDR_WIDTH_64_ADDR_ALIGN_4_MAY_PUSH_LATENCY_415_ADDR_MAY_PUSH_LATENCY_0(
	/* clock */ input clk,
	output /*state*/ logic awvalid,
	input wire awready,
	output /*mux_wire*/ logic[63:0] awaddr,
	output /*mux_wire*/ logic[7:0] awlen,
	output /*mux_wire*/ logic[2:0] awsize,
	output /*mux_wire*/ logic[1:0] awburst,
	output /*mux_wire*/ logic[3:0] awcache,
	output /*mux_wire*/ logic[2:0] awprot,
	output /*mux_wire*/ logic[3:0] awqos,
	output /*mux_wire*/ logic awlock,
	output /*mux_wire*/ logic[3:0] awregion,
	output /*mux_wire*/ logic wvalid,
	input wire wready,
	output /*mux_wire*/ logic wlast,
	output /*mux_wire*/ logic[31:0] wdata,
	output /*mux_wire*/ logic[3:0] wstrb,
	input wire bvalid,
	input wire[1:0] bresp,
	output /*mux_wire*/ logic bready,
	output /*mux_wire*/ logic may_request_new_write,
	input wire request_new_write,
	input wire[63:0] start_addr,
	output /*mux_wire*/ logic write_has_been_committed,
	output /*mux_wire*/ logic may_write,
	input wire write,
	input wire[31:0] elements[0:0],
	input wire[0:0] chunk_length,
	// (zero sized) input chunk_offset
	input wire last,
	input wire rst
);

/*latency*/ logic _write_N2; always_ff @(posedge clk) begin _write_N2 <= write; end
/*latency*/ logic _write_N1; always_ff @(posedge clk) begin _write_N1 <= _write_N2; end
/*latency*/ logic _write_D0; always_ff @(posedge clk) begin _write_D0 <= _write_N1; end
/*latency*/ logic _write_D1; always_ff @(posedge clk) begin _write_D1 <= _write_D0; end
/*latency*/ logic _write_D2; always_ff @(posedge clk) begin _write_D2 <= _write_D1; end
/*latency*/ logic[31:0] _elements_D2[0:0]; always_ff @(posedge clk) begin _elements_D2 <= elements; end
/*latency*/ logic[0:0] _chunk_length_D1; always_ff @(posedge clk) begin _chunk_length_D1 <= chunk_length; end
/*latency*/ logic _last_D1; always_ff @(posedge clk) begin _last_D1 <= last; end
/*state*/ logic[61:0] awaddr_transfer;
wire[63:0] _2;
assign _2 = awaddr_transfer << 2'd2;
localparam[1:0] _3 = 2'b01;
localparam[3:0] _4 = 4'b0010;
localparam[2:0] _5 = 3'b000;
wire _fifo_manager_wvalid;
/*mux_wire*/ logic _fifo_manager_wready;
wire _fifo_manager_wlast;
wire[31:0] _fifo_manager_wdata;
wire[3:0] _fifo_manager_wstrb;
/*mux_wire*/ logic[1:0] _;
wire _addr_manager_may_push_address;
/*mux_wire*/ logic _addr_manager_push_address;
/*mux_wire*/ logic[63:0] _addr_manager_new_addr;
/*state*/ logic is_stored_for_fifo_manager;
// (zero sized) stored_mgr_start_offset
// (zero sized) stored_mgr_end_offset
/*state*/ logic[7:0] stored_mgr_awlen;
wire _21;
assign _21 = ~awvalid;
wire _23;
assign _23 = ~is_stored_for_fifo_manager;
wire _24;
assign _24 = _21 & _23;
wire _burst_is_last_fifo_may_push;
wire _26;
assign _26 = _24 & _burst_is_last_fifo_may_push;
/*mux_wire*/ logic _addr_manager_may_push_burst;
wire _addr_manager_push_burst;
wire[61:0] _addr_manager_awaddr;
wire[7:0] _addr_manager_awlen;
// (zero sized) _addr_manager_start_offset
// (zero sized) _addr_manager_end_offset
wire _addr_manager_is_last;
wire _addr_manager_is_empty_burst;
/*mux_wire*/ logic[61:0] mgr_awaddr;
/*mux_wire*/ logic[7:0] mgr_awlen;
// (zero sized) mgr_start_offset
// (zero sized) mgr_end_offset
/*mux_wire*/ logic mgr_is_last;
/*mux_wire*/ logic is_empty_burst;
wire _34;
assign _34 = ~is_empty_burst;
wire _36;
assign _36 = ~is_empty_burst;
/*mux_wire*/ logic _burst_is_last_tuple_v1_i;
/*mux_wire*/ logic _burst_is_last_tuple_v2_i;
wire[1:0] _burst_is_last_tuple_packed_o;
/*mux_wire*/ logic _burst_is_last_fifo_push;
/*mux_wire*/ logic[1:0] _burst_is_last_fifo_push_data;
wire _43;
assign _43 = awready & awvalid;
wire _fifo_manager_may_write_burst;
/*mux_wire*/ logic _fifo_manager_write_burst;
/*mux_wire*/ logic[7:0] _fifo_manager_transfer_awlen;
// (zero sized) _fifo_manager_start_offset
// (zero sized) _fifo_manager_end_offset
wire _burst_is_last_fifo_pop_available;
wire[1:0] _burst_is_last_fifo_pop_data;
/*mux_wire*/ logic[1:0] packed_info;
/*mux_wire*/ logic last_burst_just_finished;
/*mux_wire*/ logic burst_was_empty;
/*mux_wire*/ logic[1:0] _burst_is_last_tuple_packed_i;
wire _burst_is_last_tuple_v1_o;
wire _burst_is_last_tuple_v2_o;
/*mux_wire*/ logic _burst_is_last_fifo_pop;
wire _fifo_manager_may_push;
/*mux_wire*/ logic[0:0] chunk_length_d;
/*latency*/ logic[0:0] _chunk_length_d_D2; always_ff @(posedge clk) begin _chunk_length_d_D2 <= chunk_length_d; end
/*mux_wire*/ logic last_d;
// (zero sized) fifo_offset
/*mux_wire*/ logic _addr_manager_push_elements;
/*mux_wire*/ logic[0:0] _addr_manager_num_elements;
/*mux_wire*/ logic _addr_manager_is_last_elem;
// (zero sized) _addr_manager_fifo_offset
// (zero sized) _71
// (zero sized) _72
/*mux_wire*/ logic _fifo_manager_push;
/*mux_wire*/ logic[31:0] _fifo_manager_write_v[0:0];
/*mux_wire*/ logic[0:0] _fifo_manager_num_elems;
// (zero sized) _fifo_manager_fifo_offset
/*mux_wire*/ logic _addr_manager_rst;
/*mux_wire*/ logic _fifo_manager_rst;
/*mux_wire*/ logic _burst_is_last_fifo_rst;
write_burst_address_manager_AXI_WIDTH_32_ADDR_WIDTH_64_NUM_PARALLEL_ELEMENTS_1_ADDR_QUEUE_SIZE_32_ADDR_MAY_PUSH_LATENCY_0_TOTAL_ELEMENTS_THAT_CAN_BE_STORED_1024 addr_manager(
	.clk(clk),
	.push_burst(_addr_manager_push_burst),
	.awaddr(_addr_manager_awaddr),
	.awlen(_addr_manager_awlen),
	// (zero sized port) .start_offset(_addr_manager_start_offset)
	// (zero sized port) .end_offset(_addr_manager_end_offset)
	.is_last(_addr_manager_is_last),
	.is_empty_burst(_addr_manager_is_empty_burst),
	.may_push_burst(_addr_manager_may_push_burst),
	.may_push_address(_addr_manager_may_push_address),
	.push_address(_addr_manager_push_address),
	.new_addr(_addr_manager_new_addr),
	.push_elements(_addr_manager_push_elements),
	.num_elements(_addr_manager_num_elements),
	.is_last_elem(_addr_manager_is_last_elem),
	// (zero sized port) .fifo_offset(_addr_manager_fifo_offset)
	.rst(_addr_manager_rst)
);
burst_write_fifo_manager_AXI_WIDTH_32_NUM_PARALLEL_ELEMENTS_1_MAX_BURST_256_DEPTH_1024_MAY_PUSH_LATENCY_417 fifo_manager(
	.clk(clk),
	.may_push(_fifo_manager_may_push),
	.push(_fifo_manager_push),
	.write_v(_fifo_manager_write_v),
	.num_elems(_fifo_manager_num_elems),
	// (zero sized port) .fifo_offset(_fifo_manager_fifo_offset)
	.wvalid(_fifo_manager_wvalid),
	.wready(_fifo_manager_wready),
	.wlast(_fifo_manager_wlast),
	.wdata(_fifo_manager_wdata),
	.wstrb(_fifo_manager_wstrb),
	.may_write_burst(_fifo_manager_may_write_burst),
	.write_burst(_fifo_manager_write_burst),
	.transfer_awlen(_fifo_manager_transfer_awlen),
	// (zero sized port) .start_offset(_fifo_manager_start_offset)
	// (zero sized port) .end_offset(_fifo_manager_end_offset)
	.rst(_fifo_manager_rst)
);
Tuple2_T1_type_bool_T2_type_bool burst_is_last_tuple(
	.clk(clk),
	.v1_i(_burst_is_last_tuple_v1_i),
	.v2_i(_burst_is_last_tuple_v2_i),
	.packed_o(_burst_is_last_tuple_packed_o),
	.packed_i(_burst_is_last_tuple_packed_i),
	.v1_o(_burst_is_last_tuple_v1_o),
	.v2_o(_burst_is_last_tuple_v2_o)
);
FWFT_T_type_bool_2_DEPTH_256_MAY_PUSH_LATENCY_0 burst_is_last_fifo(
	.clk(clk),
	.may_push(_burst_is_last_fifo_may_push),
	.push(_burst_is_last_fifo_push),
	.push_data(_burst_is_last_fifo_push_data),
	.pop_available(_burst_is_last_fifo_pop_available),
	.pop_data(_burst_is_last_fifo_pop_data),
	.pop(_burst_is_last_fifo_pop),
	.rst(_burst_is_last_fifo_rst)
);
always_ff @(posedge clk) begin // state awvalid
	if(_addr_manager_push_burst) awvalid <= _34;
	if(_43) awvalid <= 1'b0;
	if(rst) awvalid <= 1'b0;
end
always_ff @(posedge clk) begin // state awaddr_transfer
	if(_addr_manager_push_burst) awaddr_transfer <= mgr_awaddr;
end
always_comb begin // combinatorial awaddr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awaddr = 64'dx;
	awaddr = _2;
end
always_comb begin // combinatorial awlen
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awlen = 8'dx;
	awlen = stored_mgr_awlen;
end
always_comb begin // combinatorial awsize
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awsize = 3'dx;
	awsize = 2'd2;
end
always_comb begin // combinatorial awburst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awburst = 2'bxx;
	awburst = _3;
end
always_comb begin // combinatorial awcache
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awcache = 4'bxxxx;
	awcache = _4;
end
always_comb begin // combinatorial awprot
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awprot = 3'bxxx;
	awprot = _5;
end
always_comb begin // combinatorial awqos
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awqos = 4'dx;
	awqos = 1'd0;
end
always_comb begin // combinatorial awlock
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awlock = 1'bx;
	awlock = 1'b0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	awlock = awlock;
end
always_comb begin // combinatorial awregion
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awregion = 4'dx;
	awregion = 1'd0;
end
always_comb begin // combinatorial wvalid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wvalid = 1'bx;
	wvalid = _fifo_manager_wvalid;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	wvalid = wvalid;
end
always_comb begin // combinatorial _fifo_manager_wready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_manager_wready = 1'bx;
	_fifo_manager_wready = wready;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_fifo_manager_wready = _fifo_manager_wready;
end
always_comb begin // combinatorial wlast
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wlast = 1'bx;
	wlast = _fifo_manager_wlast;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	wlast = wlast;
end
always_comb begin // combinatorial wdata
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	wdata = _fifo_manager_wdata;
end
always_comb begin // combinatorial wstrb
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wstrb = 4'bxxxx;
	wstrb = _fifo_manager_wstrb;
end
always_comb begin // combinatorial _
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ = 2'bxx;
	_ = bresp;
end
always_comb begin // combinatorial bready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	bready = 1'bx;
	bready = 1'b0;
	if(_burst_is_last_fifo_pop_available) if(!burst_was_empty) bready = 1'b1;
	if(rst) bready = 1'b0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	bready = bready;
end
always_comb begin // combinatorial may_request_new_write
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_request_new_write = 1'bx;
	may_request_new_write = 1'b0;
	if(_addr_manager_may_push_address) may_request_new_write = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	may_request_new_write = may_request_new_write;
end
always_comb begin // combinatorial _addr_manager_push_address
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_addr_manager_push_address = 1'bx;
	_addr_manager_push_address = 1'b0;
	if(request_new_write) _addr_manager_push_address = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_addr_manager_push_address = _addr_manager_push_address;
end
always_comb begin // combinatorial _addr_manager_new_addr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_addr_manager_new_addr = 64'dx;
	if(request_new_write) _addr_manager_new_addr = start_addr;
end
always_ff @(posedge clk) begin // state is_stored_for_fifo_manager
	if(_addr_manager_push_burst) is_stored_for_fifo_manager <= _36;
	if(_fifo_manager_may_write_burst) if(is_stored_for_fifo_manager) is_stored_for_fifo_manager <= 1'b0;
	if(rst) is_stored_for_fifo_manager <= 1'b0;
end
always_ff @(posedge clk) begin // state stored_mgr_awlen
	if(_addr_manager_push_burst) stored_mgr_awlen <= mgr_awlen;
end
always_comb begin // combinatorial _addr_manager_may_push_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_addr_manager_may_push_burst = 1'bx;
	_addr_manager_may_push_burst = 1'b0;
	if(_26) _addr_manager_may_push_burst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_addr_manager_may_push_burst = _addr_manager_may_push_burst;
end
always_comb begin // combinatorial mgr_awaddr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mgr_awaddr = 62'dx;
	if(_addr_manager_push_burst) mgr_awaddr = _addr_manager_awaddr;
end
always_comb begin // combinatorial mgr_awlen
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mgr_awlen = 8'dx;
	if(_addr_manager_push_burst) mgr_awlen = _addr_manager_awlen;
end
always_comb begin // combinatorial mgr_is_last
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mgr_is_last = 1'bx;
	if(_addr_manager_push_burst) mgr_is_last = _addr_manager_is_last;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	mgr_is_last = mgr_is_last;
end
always_comb begin // combinatorial is_empty_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_empty_burst = 1'bx;
	if(_addr_manager_push_burst) is_empty_burst = _addr_manager_is_empty_burst;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	is_empty_burst = is_empty_burst;
end
always_comb begin // combinatorial _burst_is_last_tuple_v1_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_burst_is_last_tuple_v1_i = 1'bx;
	if(_addr_manager_push_burst) _burst_is_last_tuple_v1_i = mgr_is_last;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_burst_is_last_tuple_v1_i = _burst_is_last_tuple_v1_i;
end
always_comb begin // combinatorial _burst_is_last_tuple_v2_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_burst_is_last_tuple_v2_i = 1'bx;
	if(_addr_manager_push_burst) _burst_is_last_tuple_v2_i = is_empty_burst;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_burst_is_last_tuple_v2_i = _burst_is_last_tuple_v2_i;
end
always_comb begin // combinatorial _burst_is_last_fifo_push
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_burst_is_last_fifo_push = 1'bx;
	_burst_is_last_fifo_push = 1'b0;
	if(_addr_manager_push_burst) _burst_is_last_fifo_push = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_burst_is_last_fifo_push = _burst_is_last_fifo_push;
end
always_comb begin // combinatorial _burst_is_last_fifo_push_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_burst_is_last_fifo_push_data = 2'bxx;
	if(_addr_manager_push_burst) _burst_is_last_fifo_push_data = _burst_is_last_tuple_packed_o;
end
always_comb begin // combinatorial _fifo_manager_write_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_manager_write_burst = 1'bx;
	_fifo_manager_write_burst = 1'b0;
	if(_fifo_manager_may_write_burst) if(is_stored_for_fifo_manager) _fifo_manager_write_burst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_fifo_manager_write_burst = _fifo_manager_write_burst;
end
always_comb begin // combinatorial _fifo_manager_transfer_awlen
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_manager_transfer_awlen = 8'dx;
	if(_fifo_manager_may_write_burst) if(is_stored_for_fifo_manager) _fifo_manager_transfer_awlen = stored_mgr_awlen;
end
always_comb begin // combinatorial write_has_been_committed
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	write_has_been_committed = 1'bx;
	write_has_been_committed = 1'b0;
	if(_burst_is_last_fifo_pop_available) if(burst_was_empty) write_has_been_committed = 1'b1;
	if(_burst_is_last_fifo_pop_available) if(!burst_was_empty) if(bvalid) if(last_burst_just_finished) write_has_been_committed = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	write_has_been_committed = write_has_been_committed;
end
always_comb begin // combinatorial packed_info
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	packed_info = 2'bxx;
	if(_burst_is_last_fifo_pop_available) packed_info = _burst_is_last_fifo_pop_data;
end
always_comb begin // combinatorial last_burst_just_finished
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	last_burst_just_finished = 1'bx;
	if(_burst_is_last_fifo_pop_available) last_burst_just_finished = _burst_is_last_tuple_v1_o;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	last_burst_just_finished = last_burst_just_finished;
end
always_comb begin // combinatorial burst_was_empty
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	burst_was_empty = 1'bx;
	if(_burst_is_last_fifo_pop_available) burst_was_empty = _burst_is_last_tuple_v2_o;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	burst_was_empty = burst_was_empty;
end
always_comb begin // combinatorial _burst_is_last_tuple_packed_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_burst_is_last_tuple_packed_i = 2'bxx;
	if(_burst_is_last_fifo_pop_available) _burst_is_last_tuple_packed_i = packed_info;
end
always_comb begin // combinatorial _burst_is_last_fifo_pop
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_burst_is_last_fifo_pop = 1'bx;
	_burst_is_last_fifo_pop = 1'b0;
	if(_burst_is_last_fifo_pop_available) if(burst_was_empty) _burst_is_last_fifo_pop = 1'b1;
	if(_burst_is_last_fifo_pop_available) if(!burst_was_empty) if(bvalid) _burst_is_last_fifo_pop = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_burst_is_last_fifo_pop = _burst_is_last_fifo_pop;
end
always_comb begin // combinatorial may_write
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_write = 1'bx;
	may_write = _fifo_manager_may_push;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	may_write = may_write;
end
always_comb begin // combinatorial chunk_length_d
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	chunk_length_d = 1'dx;
	if(_write_D1) chunk_length_d = _chunk_length_D1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	chunk_length_d = chunk_length_d;
end
always_comb begin // combinatorial last_d
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	last_d = 1'bx;
	if(_write_D1) last_d = _last_D1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	last_d = last_d;
end
always_comb begin // combinatorial _addr_manager_push_elements
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_addr_manager_push_elements = 1'bx;
	_addr_manager_push_elements = 1'b0;
	if(_write_D1) _addr_manager_push_elements = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_addr_manager_push_elements = _addr_manager_push_elements;
end
always_comb begin // combinatorial _addr_manager_num_elements
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_addr_manager_num_elements = 1'dx;
	if(_write_D1) _addr_manager_num_elements = chunk_length_d;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_addr_manager_num_elements = _addr_manager_num_elements;
end
always_comb begin // combinatorial _addr_manager_is_last_elem
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_addr_manager_is_last_elem = 1'bx;
	if(_write_D1) _addr_manager_is_last_elem = last_d;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_addr_manager_is_last_elem = _addr_manager_is_last_elem;
end
always_comb begin // combinatorial _fifo_manager_push
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_manager_push = 1'bx;
	_fifo_manager_push = 1'b0;
	if(_write_D2) _fifo_manager_push = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_fifo_manager_push = _fifo_manager_push;
end
always_comb begin // combinatorial _fifo_manager_write_v
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_manager_write_v = '{32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
if(_write_D2) _fifo_manager_write_v[_v0] = _elements_D2[_v0];
end
end
always_comb begin // combinatorial _fifo_manager_num_elems
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_manager_num_elems = 1'dx;
	if(_write_D2) _fifo_manager_num_elems = _chunk_length_d_D2;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_fifo_manager_num_elems = _fifo_manager_num_elems;
end
always_comb begin // combinatorial _addr_manager_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_addr_manager_rst = 1'bx;
	_addr_manager_rst = 1'b0;
	if(rst) _addr_manager_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_addr_manager_rst = _addr_manager_rst;
end
always_comb begin // combinatorial _fifo_manager_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_manager_rst = 1'bx;
	_fifo_manager_rst = 1'b0;
	if(rst) _fifo_manager_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_fifo_manager_rst = _fifo_manager_rst;
end
always_comb begin // combinatorial _burst_is_last_fifo_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_burst_is_last_fifo_rst = 1'bx;
	_burst_is_last_fifo_rst = 1'b0;
	if(rst) _burst_is_last_fifo_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_burst_is_last_fifo_rst = _burst_is_last_fifo_rst;
end
endmodule // axi4_burst_writer #(AXI_WIDTH: 32, ADDR_WIDTH: 64, ADDR_ALIGN: 4, MAY_PUSH_LATENCY: 415, ADDR_MAY_PUSH_LATENCY: 0)

// FWFT #(T: type bool #()[2], DEPTH: 256, MAY_PUSH_LATENCY: 0)
module FWFT_T_type_bool_2_DEPTH_256_MAY_PUSH_LATENCY_0(
	/* clock */ input clk,
	output /*mux_wire*/ logic may_push,
	input wire push,
	input wire[1:0] push_data,
	output /*mux_wire*/ logic pop_available,
	output /*mux_wire*/ logic[1:0] pop_data,
	input wire pop,
	input wire rst
);

/*state*/ logic[1:0] mem[0:255];
/*state*/ logic[7:0] read_addr;
/*state*/ logic[7:0] write_addr;
/*state*/ logic[1:0] outflow_path_valids_reg;
/*state*/ logic[1:0] outflow_path_elems_reg[0:1];
/*mux_wire*/ logic[2:0] outflow_path_valids;
/*mux_wire*/ logic[1:0] outflow_path_elems[0:2];
/*mux_wire*/ logic[2:0] will_shifts;
wire _3;
assign _3 = read_addr != write_addr;
wire[1:0] _5 = mem[read_addr];
wire[1:0] _6 = outflow_path_elems_reg[0];
wire _7 = outflow_path_valids_reg[0];
wire _8 = will_shifts[0];
wire _9 = outflow_path_valids[0];
wire _10;
assign _10 = ~_9;
wire _11;
assign _11 = _8 | _10;
wire _12 = will_shifts[1];
wire _13 = outflow_path_valids[1];
wire[1:0] _14 = outflow_path_elems[1];
wire[1:0] _15 = outflow_path_elems_reg[1];
wire _16 = outflow_path_valids_reg[1];
wire _17 = will_shifts[1];
wire _18 = outflow_path_valids[1];
wire _19;
assign _19 = ~_18;
wire _20;
assign _20 = _17 | _19;
wire _21 = will_shifts[2];
wire _22 = outflow_path_valids[2];
wire[1:0] _23 = outflow_path_elems[2];
/*mux_wire*/ logic[7:0] space_remaining;
wire signed[8:0] _26;
assign _26 = read_addr - write_addr;
wire signed[8:0] _28;
assign _28 = _26 - $signed({1'b0, 1'd1});
wire[7:0] _29;
assign _29 = _28; // == mod 256 (target is 8 bits wide)
wire _32;
assign _32 = space_remaining > 1'd1;
/*mux_wire*/ logic _LatencyOffset_din;
wire _LatencyOffset_dout;
/*latency*/ logic __LatencyOffset_dout_D0; always_ff @(posedge clk) begin __LatencyOffset_dout_D0 <= _LatencyOffset_dout; end
/*mux_wire*/ logic[1:0] _ToBits_value;
wire[1:0] _ToBits_bits;
wire[8:0] _37;
assign _37 = write_addr + 1'd1;
wire[7:0] _38;
assign _38 = _37; // == mod 256 (target is 8 bits wide)
wire _39 = outflow_path_valids[2];
wire _40 = will_shifts[2];
wire _41;
assign _41 = _39 & _40;
wire[8:0] _44;
assign _44 = read_addr + 1'd1;
wire[7:0] _45;
assign _45 = _44; // == mod 256 (target is 8 bits wide)
wire _47 = outflow_path_valids[0];
wire[1:0] _48 = outflow_path_elems[0];
/*mux_wire*/ logic[1:0] _FromBits_bits;
wire[1:0] _FromBits_value;
LatencyOffset_T_type_bool_OFFSET_N1 LatencyOffset(
	.clk(clk),
	.din(_LatencyOffset_din),
	.dout(_LatencyOffset_dout)
);
ToBits_T_type_bool_2 ToBits(
	.clk(clk),
	.value(_ToBits_value),
	.bits(_ToBits_bits)
);
FromBits_T_type_bool_2 FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
always_ff @(posedge clk) begin // state mem
	if(push) mem[write_addr] <= _ToBits_bits;
end
always_ff @(posedge clk) begin // state read_addr
	if(_41) read_addr <= _45;
	if(rst) read_addr <= 1'd0;
end
always_ff @(posedge clk) begin // state write_addr
	if(push) write_addr <= _38;
	if(rst) write_addr <= 1'd0;
end
always_ff @(posedge clk) begin // state outflow_path_valids_reg
	if(_12) outflow_path_valids_reg[0] <= _13;
	if(_21) outflow_path_valids_reg[1] <= _22;
	if(rst) outflow_path_valids_reg[0] <= 1'b0;
	if(rst) outflow_path_valids_reg[1] <= 1'b0;
end
always_ff @(posedge clk) begin // state outflow_path_elems_reg
	if(_12) outflow_path_elems_reg[0] <= _14;
	if(_21) outflow_path_elems_reg[1] <= _23;
end
always_comb begin // combinatorial outflow_path_valids
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	outflow_path_valids = 3'bxxx;
	outflow_path_valids[2] = _3;
	outflow_path_valids[0] = _7;
	outflow_path_valids[1] = _16;
end
always_comb begin // combinatorial outflow_path_elems
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	outflow_path_elems = '{2'bxx, 2'bxx, 2'bxx};
	outflow_path_elems[2] = _5;
	outflow_path_elems[0] = _6;
	outflow_path_elems[1] = _15;
end
always_comb begin // combinatorial will_shifts
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	will_shifts = 3'bxxx;
	will_shifts[1] = _11;
	will_shifts[2] = _20;
	will_shifts[0] = 1'b0;
	if(pop_available) if(pop) will_shifts[0] = 1'b1;
end
always_comb begin // combinatorial space_remaining
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	space_remaining = 8'dx;
	space_remaining = _29;
end
always_comb begin // combinatorial may_push
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_push = 1'bx;
	may_push = __LatencyOffset_dout_D0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	may_push = may_push;
end
always_comb begin // combinatorial _LatencyOffset_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_din = 1'bx;
	_LatencyOffset_din = _32;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_LatencyOffset_din = _LatencyOffset_din;
end
always_comb begin // combinatorial _ToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_value = 2'bxx;
	if(push) _ToBits_value = push_data;
end
always_comb begin // combinatorial pop_available
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_available = 1'bx;
	pop_available = 1'b0;
	if(_47) pop_available = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	pop_available = pop_available;
end
always_comb begin // combinatorial pop_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_data = 2'bxx;
	if(_47) pop_data = _FromBits_value;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 2'bxx;
	if(_47) _FromBits_bits = _48;
end
endmodule // FWFT #(T: type bool #()[2], DEPTH: 256, MAY_PUSH_LATENCY: 0)

// Tuple2 #(T1: type bool #(), T2: type bool #())
module Tuple2_T1_type_bool_T2_type_bool(
	/* clock */ input clk,
	input wire v1_i,
	input wire v2_i,
	output /*mux_wire*/ logic[1:0] packed_o,
	input wire[1:0] packed_i,
	output /*mux_wire*/ logic v1_o,
	output /*mux_wire*/ logic v2_o
);

genvar _g0;
/*mux_wire*/ logic _ToBits_value;
wire[0:0] _ToBits_bits;
/*mux_wire*/ logic _ToBits_2_value;
wire[0:0] _ToBits_2_bits;
wire[0:0] _3;
generate
for(_g0 = 0; _g0 < 1; _g0 = _g0 + 1) begin
assign _3[_g0] = packed_i[_g0];
end
endgenerate
/*mux_wire*/ logic[0:0] _FromBits_bits;
wire _FromBits_value;
wire[0:0] _4;
generate
for(_g0 = 0; _g0 < 1; _g0 = _g0 + 1) begin
assign _4[_g0] = packed_i[1 + _g0];
end
endgenerate
/*mux_wire*/ logic[0:0] _FromBits_2_bits;
wire _FromBits_2_value;
ToBits_T_type_bool ToBits(
	.clk(clk),
	.value(_ToBits_value),
	.bits(_ToBits_bits)
);
ToBits_T_type_bool ToBits_2(
	.clk(clk),
	.value(_ToBits_2_value),
	.bits(_ToBits_2_bits)
);
FromBits_T_type_bool FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
FromBits_T_type_bool FromBits_2(
	.clk(clk),
	.bits(_FromBits_2_bits),
	.value(_FromBits_2_value)
);
always_comb begin // combinatorial packed_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	packed_o = 2'bxx;
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
packed_o[_v0] = _ToBits_bits[_v0];
end
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
packed_o[1 + _v0] = _ToBits_2_bits[_v0];
end
end
always_comb begin // combinatorial _ToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_value = 1'bx;
	_ToBits_value = v1_i;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ToBits_value = _ToBits_value;
end
always_comb begin // combinatorial _ToBits_2_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_2_value = 1'bx;
	_ToBits_2_value = v2_i;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ToBits_2_value = _ToBits_2_value;
end
always_comb begin // combinatorial v1_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v1_o = 1'bx;
	v1_o = _FromBits_value;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	v1_o = v1_o;
end
always_comb begin // combinatorial v2_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v2_o = 1'bx;
	v2_o = _FromBits_2_value;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	v2_o = v2_o;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 1'bx;
	_FromBits_bits = _3;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_FromBits_bits = _FromBits_bits;
end
always_comb begin // combinatorial _FromBits_2_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_2_bits = 1'bx;
	_FromBits_2_bits = _4;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_FromBits_2_bits = _FromBits_2_bits;
end
endmodule // Tuple2 #(T1: type bool #(), T2: type bool #())

// burst_write_fifo_manager #(AXI_WIDTH: 32, NUM_PARALLEL_ELEMENTS: 1, MAX_BURST: 256, DEPTH: 1024, MAY_PUSH_LATENCY: 417)
module burst_write_fifo_manager_AXI_WIDTH_32_NUM_PARALLEL_ELEMENTS_1_MAX_BURST_256_DEPTH_1024_MAY_PUSH_LATENCY_417(
	/* clock */ input clk,
	output /*mux_wire*/ logic may_push,
	input wire push,
	input wire[31:0] write_v[0:0],
	input wire[0:0] num_elems,
	// (zero sized) input fifo_offset
	output /*mux_wire*/ logic wvalid,
	input wire wready,
	output /*state*/ logic wlast,
	output /*mux_wire*/ logic[31:0] wdata,
	output /*mux_wire*/ logic[3:0] wstrb,
	output /*mux_wire*/ logic may_write_burst,
	input wire write_burst,
	input wire[7:0] transfer_awlen,
	// (zero sized) input start_offset
	// (zero sized) input end_offset
	input wire rst
);

/*latency*/ logic _push_D1; always_ff @(posedge clk) begin _push_D1 <= push; end
/*mux_wire*/ logic do_rst;
/*state*/ logic[7:0] transfers_remaining;
/*state*/ logic pop_strobe_valid;
/*state*/ logic[0:0] pop_strobe;
// (zero sized) stored_end_offset
/*mux_wire*/ logic[31:0] push_elements[0:0];
/*mux_wire*/ logic[0:0] push_strobe;
/*mux_wire*/ logic[0:0] may_pushes;
wire _2;
assign _2 = &may_pushes;
/*latency*/ logic __2_N418; always_ff @(posedge clk) begin __2_N418 <= _2; end
/*latency*/ logic __2_N417; always_ff @(posedge clk) begin __2_N417 <= __2_N418; end
/*mux_wire*/ logic[31:0] _RotateRight_data[0:0];
// (zero sized) _RotateRight_offset
wire[31:0] _RotateRight_rotated_data[0:0];
/*latency*/ logic[31:0] __RotateRight_rotated_data_D1[0:0]; always_ff @(posedge clk) begin __RotateRight_rotated_data_D1 <= _RotateRight_rotated_data; end
/*mux_wire*/ logic[0:0] _MakeStrobe_chunk_length;
// (zero sized) _MakeStrobe_chunk_offset
wire[0:0] _MakeStrobe_strobe;
/*latency*/ logic[0:0] __MakeStrobe_strobe_D1; always_ff @(posedge clk) begin __MakeStrobe_strobe_D1 <= _MakeStrobe_strobe; end
localparam[0:0] RepeatGen = 1'b0;
wire _7 = pop_strobe[0];
wire _8 = pop_strobe[0];
wire _9 = pop_strobe[0];
wire _10 = pop_strobe[0];
/*mux_wire*/ logic[0:0] pop_available;
localparam[0:0] RepeatGen_2 = 1'b0;
wire[0:0] _13;
assign _13 = ~pop_strobe;
wire[0:0] _14;
assign _14 = pop_available | _13;
wire _15;
assign _15 = &_14;
wire _17;
assign _17 = _15 & pop_strobe_valid;
/*mux_wire*/ logic do_commit_pop;
wire _20;
assign _20 = wvalid & wready;
/*mux_wire*/ logic may_write_strobe;
wire _23;
assign _23 = wvalid & wready;
wire _25;
assign _25 = ~pop_strobe_valid;
wire _26;
assign _26 = _23 | _25;
wire _29;
assign _29 = wvalid & wready;
wire _30 = push_strobe[0];
wire[31:0] _31 = push_elements[0];
/*mux_wire*/ logic _fifo_push;
/*mux_wire*/ logic[31:0] _fifo_push_data;
wire _fifo_may_push;
wire _fifo_pop_available;
wire[31:0] _fifo_pop_data;
/*mux_wire*/ logic[31:0] pop_data;
wire _37 = pop_strobe[0];
wire _38;
assign _38 = do_commit_pop & _37;
/*mux_wire*/ logic _fifo_pop;
/*mux_wire*/ logic _fifo_rst;
wire _48;
assign _48 = transfers_remaining == 1'd0;
wire signed[8:0] _52;
assign _52 = transfers_remaining - 1'd1;
/*mux_wire*/ logic signed[8:0] _IntNarrow_din;
wire[7:0] _IntNarrow_dout;
wire _55;
assign _55 = transfers_remaining == 1'd1;
wire[0:0] _58;
assign _58 = 1'd0 + 1'd1;
/*mux_wire*/ logic[0:0] _MakeMask_up_to;
wire[0:0] _MakeMask_bits;
localparam[0:0] RepeatGen_3 = 1'b1;
/*mux_wire*/ logic[0:0] lower_mask;
/*mux_wire*/ logic[0:0] _MakeMask_2_up_to;
wire[0:0] _MakeMask_2_bits;
wire[0:0] _62;
assign _62 = ~_MakeMask_2_bits;
/*mux_wire*/ logic[0:0] upper_mask;
wire[0:0] _65;
assign _65 = 1'd0 + 1'd1;
/*mux_wire*/ logic[0:0] _MakeMask_3_up_to;
wire[0:0] _MakeMask_3_bits;
wire _68;
assign _68 = transfer_awlen == 1'd0;
wire[0:0] _71;
assign _71 = upper_mask & lower_mask;
RotateRight_T_type_bool_32_ARRAY_LEN_1 RotateRight(
	.clk(clk),
	.data(_RotateRight_data),
	// (zero sized port) .offset(_RotateRight_offset)
	.rotated_data(_RotateRight_rotated_data)
);
MakeStrobe_STROBE_WIDTH_1 MakeStrobe(
	.clk(clk),
	.chunk_length(_MakeStrobe_chunk_length),
	// (zero sized port) .chunk_offset(_MakeStrobe_chunk_offset)
	.strobe(_MakeStrobe_strobe)
);
FWFT_T_type_bool_32_DEPTH_1024_MAY_PUSH_LATENCY_420 fifo(
	.clk(clk),
	.may_push(_fifo_may_push),
	.push(_fifo_push),
	.push_data(_fifo_push_data),
	.pop_available(_fifo_pop_available),
	.pop_data(_fifo_pop_data),
	.pop(_fifo_pop),
	.rst(_fifo_rst)
);
IntNarrow_FROM_I_N1_TO_I_255_FROM_0_TO_256 IntNarrow(
	.clk(clk),
	.din(_IntNarrow_din),
	.dout(_IntNarrow_dout)
);
MakeMask_SIZE_1 MakeMask(
	.clk(clk),
	.up_to(_MakeMask_up_to),
	.bits(_MakeMask_bits)
);
MakeMask_SIZE_1 MakeMask_2(
	.clk(clk),
	.up_to(_MakeMask_2_up_to),
	.bits(_MakeMask_2_bits)
);
MakeMask_SIZE_1 MakeMask_3(
	.clk(clk),
	.up_to(_MakeMask_3_up_to),
	.bits(_MakeMask_3_bits)
);
always_comb begin // combinatorial do_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	do_rst = 1'bx;
	do_rst = 1'b0;
	if(rst) do_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	do_rst = do_rst;
end
always_ff @(posedge clk) begin // state transfers_remaining
	if(may_write_strobe) if(!_48) transfers_remaining <= _IntNarrow_dout;
	if(write_burst) transfers_remaining <= transfer_awlen;
	if(rst) transfers_remaining <= 1'd0;
end
always_ff @(posedge clk) begin // state pop_strobe_valid
	if(_29) pop_strobe_valid <= 1'b0;
	if(may_write_strobe) if(!_48) pop_strobe_valid <= 1'b1;
	if(write_burst) pop_strobe_valid <= 1'b1;
	if(rst) pop_strobe_valid <= 1'b0;
end
always_ff @(posedge clk) begin // state pop_strobe
	if(may_write_strobe) if(_55) pop_strobe <= _MakeMask_bits;
	if(may_write_strobe) if(!_55) pop_strobe <= RepeatGen_3;
	if(write_burst) if(_68) pop_strobe <= _71;
	if(write_burst) if(!_68) pop_strobe <= lower_mask;
end
always_comb begin // combinatorial push_elements
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	push_elements = '{32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
if(_push_D1) push_elements[_v0] = __RotateRight_rotated_data_D1[_v0];
end
end
always_comb begin // combinatorial push_strobe
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	push_strobe = 1'bx;
	if(_push_D1) push_strobe = __MakeStrobe_strobe_D1;
	if(!_push_D1) push_strobe = RepeatGen;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	push_strobe = push_strobe;
end
always_comb begin // combinatorial may_pushes
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_pushes = 1'bx;
	may_pushes[0] = _fifo_may_push;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	may_pushes = may_pushes;
end
always_comb begin // combinatorial may_push
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_push = 1'bx;
	may_push = __2_N417;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	may_push = may_push;
end
always_comb begin // combinatorial _RotateRight_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_RotateRight_data = '{32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
if(push) _RotateRight_data[_v0] = write_v[_v0];
end
end
always_comb begin // combinatorial _MakeStrobe_chunk_length
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MakeStrobe_chunk_length = 1'dx;
	if(push) _MakeStrobe_chunk_length = num_elems;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_MakeStrobe_chunk_length = _MakeStrobe_chunk_length;
end
always_comb begin // combinatorial wvalid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wvalid = 1'bx;
	wvalid = _17;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	wvalid = wvalid;
end
always_ff @(posedge clk) begin // state wlast
	if(may_write_strobe) if(_55) wlast <= 1'b1;
	if(may_write_strobe) if(!_55) wlast <= 1'b0;
	if(write_burst) if(_68) wlast <= 1'b1;
	if(write_burst) if(!_68) wlast <= 1'b0;
end
always_comb begin // combinatorial wdata
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	for(int _v0 = 0; _v0 < 32; _v0 = _v0 + 1) begin
if(_fifo_pop_available) wdata[_v0] = pop_data[_v0];
end
end
always_comb begin // combinatorial wstrb
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wstrb = 4'bxxxx;
	wstrb[0] = _7;
	wstrb[1] = _8;
	wstrb[2] = _9;
	wstrb[3] = _10;
end
always_comb begin // combinatorial pop_available
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_available = 1'bx;
	pop_available = RepeatGen_2;
	if(_fifo_pop_available) pop_available[0] = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	pop_available = pop_available;
end
always_comb begin // combinatorial do_commit_pop
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	do_commit_pop = 1'bx;
	do_commit_pop = _20;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	do_commit_pop = do_commit_pop;
end
always_comb begin // combinatorial may_write_strobe
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_write_strobe = 1'bx;
	may_write_strobe = _26;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	may_write_strobe = may_write_strobe;
end
always_comb begin // combinatorial _fifo_push
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_push = 1'bx;
	_fifo_push = 1'b0;
	if(_30) _fifo_push = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_fifo_push = _fifo_push;
end
always_comb begin // combinatorial _fifo_push_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_push_data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_30) _fifo_push_data = _31;
end
always_comb begin // combinatorial pop_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_fifo_pop_available) pop_data = _fifo_pop_data;
end
always_comb begin // combinatorial _fifo_pop
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_pop = 1'bx;
	_fifo_pop = 1'b0;
	if(_38) _fifo_pop = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_fifo_pop = _fifo_pop;
end
always_comb begin // combinatorial _fifo_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_rst = 1'bx;
	_fifo_rst = 1'b0;
	if(do_rst) _fifo_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_fifo_rst = _fifo_rst;
end
always_comb begin // combinatorial may_write_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_write_burst = 1'bx;
	may_write_burst = 1'b0;
	if(may_write_strobe) if(_48) may_write_burst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	may_write_burst = may_write_burst;
end
always_comb begin // combinatorial _IntNarrow_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_din = 9'sdx;
	if(may_write_strobe) if(!_48) _IntNarrow_din = _52;
end
always_comb begin // combinatorial _MakeMask_up_to
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MakeMask_up_to = 1'dx;
	if(may_write_strobe) if(_55) _MakeMask_up_to = _58;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_MakeMask_up_to = _MakeMask_up_to;
end
always_comb begin // combinatorial lower_mask
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	lower_mask = 1'bx;
	if(write_burst) lower_mask = _62;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	lower_mask = lower_mask;
end
always_comb begin // combinatorial _MakeMask_2_up_to
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MakeMask_2_up_to = 1'dx;
	if(write_burst) _MakeMask_2_up_to = 1'd0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_MakeMask_2_up_to = _MakeMask_2_up_to;
end
always_comb begin // combinatorial upper_mask
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	upper_mask = 1'bx;
	if(write_burst) upper_mask = _MakeMask_3_bits;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	upper_mask = upper_mask;
end
always_comb begin // combinatorial _MakeMask_3_up_to
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MakeMask_3_up_to = 1'dx;
	if(write_burst) _MakeMask_3_up_to = _65;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_MakeMask_3_up_to = _MakeMask_3_up_to;
end
endmodule // burst_write_fifo_manager #(AXI_WIDTH: 32, NUM_PARALLEL_ELEMENTS: 1, MAX_BURST: 256, DEPTH: 1024, MAY_PUSH_LATENCY: 417)

// IntNarrow #(FROM_I: -1, TO_I: 255, FROM: 0, TO: 256)
module IntNarrow_FROM_I_N1_TO_I_255_FROM_0_TO_256(
	/* clock */ input clk,
	input wire signed[8:0] din,
	output /*mux_wire*/ logic[7:0] dout
);

	assign dout = din;
endmodule // IntNarrow #(FROM_I: -1, TO_I: 255, FROM: 0, TO: 256)

// FWFT #(T: type bool #()[32], DEPTH: 1024, MAY_PUSH_LATENCY: 420)
module FWFT_T_type_bool_32_DEPTH_1024_MAY_PUSH_LATENCY_420(
	/* clock */ input clk,
	output /*mux_wire*/ logic may_push,
	input wire push,
	input wire[31:0] push_data,
	output /*mux_wire*/ logic pop_available,
	output /*mux_wire*/ logic[31:0] pop_data,
	input wire pop,
	input wire rst
);

/*state*/ logic[31:0] mem[0:1023];
/*state*/ logic[9:0] read_addr;
/*state*/ logic[9:0] write_addr;
/*state*/ logic[1:0] outflow_path_valids_reg;
/*state*/ logic[31:0] outflow_path_elems_reg[0:1];
/*mux_wire*/ logic[2:0] outflow_path_valids;
/*mux_wire*/ logic[31:0] outflow_path_elems[0:2];
/*mux_wire*/ logic[2:0] will_shifts;
wire _3;
assign _3 = read_addr != write_addr;
wire[31:0] _5 = mem[read_addr];
wire[31:0] _6 = outflow_path_elems_reg[0];
wire _7 = outflow_path_valids_reg[0];
wire _8 = will_shifts[0];
wire _9 = outflow_path_valids[0];
wire _10;
assign _10 = ~_9;
wire _11;
assign _11 = _8 | _10;
wire _12 = will_shifts[1];
wire _13 = outflow_path_valids[1];
wire[31:0] _14 = outflow_path_elems[1];
wire[31:0] _15 = outflow_path_elems_reg[1];
wire _16 = outflow_path_valids_reg[1];
wire _17 = will_shifts[1];
wire _18 = outflow_path_valids[1];
wire _19;
assign _19 = ~_18;
wire _20;
assign _20 = _17 | _19;
wire _21 = will_shifts[2];
wire _22 = outflow_path_valids[2];
wire[31:0] _23 = outflow_path_elems[2];
/*mux_wire*/ logic[9:0] space_remaining;
wire signed[10:0] _26;
assign _26 = read_addr - write_addr;
wire signed[10:0] _28;
assign _28 = _26 - $signed({1'b0, 1'd1});
wire[9:0] _29;
assign _29 = _28; // == mod 1024 (target is 10 bits wide)
wire _32;
assign _32 = space_remaining > 9'd421;
/*mux_wire*/ logic _LatencyOffset_din;
wire _LatencyOffset_dout;
/*latency*/ logic __LatencyOffset_dout_N420; always_ff @(posedge clk) begin __LatencyOffset_dout_N420 <= _LatencyOffset_dout; end
/*mux_wire*/ logic[31:0] _ToBits_value;
wire[31:0] _ToBits_bits;
wire[10:0] _37;
assign _37 = write_addr + 1'd1;
wire[9:0] _38;
assign _38 = _37; // == mod 1024 (target is 10 bits wide)
wire _39 = outflow_path_valids[2];
wire _40 = will_shifts[2];
wire _41;
assign _41 = _39 & _40;
wire[10:0] _44;
assign _44 = read_addr + 1'd1;
wire[9:0] _45;
assign _45 = _44; // == mod 1024 (target is 10 bits wide)
wire _47 = outflow_path_valids[0];
wire[31:0] _48 = outflow_path_elems[0];
/*mux_wire*/ logic[31:0] _FromBits_bits;
wire[31:0] _FromBits_value;
LatencyOffset_T_type_bool_OFFSET_N421 LatencyOffset(
	.clk(clk),
	.din(_LatencyOffset_din),
	.dout(_LatencyOffset_dout)
);
ToBits_T_type_bool_32 ToBits(
	.clk(clk),
	.value(_ToBits_value),
	.bits(_ToBits_bits)
);
FromBits_T_type_bool_32 FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
always_ff @(posedge clk) begin // state mem
	if(push) mem[write_addr] <= _ToBits_bits;
end
always_ff @(posedge clk) begin // state read_addr
	if(_41) read_addr <= _45;
	if(rst) read_addr <= 1'd0;
end
always_ff @(posedge clk) begin // state write_addr
	if(push) write_addr <= _38;
	if(rst) write_addr <= 1'd0;
end
always_ff @(posedge clk) begin // state outflow_path_valids_reg
	if(_12) outflow_path_valids_reg[0] <= _13;
	if(_21) outflow_path_valids_reg[1] <= _22;
	if(rst) outflow_path_valids_reg[0] <= 1'b0;
	if(rst) outflow_path_valids_reg[1] <= 1'b0;
end
always_ff @(posedge clk) begin // state outflow_path_elems_reg
	if(_12) outflow_path_elems_reg[0] <= _14;
	if(_21) outflow_path_elems_reg[1] <= _23;
end
always_comb begin // combinatorial outflow_path_valids
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	outflow_path_valids = 3'bxxx;
	outflow_path_valids[2] = _3;
	outflow_path_valids[0] = _7;
	outflow_path_valids[1] = _16;
end
always_comb begin // combinatorial outflow_path_elems
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	outflow_path_elems = '{32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	outflow_path_elems[2] = _5;
	outflow_path_elems[0] = _6;
	outflow_path_elems[1] = _15;
end
always_comb begin // combinatorial will_shifts
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	will_shifts = 3'bxxx;
	will_shifts[1] = _11;
	will_shifts[2] = _20;
	will_shifts[0] = 1'b0;
	if(pop_available) if(pop) will_shifts[0] = 1'b1;
end
always_comb begin // combinatorial space_remaining
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	space_remaining = 10'dx;
	space_remaining = _29;
end
always_comb begin // combinatorial may_push
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_push = 1'bx;
	may_push = __LatencyOffset_dout_N420;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	may_push = may_push;
end
always_comb begin // combinatorial _LatencyOffset_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_din = 1'bx;
	_LatencyOffset_din = _32;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_LatencyOffset_din = _LatencyOffset_din;
end
always_comb begin // combinatorial _ToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_value = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(push) _ToBits_value = push_data;
end
always_comb begin // combinatorial pop_available
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_available = 1'bx;
	pop_available = 1'b0;
	if(_47) pop_available = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	pop_available = pop_available;
end
always_comb begin // combinatorial pop_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_47) pop_data = _FromBits_value;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_47) _FromBits_bits = _48;
end
endmodule // FWFT #(T: type bool #()[32], DEPTH: 1024, MAY_PUSH_LATENCY: 420)

// FromBits #(T: type bool #()[32])
module FromBits_T_type_bool_32(
	/* clock */ input clk,
	input wire[31:0] bits,
	output /*mux_wire*/ logic[31:0] value
);

assign value = bits;
endmodule // FromBits #(T: type bool #()[32])

// ToBits #(T: type bool #()[32])
module ToBits_T_type_bool_32(
	/* clock */ input clk,
	input wire[31:0] value,
	output /*mux_wire*/ logic[31:0] bits
);

assign bits = value;
endmodule // ToBits #(T: type bool #()[32])

// LatencyOffset #(T: type bool #(), OFFSET: -421)
module LatencyOffset_T_type_bool_OFFSET_N421(
	/* clock */ input clk,
	input wire din,
	output /*mux_wire*/ logic dout
);

	assign dout = din;
endmodule // LatencyOffset #(T: type bool #(), OFFSET: -421)

// MakeStrobe #(STROBE_WIDTH: 1)
module MakeStrobe_STROBE_WIDTH_1(
	/* clock */ input clk,
	input wire[0:0] chunk_length,
	// (zero sized) input chunk_offset
	output /*mux_wire*/ logic[0:0] strobe
);

/*mux_wire*/ logic[0:0] _MakeMask_up_to;
wire[0:0] _MakeMask_bits;
/*mux_wire*/ logic[0:0] _RotateRight_data;
// (zero sized) _RotateRight_offset
wire[0:0] _RotateRight_rotated_data;
MakeMask_SIZE_1 MakeMask(
	.clk(clk),
	.up_to(_MakeMask_up_to),
	.bits(_MakeMask_bits)
);
RotateRight_T_type_bool_ARRAY_LEN_1 RotateRight(
	.clk(clk),
	.data(_RotateRight_data),
	// (zero sized port) .offset(_RotateRight_offset)
	.rotated_data(_RotateRight_rotated_data)
);
always_comb begin // combinatorial strobe
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	strobe = 1'bx;
	strobe = _RotateRight_rotated_data;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	strobe = strobe;
end
always_comb begin // combinatorial _MakeMask_up_to
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MakeMask_up_to = 1'dx;
	_MakeMask_up_to = chunk_length;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_MakeMask_up_to = _MakeMask_up_to;
end
always_comb begin // combinatorial _RotateRight_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_RotateRight_data = 1'bx;
	_RotateRight_data = _MakeMask_bits;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_RotateRight_data = _RotateRight_data;
end
endmodule // MakeStrobe #(STROBE_WIDTH: 1)

// RotateRight #(T: type bool #(), ARRAY_LEN: 1)
module RotateRight_T_type_bool_ARRAY_LEN_1(
	/* clock */ input clk,
	input wire[0:0] data,
	// (zero sized) input offset
	output /*mux_wire*/ logic[0:0] rotated_data
);

// (zero sized) offset_bits
// (zero sized) _UIntToBits_value
// (zero sized) _UIntToBits_bits
/*mux_wire*/ logic[0:0] rotate_stages[0:0];
wire[0:0] _3 = rotate_stages[0];
UIntToBits_NUM_BITS_0 UIntToBits(
	.clk(clk)
	// (zero sized port) .value(_UIntToBits_value)
	// (zero sized port) .bits(_UIntToBits_bits)
);
always_comb begin // combinatorial rotated_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rotated_data = 1'bx;
	rotated_data = _3;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	rotated_data = rotated_data;
end
always_comb begin // combinatorial rotate_stages
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rotate_stages = '{1'bx};
	rotate_stages[0] = data;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	rotate_stages = rotate_stages;
end
endmodule // RotateRight #(T: type bool #(), ARRAY_LEN: 1)

// MakeMask #(SIZE: 1)
module MakeMask_SIZE_1(
	/* clock */ input clk,
	input wire[0:0] up_to,
	output /*mux_wire*/ logic[0:0] bits
);

wire _2;
assign _2 = up_to > 1'd0;
always_comb begin // combinatorial bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	bits = 1'bx;
	bits[0] = _2;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	bits = bits;
end
endmodule // MakeMask #(SIZE: 1)

// RotateRight #(T: type bool #()[32], ARRAY_LEN: 1)
module RotateRight_T_type_bool_32_ARRAY_LEN_1(
	/* clock */ input clk,
	input wire[31:0] data[0:0],
	// (zero sized) input offset
	output /*mux_wire*/ logic[31:0] rotated_data[0:0]
);

genvar _g0;
// (zero sized) offset_bits
// (zero sized) _UIntToBits_value
// (zero sized) _UIntToBits_bits
/*mux_wire*/ logic[31:0] rotate_stages[0:0][0:0];
wire[31:0] _3[0:0];
generate
for(_g0 = 0; _g0 < 1; _g0 = _g0 + 1) begin
assign _3[_g0] = rotate_stages[0][_g0];
end
endgenerate
UIntToBits_NUM_BITS_0 UIntToBits(
	.clk(clk)
	// (zero sized port) .value(_UIntToBits_value)
	// (zero sized port) .bits(_UIntToBits_bits)
);
always_comb begin // combinatorial rotated_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rotated_data = '{32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
rotated_data[_v0] = _3[_v0];
end
end
always_comb begin // combinatorial rotate_stages
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rotate_stages = '{'{32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx}};
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
rotate_stages[0][_v0] = data[_v0];
end
end
endmodule // RotateRight #(T: type bool #()[32], ARRAY_LEN: 1)

// UIntToBits #(NUM_BITS: 0)
module UIntToBits_NUM_BITS_0(
	/* clock */ input clk
	// (zero sized) input value
	// (zero sized) output bits
);

// PATCH XRT 2.16 over-zealous empty module DRC
initial begin end
endmodule // UIntToBits #(NUM_BITS: 0)

// write_burst_address_manager #(AXI_WIDTH: 32, ADDR_WIDTH: 64, NUM_PARALLEL_ELEMENTS: 1, ADDR_QUEUE_SIZE: 32, ADDR_MAY_PUSH_LATENCY: 0, TOTAL_ELEMENTS_THAT_CAN_BE_STORED: 1024)
module write_burst_address_manager_AXI_WIDTH_32_ADDR_WIDTH_64_NUM_PARALLEL_ELEMENTS_1_ADDR_QUEUE_SIZE_32_ADDR_MAY_PUSH_LATENCY_0_TOTAL_ELEMENTS_THAT_CAN_BE_STORED_1024(
	/* clock */ input clk,
	output /*mux_wire*/ logic push_burst,
	output /*mux_wire*/ logic[61:0] awaddr,
	output /*mux_wire*/ logic[7:0] awlen,
	// (zero sized) output start_offset
	// (zero sized) output end_offset
	output /*mux_wire*/ logic is_last,
	output /*mux_wire*/ logic is_empty_burst,
	input wire may_push_burst,
	output /*mux_wire*/ logic may_push_address,
	input wire push_address,
	input wire[63:0] new_addr,
	input wire push_elements,
	input wire[0:0] num_elements,
	input wire is_last_elem,
	// (zero sized) output fifo_offset
	input wire rst
);

/*state*/ logic[61:0] current_addr;
/*state*/ logic[7:0] current_command_final_align;
/*state*/ logic current_addr_valid;
/*state*/ logic current_command_chunk_end;
/*state*/ logic current_command_is_last;
/*state*/ logic current_command_is_empty_burst;
/*mux_wire*/ logic[61:0] _pack_feedback_loop_v1_i;
/*mux_wire*/ logic[7:0] _pack_feedback_loop_v2_i;
/*mux_wire*/ logic _pack_feedback_loop_v3_i;
wire[70:0] _pack_feedback_loop_packed_o;
/*mux_wire*/ logic[70:0] _feedback_loop_pipeline_in;
/*mux_wire*/ logic[61:0] addr_begin_pipeline;
/*mux_wire*/ logic[7:0] current_command_final_align_begin_pipeline;
/*mux_wire*/ logic current_command_chunk_end_begin_pipeline;
/*latency*/ logic _current_command_chunk_end_begin_pipeline_D0; always_ff @(posedge clk) begin _current_command_chunk_end_begin_pipeline_D0 <= current_command_chunk_end_begin_pipeline; end
wire[70:0] _feedback_loop_pipeline_out;
/*mux_wire*/ logic[70:0] _pack_feedback_loop_packed_i;
wire[61:0] _pack_feedback_loop_v1_o;
wire[7:0] _pack_feedback_loop_v2_o;
wire _pack_feedback_loop_v3_o;
/*mux_wire*/ logic[53:0] cur_burst_idx;
/*mux_wire*/ logic[7:0] element_in_burst;
/*mux_wire*/ logic[61:0] _BitwiseIntSplit_v;
wire[53:0] _BitwiseIntSplit_upper;
wire[7:0] _BitwiseIntSplit_lower;
/*mux_wire*/ logic[7:0] first_transfer_idx;
// (zero sized) start_element_offset
/*mux_wire*/ logic[7:0] _BitwiseIntSplit_2_v;
wire[7:0] _BitwiseIntSplit_2_upper;
// (zero sized) _BitwiseIntSplit_2_lower
/*mux_wire*/ logic[53:0] next_burst_idx;
wire[54:0] _9;
assign _9 = cur_burst_idx + 1'd1;
wire[53:0] _11;
assign _11 = _9; // == mod 18014398509481984 (target is 54 bits wide)
/*latency*/ logic[53:0] __11_D0; always_ff @(posedge clk) begin __11_D0 <= _11; end
/*mux_wire*/ logic[61:0] next_burst_addr;
/*mux_wire*/ logic[53:0] _BitwiseIntConcat_upper;
/*mux_wire*/ logic[7:0] _BitwiseIntConcat_lower;
wire[61:0] _BitwiseIntConcat_v;
/*mux_wire*/ logic[7:0] last_transfer_to_include;
// (zero sized) last_chunk_offset
/*mux_wire*/ logic[7:0] last_element_before_final_align;
/*mux_wire*/ logic[7:0] _IntNarrow_din;
wire[7:0] _IntNarrow_dout;
wire[7:0] _19;
assign _19 = _IntNarrow_dout - 1'd1;
/*mux_wire*/ logic[7:0] _BitwiseIntSplit_3_v;
wire[7:0] _BitwiseIntSplit_3_upper;
// (zero sized) _BitwiseIntSplit_3_lower
/*mux_wire*/ logic[7:0] awlen_w;
wire signed[8:0] _23;
assign _23 = last_transfer_to_include - first_transfer_idx;
/*mux_wire*/ logic signed[8:0] _IntNarrow_2_din;
wire[7:0] _IntNarrow_2_dout;
/*latency*/ logic[7:0] __IntNarrow_2_dout_D0; always_ff @(posedge clk) begin __IntNarrow_2_dout_D0 <= _IntNarrow_2_dout; end
/*mux_wire*/ logic cur_final_align_is_zero;
wire _26;
assign _26 = current_command_final_align_begin_pipeline == 1'd0;
/*latency*/ logic __26_D0; always_ff @(posedge clk) begin __26_D0 <= _26; end
wire _feedback_loop_pipeline_stable;
wire _30;
assign _30 = current_addr_valid & _feedback_loop_pipeline_stable;
/*mux_wire*/ logic should_push_burst;
/*mux_wire*/ logic last;
/*mux_wire*/ logic _feedback_loop_input_changed;
/*mux_wire*/ logic[61:0] transfer_addr;
// (zero sized) _
/*mux_wire*/ logic[61:0] _BitwiseIntSplit_4_v;
wire[61:0] _BitwiseIntSplit_4_upper;
// (zero sized) _BitwiseIntSplit_4_lower
/*mux_wire*/ logic __2;
wire _command_fifo_may_push;
/*mux_wire*/ logic[61:0] element_aligned_addr;
/*mux_wire*/ logic[1:0] _addr_misalign;
/*mux_wire*/ logic[63:0] _BitwiseIntSplit_5_v;
wire[61:0] _BitwiseIntSplit_5_upper;
wire[1:0] _BitwiseIntSplit_5_lower;
wire _53;
assign _53 = _addr_misalign == 1'd0;
/*mux_wire*/ logic _assert_runtime_assert_runtime;
/*mux_wire*/ logic _assert_runtime__condition;
/*mux_wire*/ logic _addr_fifo_push;
/*mux_wire*/ logic[61:0] _addr_fifo_push_data;
wire[7:0] _60;
assign _60 = element_aligned_addr; // == mod 256 (target is 8 bits wide)
/*mux_wire*/ logic _burst_splitter_push_new_align;
/*mux_wire*/ logic[7:0] _burst_splitter_new_starting_align;
wire _addr_fifo_may_push;
/*mux_wire*/ logic _burst_splitter_push_elements;
/*mux_wire*/ logic[0:0] _burst_splitter_num_elements;
/*mux_wire*/ logic _burst_splitter_is_last;
// (zero sized) _burst_splitter_fifo_offset
wire _burst_splitter_output_command;
/*latency*/ logic __burst_splitter_output_command_D2000; always_ff @(posedge clk) begin __burst_splitter_output_command_D2000 <= _burst_splitter_output_command; end
wire _burst_splitter_end_of_burst;
wire _burst_splitter_is_last_burst;
wire[7:0] _burst_splitter_final_align;
wire _burst_splitter_burst_is_empty;
/*mux_wire*/ logic end_of_burst;
/*mux_wire*/ logic is_last_burst;
/*mux_wire*/ logic[7:0] final_align;
/*mux_wire*/ logic burst_is_empty;
/*mux_wire*/ logic[10:0] command;
/*mux_wire*/ logic _pack_command_v1_i;
/*mux_wire*/ logic _pack_command_v2_i;
/*mux_wire*/ logic[7:0] _pack_command_v3_i;
/*mux_wire*/ logic _pack_command_v4_i;
wire[10:0] _pack_command_packed_o;
/*latency*/ logic[10:0] __pack_command_packed_o_D2000; always_ff @(posedge clk) begin __pack_command_packed_o_D2000 <= _pack_command_packed_o; end
/*mux_wire*/ logic _command_fifo_push;
/*mux_wire*/ logic[10:0] _command_fifo_push_data;
wire _77;
assign _77 = ~current_addr_valid;
wire _addr_fifo_pop_available;
wire[61:0] _addr_fifo_pop_data;
/*mux_wire*/ logic[61:0] new_addr_2;
/*mux_wire*/ logic _addr_fifo_pop;
wire _83;
assign _83 = ~current_command_chunk_end;
wire _85;
assign _85 = ~current_command_is_last;
wire _86;
assign _86 = _83 & _85;
wire _command_fifo_pop_available;
wire[10:0] _command_fifo_pop_data;
/*mux_wire*/ logic[10:0] command_2;
/*mux_wire*/ logic _command_fifo_pop;
/*mux_wire*/ logic chunk_end;
/*mux_wire*/ logic is_last_2;
/*mux_wire*/ logic[7:0] final_align_2;
/*mux_wire*/ logic is_empty_burst_2;
/*mux_wire*/ logic[10:0] _pack_command_packed_i;
wire _pack_command_v1_o;
wire _pack_command_v2_o;
wire[7:0] _pack_command_v3_o;
wire _pack_command_v4_o;
/*mux_wire*/ logic _addr_fifo_rst;
/*mux_wire*/ logic _command_fifo_rst;
/*mux_wire*/ logic _feedback_loop_rst;
/*mux_wire*/ logic _burst_splitter_rst;
Tuple3_T1_type_int_FROM_0_TO_4611686018427387904_T2_type_int_FROM_0_TO_256_T3_type_bool pack_feedback_loop(
	.clk(clk),
	.v1_i(_pack_feedback_loop_v1_i),
	.v2_i(_pack_feedback_loop_v2_i),
	.v3_i(_pack_feedback_loop_v3_i),
	.packed_o(_pack_feedback_loop_packed_o),
	.packed_i(_pack_feedback_loop_packed_i),
	.v1_o(_pack_feedback_loop_v1_o),
	.v2_o(_pack_feedback_loop_v2_o),
	.v3_o(_pack_feedback_loop_v3_o)
);
SlowStablePipelineCustom_T_type_bool_71_PIPELINE_DEPTH_1 feedback_loop(
	.clk(clk),
	.input_changed(_feedback_loop_input_changed),
	.pipeline_stable(_feedback_loop_pipeline_stable),
	.pipeline_in(_feedback_loop_pipeline_in),
	.pipeline_out(_feedback_loop_pipeline_out),
	.rst(_feedback_loop_rst)
);
BitwiseIntSplit_TO_4611686018427387904_LOWER_BITS_8 BitwiseIntSplit(
	.clk(clk),
	.v(_BitwiseIntSplit_v),
	.upper(_BitwiseIntSplit_upper),
	.lower(_BitwiseIntSplit_lower)
);
BitwiseIntSplit_TO_256_LOWER_BITS_0 BitwiseIntSplit_2(
	.clk(clk),
	.v(_BitwiseIntSplit_2_v),
	.upper(_BitwiseIntSplit_2_upper)
	// (zero sized port) .lower(_BitwiseIntSplit_2_lower)
);
BitwiseIntConcat_UPPER_TO_18014398509481984_LOWER_BITS_8 BitwiseIntConcat(
	.clk(clk),
	.upper(_BitwiseIntConcat_upper),
	.lower(_BitwiseIntConcat_lower),
	.v(_BitwiseIntConcat_v)
);
IntNarrow_FROM_I_0_TO_I_256_FROM_1_TO_256 IntNarrow(
	.clk(clk),
	.din(_IntNarrow_din),
	.dout(_IntNarrow_dout)
);
BitwiseIntSplit_TO_255_LOWER_BITS_0 BitwiseIntSplit_3(
	.clk(clk),
	.v(_BitwiseIntSplit_3_v),
	.upper(_BitwiseIntSplit_3_upper)
	// (zero sized port) .lower(_BitwiseIntSplit_3_lower)
);
IntNarrow_FROM_I_N255_TO_I_256_FROM_0_TO_256 IntNarrow_2(
	.clk(clk),
	.din(_IntNarrow_2_din),
	.dout(_IntNarrow_2_dout)
);
BitwiseIntSplit_TO_4611686018427387904_LOWER_BITS_0 BitwiseIntSplit_4(
	.clk(clk),
	.v(_BitwiseIntSplit_4_v),
	.upper(_BitwiseIntSplit_4_upper)
	// (zero sized port) .lower(_BitwiseIntSplit_4_lower)
);
FWFT_T_type_int_FROM_0_TO_4611686018427387904_DEPTH_32_MAY_PUSH_LATENCY_0 addr_fifo(
	.clk(clk),
	.may_push(_addr_fifo_may_push),
	.push(_addr_fifo_push),
	.push_data(_addr_fifo_push_data),
	.pop_available(_addr_fifo_pop_available),
	.pop_data(_addr_fifo_pop_data),
	.pop(_addr_fifo_pop),
	.rst(_addr_fifo_rst)
);
FWFT_T_type_bool_11_DEPTH_128_MAY_PUSH_LATENCY_0 command_fifo(
	.clk(clk),
	.may_push(_command_fifo_may_push),
	.push(_command_fifo_push),
	.push_data(_command_fifo_push_data),
	.pop_available(_command_fifo_pop_available),
	.pop_data(_command_fifo_pop_data),
	.pop(_command_fifo_pop),
	.rst(_command_fifo_rst)
);
Tuple4_T1_type_bool_T2_type_bool_T3_type_int_FROM_0_TO_256_T4_type_bool pack_command(
	.clk(clk),
	.v1_i(_pack_command_v1_i),
	.v2_i(_pack_command_v2_i),
	.v3_i(_pack_command_v3_i),
	.v4_i(_pack_command_v4_i),
	.packed_o(_pack_command_packed_o),
	.packed_i(_pack_command_packed_i),
	.v1_o(_pack_command_v1_o),
	.v2_o(_pack_command_v2_o),
	.v3_o(_pack_command_v3_o),
	.v4_o(_pack_command_v4_o)
);
burst_write_splitter_MAX_ELEMENTS_IN_BURST_256_NUM_PARALLEL_ELEMENTS_1_ADDR_QUEUE_SIZE_32 burst_splitter(
	.clk(clk),
	.push_new_align(_burst_splitter_push_new_align),
	.new_starting_align(_burst_splitter_new_starting_align),
	.output_command(_burst_splitter_output_command),
	.end_of_burst(_burst_splitter_end_of_burst),
	.is_last_burst(_burst_splitter_is_last_burst),
	.final_align(_burst_splitter_final_align),
	.burst_is_empty(_burst_splitter_burst_is_empty),
	.push_elements(_burst_splitter_push_elements),
	.num_elements(_burst_splitter_num_elements),
	.is_last(_burst_splitter_is_last),
	// (zero sized port) .fifo_offset(_burst_splitter_fifo_offset)
	.rst(_burst_splitter_rst)
);
BitwiseIntSplit_TO_18446744073709551616_LOWER_BITS_2 BitwiseIntSplit_5(
	.clk(clk),
	.v(_BitwiseIntSplit_5_v),
	.upper(_BitwiseIntSplit_5_upper),
	.lower(_BitwiseIntSplit_5_lower)
);
assert_runtime assert_runtime(
	.clk(clk),
	.assert_runtime(_assert_runtime_assert_runtime),
	._condition(_assert_runtime__condition)
);
always_ff @(posedge clk) begin // state current_addr
	if(may_push_burst) if(_30) if(current_command_chunk_end) current_addr <= next_burst_addr;
	if(_77) if(_addr_fifo_pop_available) current_addr <= new_addr_2;
end
always_ff @(posedge clk) begin // state current_command_final_align
	if(_86) if(_command_fifo_pop_available) current_command_final_align <= final_align_2;
end
always_ff @(posedge clk) begin // state current_addr_valid
	if(may_push_burst) if(_30) if(current_command_chunk_end) if(cur_final_align_is_zero) if(current_command_is_last) current_addr_valid <= 1'b0;
	if(may_push_burst) if(_30) if(!current_command_chunk_end) if(current_command_is_last) current_addr_valid <= 1'b0;
	if(_77) if(_addr_fifo_pop_available) current_addr_valid <= 1'b1;
	if(rst) current_addr_valid <= 1'b0;
end
always_ff @(posedge clk) begin // state current_command_chunk_end
	if(may_push_burst) if(_30) if(current_command_chunk_end) current_command_chunk_end <= 1'b0;
	if(_86) if(_command_fifo_pop_available) current_command_chunk_end <= chunk_end;
	if(rst) current_command_chunk_end <= 1'b0;
end
always_ff @(posedge clk) begin // state current_command_is_last
	if(may_push_burst) if(_30) if(current_command_chunk_end) if(cur_final_align_is_zero) current_command_is_last <= 1'b0;
	if(may_push_burst) if(_30) if(!current_command_chunk_end) if(current_command_is_last) current_command_is_last <= 1'b0;
	if(_86) if(_command_fifo_pop_available) current_command_is_last <= is_last_2;
	if(rst) current_command_is_last <= 1'b0;
end
always_ff @(posedge clk) begin // state current_command_is_empty_burst
	if(_86) if(_command_fifo_pop_available) current_command_is_empty_burst <= is_empty_burst_2;
end
always_comb begin // combinatorial _pack_feedback_loop_v1_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pack_feedback_loop_v1_i = 62'dx;
	_pack_feedback_loop_v1_i = current_addr;
end
always_comb begin // combinatorial _pack_feedback_loop_v2_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pack_feedback_loop_v2_i = 8'dx;
	_pack_feedback_loop_v2_i = current_command_final_align;
end
always_comb begin // combinatorial _pack_feedback_loop_v3_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pack_feedback_loop_v3_i = 1'bx;
	_pack_feedback_loop_v3_i = current_command_chunk_end;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_pack_feedback_loop_v3_i = _pack_feedback_loop_v3_i;
end
always_comb begin // combinatorial _feedback_loop_pipeline_in
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_feedback_loop_pipeline_in = 71'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_feedback_loop_pipeline_in = _pack_feedback_loop_packed_o;
end
always_comb begin // combinatorial addr_begin_pipeline
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	addr_begin_pipeline = 62'dx;
	addr_begin_pipeline = _pack_feedback_loop_v1_o;
end
always_comb begin // combinatorial current_command_final_align_begin_pipeline
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	current_command_final_align_begin_pipeline = 8'dx;
	current_command_final_align_begin_pipeline = _pack_feedback_loop_v2_o;
end
always_comb begin // combinatorial current_command_chunk_end_begin_pipeline
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	current_command_chunk_end_begin_pipeline = 1'bx;
	current_command_chunk_end_begin_pipeline = _pack_feedback_loop_v3_o;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	current_command_chunk_end_begin_pipeline = current_command_chunk_end_begin_pipeline;
end
always_comb begin // combinatorial _pack_feedback_loop_packed_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pack_feedback_loop_packed_i = 71'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_pack_feedback_loop_packed_i = _feedback_loop_pipeline_out;
end
always_comb begin // combinatorial cur_burst_idx
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	cur_burst_idx = 54'dx;
	cur_burst_idx = _BitwiseIntSplit_upper;
end
always_comb begin // combinatorial element_in_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	element_in_burst = 8'dx;
	element_in_burst = _BitwiseIntSplit_lower;
end
always_comb begin // combinatorial _BitwiseIntSplit_v
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitwiseIntSplit_v = 62'dx;
	_BitwiseIntSplit_v = addr_begin_pipeline;
end
always_comb begin // combinatorial first_transfer_idx
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	first_transfer_idx = 8'dx;
	first_transfer_idx = _BitwiseIntSplit_2_upper;
end
always_comb begin // combinatorial _BitwiseIntSplit_2_v
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitwiseIntSplit_2_v = 8'dx;
	_BitwiseIntSplit_2_v = element_in_burst;
end
always_comb begin // combinatorial next_burst_idx
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	next_burst_idx = 54'dx;
	next_burst_idx = __11_D0;
end
always_comb begin // combinatorial next_burst_addr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	next_burst_addr = 62'dx;
	next_burst_addr = _BitwiseIntConcat_v;
end
always_comb begin // combinatorial _BitwiseIntConcat_upper
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitwiseIntConcat_upper = 54'dx;
	_BitwiseIntConcat_upper = next_burst_idx;
end
always_comb begin // combinatorial _BitwiseIntConcat_lower
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitwiseIntConcat_lower = 8'dx;
	_BitwiseIntConcat_lower = 1'd0;
end
always_comb begin // combinatorial last_transfer_to_include
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	last_transfer_to_include = 8'dx;
	if(current_command_chunk_end_begin_pipeline) last_transfer_to_include = 8'd255;
	if(!current_command_chunk_end_begin_pipeline) last_transfer_to_include = _BitwiseIntSplit_3_upper;
end
always_comb begin // combinatorial last_element_before_final_align
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	last_element_before_final_align = 8'dx;
	if(!current_command_chunk_end_begin_pipeline) last_element_before_final_align = _19;
end
always_comb begin // combinatorial _IntNarrow_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_din = 8'dx;
	if(!current_command_chunk_end_begin_pipeline) _IntNarrow_din = current_command_final_align_begin_pipeline;
end
always_comb begin // combinatorial _BitwiseIntSplit_3_v
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitwiseIntSplit_3_v = 8'dx;
	if(!current_command_chunk_end_begin_pipeline) _BitwiseIntSplit_3_v = last_element_before_final_align;
end
always_comb begin // combinatorial awlen_w
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awlen_w = 8'dx;
	awlen_w = __IntNarrow_2_dout_D0;
end
always_comb begin // combinatorial _IntNarrow_2_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_2_din = 9'sdx;
	_IntNarrow_2_din = _23;
end
always_comb begin // combinatorial cur_final_align_is_zero
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	cur_final_align_is_zero = 1'bx;
	cur_final_align_is_zero = __26_D0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	cur_final_align_is_zero = cur_final_align_is_zero;
end
always_comb begin // combinatorial push_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	push_burst = 1'bx;
	push_burst = 1'b0;
	if(may_push_burst) if(_30) if(should_push_burst) push_burst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	push_burst = push_burst;
end
always_comb begin // combinatorial awaddr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awaddr = 62'dx;
	if(may_push_burst) if(_30) if(should_push_burst) awaddr = transfer_addr;
end
always_comb begin // combinatorial awlen
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awlen = 8'dx;
	if(may_push_burst) if(_30) if(should_push_burst) awlen = awlen_w;
end
always_comb begin // combinatorial is_last
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_last = 1'bx;
	if(may_push_burst) if(_30) if(should_push_burst) is_last = last;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	is_last = is_last;
end
always_comb begin // combinatorial is_empty_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_empty_burst = 1'bx;
	if(may_push_burst) if(_30) if(should_push_burst) is_empty_burst = current_command_is_empty_burst;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	is_empty_burst = is_empty_burst;
end
always_comb begin // combinatorial should_push_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	should_push_burst = 1'bx;
	if(may_push_burst) if(_30) should_push_burst = 1'b0;
	if(may_push_burst) if(_30) if(current_command_chunk_end) should_push_burst = 1'b1;
	if(may_push_burst) if(_30) if(!current_command_chunk_end) if(current_command_is_last) should_push_burst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	should_push_burst = should_push_burst;
end
always_comb begin // combinatorial last
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	last = 1'bx;
	if(may_push_burst) if(_30) last = 1'b0;
	if(may_push_burst) if(_30) if(current_command_chunk_end) if(cur_final_align_is_zero) last = current_command_is_last;
	if(may_push_burst) if(_30) if(!current_command_chunk_end) if(current_command_is_last) last = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	last = last;
end
always_comb begin // combinatorial _feedback_loop_input_changed
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_feedback_loop_input_changed = 1'bx;
	_feedback_loop_input_changed = 1'b0;
	if(may_push_burst) if(_30) if(current_command_chunk_end) _feedback_loop_input_changed = 1'b1;
	if(_77) if(_addr_fifo_pop_available) _feedback_loop_input_changed = 1'b1;
	if(_86) if(_command_fifo_pop_available) _feedback_loop_input_changed = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_feedback_loop_input_changed = _feedback_loop_input_changed;
end
always_comb begin // combinatorial transfer_addr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	transfer_addr = 62'dx;
	if(may_push_burst) if(_30) if(should_push_burst) transfer_addr = _BitwiseIntSplit_4_upper;
end
always_comb begin // combinatorial _BitwiseIntSplit_4_v
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitwiseIntSplit_4_v = 62'dx;
	if(may_push_burst) if(_30) if(should_push_burst) _BitwiseIntSplit_4_v = current_addr;
end
always_comb begin // combinatorial __2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__2 = 1'bx;
	__2 = _command_fifo_may_push;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	__2 = __2;
end
always_comb begin // combinatorial may_push_address
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_push_address = 1'bx;
	may_push_address = 1'b0;
	if(_addr_fifo_may_push) may_push_address = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	may_push_address = may_push_address;
end
always_comb begin // combinatorial element_aligned_addr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	element_aligned_addr = 62'dx;
	if(push_address) element_aligned_addr = _BitwiseIntSplit_5_upper;
end
always_comb begin // combinatorial _addr_misalign
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_addr_misalign = 2'dx;
	if(push_address) _addr_misalign = _BitwiseIntSplit_5_lower;
end
always_comb begin // combinatorial _BitwiseIntSplit_5_v
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitwiseIntSplit_5_v = 64'dx;
	if(push_address) _BitwiseIntSplit_5_v = new_addr;
end
always_comb begin // combinatorial _assert_runtime_assert_runtime
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_assert_runtime_assert_runtime = 1'bx;
	_assert_runtime_assert_runtime = 1'b0;
	if(push_address) _assert_runtime_assert_runtime = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_assert_runtime_assert_runtime = _assert_runtime_assert_runtime;
end
always_comb begin // combinatorial _assert_runtime__condition
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_assert_runtime__condition = 1'bx;
	if(push_address) _assert_runtime__condition = _53;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_assert_runtime__condition = _assert_runtime__condition;
end
always_comb begin // combinatorial _addr_fifo_push
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_addr_fifo_push = 1'bx;
	_addr_fifo_push = 1'b0;
	if(push_address) _addr_fifo_push = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_addr_fifo_push = _addr_fifo_push;
end
always_comb begin // combinatorial _addr_fifo_push_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_addr_fifo_push_data = 62'dx;
	if(push_address) _addr_fifo_push_data = element_aligned_addr;
end
always_comb begin // combinatorial _burst_splitter_push_new_align
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_burst_splitter_push_new_align = 1'bx;
	_burst_splitter_push_new_align = 1'b0;
	if(push_address) _burst_splitter_push_new_align = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_burst_splitter_push_new_align = _burst_splitter_push_new_align;
end
always_comb begin // combinatorial _burst_splitter_new_starting_align
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_burst_splitter_new_starting_align = 8'dx;
	if(push_address) _burst_splitter_new_starting_align = _60;
end
always_comb begin // combinatorial _burst_splitter_push_elements
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_burst_splitter_push_elements = 1'bx;
	_burst_splitter_push_elements = 1'b0;
	if(push_elements) _burst_splitter_push_elements = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_burst_splitter_push_elements = _burst_splitter_push_elements;
end
always_comb begin // combinatorial _burst_splitter_num_elements
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_burst_splitter_num_elements = 1'dx;
	if(push_elements) _burst_splitter_num_elements = num_elements;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_burst_splitter_num_elements = _burst_splitter_num_elements;
end
always_comb begin // combinatorial _burst_splitter_is_last
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_burst_splitter_is_last = 1'bx;
	if(push_elements) _burst_splitter_is_last = is_last_elem;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_burst_splitter_is_last = _burst_splitter_is_last;
end
always_comb begin // combinatorial end_of_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	end_of_burst = 1'bx;
	if(_burst_splitter_output_command) end_of_burst = _burst_splitter_end_of_burst;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	end_of_burst = end_of_burst;
end
always_comb begin // combinatorial is_last_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_last_burst = 1'bx;
	if(_burst_splitter_output_command) is_last_burst = _burst_splitter_is_last_burst;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	is_last_burst = is_last_burst;
end
always_comb begin // combinatorial final_align
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	final_align = 8'dx;
	if(_burst_splitter_output_command) final_align = _burst_splitter_final_align;
end
always_comb begin // combinatorial burst_is_empty
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	burst_is_empty = 1'bx;
	if(_burst_splitter_output_command) burst_is_empty = _burst_splitter_burst_is_empty;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	burst_is_empty = burst_is_empty;
end
always_comb begin // combinatorial command
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	command = 11'bxxxxxxxxxxx;
	if(__burst_splitter_output_command_D2000) command = __pack_command_packed_o_D2000;
end
always_comb begin // combinatorial _pack_command_v1_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pack_command_v1_i = 1'bx;
	if(_burst_splitter_output_command) _pack_command_v1_i = end_of_burst;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_pack_command_v1_i = _pack_command_v1_i;
end
always_comb begin // combinatorial _pack_command_v2_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pack_command_v2_i = 1'bx;
	if(_burst_splitter_output_command) _pack_command_v2_i = is_last_burst;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_pack_command_v2_i = _pack_command_v2_i;
end
always_comb begin // combinatorial _pack_command_v3_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pack_command_v3_i = 8'dx;
	if(_burst_splitter_output_command) _pack_command_v3_i = final_align;
end
always_comb begin // combinatorial _pack_command_v4_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pack_command_v4_i = 1'bx;
	if(_burst_splitter_output_command) _pack_command_v4_i = burst_is_empty;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_pack_command_v4_i = _pack_command_v4_i;
end
always_comb begin // combinatorial _command_fifo_push
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_command_fifo_push = 1'bx;
	_command_fifo_push = 1'b0;
	if(__burst_splitter_output_command_D2000) _command_fifo_push = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_command_fifo_push = _command_fifo_push;
end
always_comb begin // combinatorial _command_fifo_push_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_command_fifo_push_data = 11'bxxxxxxxxxxx;
	if(__burst_splitter_output_command_D2000) _command_fifo_push_data = command;
end
always_comb begin // combinatorial new_addr_2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	new_addr_2 = 62'dx;
	if(_77) if(_addr_fifo_pop_available) new_addr_2 = _addr_fifo_pop_data;
end
always_comb begin // combinatorial _addr_fifo_pop
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_addr_fifo_pop = 1'bx;
	_addr_fifo_pop = 1'b0;
	if(_77) if(_addr_fifo_pop_available) _addr_fifo_pop = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_addr_fifo_pop = _addr_fifo_pop;
end
always_comb begin // combinatorial command_2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	command_2 = 11'bxxxxxxxxxxx;
	if(_86) if(_command_fifo_pop_available) command_2 = _command_fifo_pop_data;
end
always_comb begin // combinatorial _command_fifo_pop
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_command_fifo_pop = 1'bx;
	_command_fifo_pop = 1'b0;
	if(_86) if(_command_fifo_pop_available) _command_fifo_pop = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_command_fifo_pop = _command_fifo_pop;
end
always_comb begin // combinatorial chunk_end
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	chunk_end = 1'bx;
	if(_86) if(_command_fifo_pop_available) chunk_end = _pack_command_v1_o;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	chunk_end = chunk_end;
end
always_comb begin // combinatorial is_last_2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_last_2 = 1'bx;
	if(_86) if(_command_fifo_pop_available) is_last_2 = _pack_command_v2_o;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	is_last_2 = is_last_2;
end
always_comb begin // combinatorial final_align_2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	final_align_2 = 8'dx;
	if(_86) if(_command_fifo_pop_available) final_align_2 = _pack_command_v3_o;
end
always_comb begin // combinatorial is_empty_burst_2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_empty_burst_2 = 1'bx;
	if(_86) if(_command_fifo_pop_available) is_empty_burst_2 = _pack_command_v4_o;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	is_empty_burst_2 = is_empty_burst_2;
end
always_comb begin // combinatorial _pack_command_packed_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pack_command_packed_i = 11'bxxxxxxxxxxx;
	if(_86) if(_command_fifo_pop_available) _pack_command_packed_i = command_2;
end
always_comb begin // combinatorial _addr_fifo_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_addr_fifo_rst = 1'bx;
	_addr_fifo_rst = 1'b0;
	if(rst) _addr_fifo_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_addr_fifo_rst = _addr_fifo_rst;
end
always_comb begin // combinatorial _command_fifo_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_command_fifo_rst = 1'bx;
	_command_fifo_rst = 1'b0;
	if(rst) _command_fifo_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_command_fifo_rst = _command_fifo_rst;
end
always_comb begin // combinatorial _feedback_loop_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_feedback_loop_rst = 1'bx;
	_feedback_loop_rst = 1'b0;
	if(rst) _feedback_loop_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_feedback_loop_rst = _feedback_loop_rst;
end
always_comb begin // combinatorial _burst_splitter_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_burst_splitter_rst = 1'bx;
	_burst_splitter_rst = 1'b0;
	if(rst) _burst_splitter_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_burst_splitter_rst = _burst_splitter_rst;
end
endmodule // write_burst_address_manager #(AXI_WIDTH: 32, ADDR_WIDTH: 64, NUM_PARALLEL_ELEMENTS: 1, ADDR_QUEUE_SIZE: 32, ADDR_MAY_PUSH_LATENCY: 0, TOTAL_ELEMENTS_THAT_CAN_BE_STORED: 1024)

// burst_write_splitter #(MAX_ELEMENTS_IN_BURST: 256, NUM_PARALLEL_ELEMENTS: 1, ADDR_QUEUE_SIZE: 32)
module burst_write_splitter_MAX_ELEMENTS_IN_BURST_256_NUM_PARALLEL_ELEMENTS_1_ADDR_QUEUE_SIZE_32(
	/* clock */ input clk,
	input wire push_new_align,
	input wire[7:0] new_starting_align,
	output /*mux_wire*/ logic output_command,
	output /*mux_wire*/ logic end_of_burst,
	output /*mux_wire*/ logic is_last_burst,
	output /*mux_wire*/ logic[7:0] final_align,
	output /*mux_wire*/ logic burst_is_empty,
	input wire push_elements,
	input wire[0:0] num_elements,
	input wire is_last,
	// (zero sized) output fifo_offset
	input wire rst
);

/*state*/ logic[7:0] current_align;
/*state*/ logic current_align_valid;
/*state*/ logic current_burst_is_empty;
/*mux_wire*/ logic _;
wire _align_queue_may_push;
/*mux_wire*/ logic _align_queue_push;
/*mux_wire*/ logic[7:0] _align_queue_push_data;
/*mux_wire*/ logic new_addr_requested;
/*mux_wire*/ logic _assert_runtime_assert_runtime;
/*mux_wire*/ logic _assert_runtime__condition;
// (zero sized) _10
/*mux_wire*/ logic[8:0] current_align_and;
wire[8:0] _13;
assign _13 = current_align + num_elements;
/*mux_wire*/ logic[7:0] next_align;
wire[7:0] _15;
assign _15 = current_align_and; // == mod 256 (target is 8 bits wide)
/*mux_wire*/ logic push_end_of_burst;
wire _17;
assign _17 = current_align_and >= 9'd256;
/*mux_wire*/ logic next_current_burst_is_empty;
wire _21;
assign _21 = num_elements == 1'd0;
wire _22;
assign _22 = current_burst_is_empty & _21;
wire _26;
assign _26 = push_end_of_burst | is_last;
wire _35;
assign _35 = ~current_align_valid;
wire _align_queue_pop_available;
wire[7:0] _align_queue_pop_data;
/*mux_wire*/ logic[7:0] new_addr_align;
/*mux_wire*/ logic _align_queue_pop;
/*mux_wire*/ logic _align_queue_rst;
FWFT_T_type_int_FROM_0_TO_256_DEPTH_32_MAY_PUSH_LATENCY_0 align_queue(
	.clk(clk),
	.may_push(_align_queue_may_push),
	.push(_align_queue_push),
	.push_data(_align_queue_push_data),
	.pop_available(_align_queue_pop_available),
	.pop_data(_align_queue_pop_data),
	.pop(_align_queue_pop),
	.rst(_align_queue_rst)
);
assert_runtime assert_runtime(
	.clk(clk),
	.assert_runtime(_assert_runtime_assert_runtime),
	._condition(_assert_runtime__condition)
);
always_ff @(posedge clk) begin // state current_align
	if(push_elements) if(!is_last) current_align <= next_align;
	if(new_addr_requested) if(_align_queue_pop_available) current_align <= new_addr_align;
end
always_ff @(posedge clk) begin // state current_align_valid
	if(new_addr_requested) if(_align_queue_pop_available) current_align_valid <= 1'b1;
	if(new_addr_requested) if(!_align_queue_pop_available) current_align_valid <= 1'b0;
	if(rst) current_align_valid <= 1'b0;
end
always_ff @(posedge clk) begin // state current_burst_is_empty
	if(push_elements) current_burst_is_empty <= next_current_burst_is_empty;
	if(new_addr_requested) if(_align_queue_pop_available) current_burst_is_empty <= 1'b1;
end
always_comb begin // combinatorial _
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ = 1'bx;
	_ = _align_queue_may_push;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ = _;
end
always_comb begin // combinatorial _align_queue_push
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_align_queue_push = 1'bx;
	_align_queue_push = 1'b0;
	if(push_new_align) _align_queue_push = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_align_queue_push = _align_queue_push;
end
always_comb begin // combinatorial _align_queue_push_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_align_queue_push_data = 8'dx;
	if(push_new_align) _align_queue_push_data = new_starting_align;
end
always_comb begin // combinatorial output_command
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	output_command = 1'bx;
	output_command = 1'b0;
	if(push_elements) if(_26) output_command = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	output_command = output_command;
end
always_comb begin // combinatorial end_of_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	end_of_burst = 1'bx;
	if(push_elements) if(_26) end_of_burst = push_end_of_burst;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	end_of_burst = end_of_burst;
end
always_comb begin // combinatorial is_last_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_last_burst = 1'bx;
	if(push_elements) if(_26) is_last_burst = is_last;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	is_last_burst = is_last_burst;
end
always_comb begin // combinatorial final_align
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	final_align = 8'dx;
	if(push_elements) if(_26) final_align = next_align;
end
always_comb begin // combinatorial burst_is_empty
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	burst_is_empty = 1'bx;
	if(push_elements) if(_26) burst_is_empty = next_current_burst_is_empty;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	burst_is_empty = burst_is_empty;
end
always_comb begin // combinatorial new_addr_requested
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	new_addr_requested = 1'bx;
	new_addr_requested = 1'b0;
	if(push_elements) if(is_last) new_addr_requested = 1'b1;
	if(_35) new_addr_requested = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	new_addr_requested = new_addr_requested;
end
always_comb begin // combinatorial _assert_runtime_assert_runtime
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_assert_runtime_assert_runtime = 1'bx;
	_assert_runtime_assert_runtime = 1'b0;
	if(push_elements) _assert_runtime_assert_runtime = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_assert_runtime_assert_runtime = _assert_runtime_assert_runtime;
end
always_comb begin // combinatorial _assert_runtime__condition
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_assert_runtime__condition = 1'bx;
	if(push_elements) _assert_runtime__condition = current_align_valid;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_assert_runtime__condition = _assert_runtime__condition;
end
always_comb begin // combinatorial current_align_and
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	current_align_and = 9'dx;
	if(push_elements) current_align_and = _13;
end
always_comb begin // combinatorial next_align
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	next_align = 8'dx;
	if(push_elements) next_align = _15;
end
always_comb begin // combinatorial push_end_of_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	push_end_of_burst = 1'bx;
	if(push_elements) push_end_of_burst = _17;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	push_end_of_burst = push_end_of_burst;
end
always_comb begin // combinatorial next_current_burst_is_empty
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	next_current_burst_is_empty = 1'bx;
	if(push_elements) next_current_burst_is_empty = _22;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	next_current_burst_is_empty = next_current_burst_is_empty;
end
always_comb begin // combinatorial new_addr_align
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	new_addr_align = 8'dx;
	if(new_addr_requested) if(_align_queue_pop_available) new_addr_align = _align_queue_pop_data;
end
always_comb begin // combinatorial _align_queue_pop
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_align_queue_pop = 1'bx;
	_align_queue_pop = 1'b0;
	if(new_addr_requested) if(_align_queue_pop_available) _align_queue_pop = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_align_queue_pop = _align_queue_pop;
end
always_comb begin // combinatorial _align_queue_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_align_queue_rst = 1'bx;
	_align_queue_rst = 1'b0;
	if(rst) _align_queue_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_align_queue_rst = _align_queue_rst;
end
endmodule // burst_write_splitter #(MAX_ELEMENTS_IN_BURST: 256, NUM_PARALLEL_ELEMENTS: 1, ADDR_QUEUE_SIZE: 32)

// assert_runtime #()
module assert_runtime(
	/* clock */ input clk,
	input wire assert_runtime,
	input wire _condition
);

// PATCH XRT 2.16 over-zealous empty module DRC
initial begin end
endmodule // assert_runtime #()

// FWFT #(T: type int #(FROM: 0, TO: 256), DEPTH: 32, MAY_PUSH_LATENCY: 0)
module FWFT_T_type_int_FROM_0_TO_256_DEPTH_32_MAY_PUSH_LATENCY_0(
	/* clock */ input clk,
	output /*mux_wire*/ logic may_push,
	input wire push,
	input wire[7:0] push_data,
	output /*mux_wire*/ logic pop_available,
	output /*mux_wire*/ logic[7:0] pop_data,
	input wire pop,
	input wire rst
);

/*state*/ logic[7:0] mem[0:31];
/*state*/ logic[4:0] read_addr;
/*state*/ logic[4:0] write_addr;
/*state*/ logic[1:0] outflow_path_valids_reg;
/*state*/ logic[7:0] outflow_path_elems_reg[0:1];
/*mux_wire*/ logic[2:0] outflow_path_valids;
/*mux_wire*/ logic[7:0] outflow_path_elems[0:2];
/*mux_wire*/ logic[2:0] will_shifts;
wire _3;
assign _3 = read_addr != write_addr;
wire[7:0] _5 = mem[read_addr];
wire[7:0] _6 = outflow_path_elems_reg[0];
wire _7 = outflow_path_valids_reg[0];
wire _8 = will_shifts[0];
wire _9 = outflow_path_valids[0];
wire _10;
assign _10 = ~_9;
wire _11;
assign _11 = _8 | _10;
wire _12 = will_shifts[1];
wire _13 = outflow_path_valids[1];
wire[7:0] _14 = outflow_path_elems[1];
wire[7:0] _15 = outflow_path_elems_reg[1];
wire _16 = outflow_path_valids_reg[1];
wire _17 = will_shifts[1];
wire _18 = outflow_path_valids[1];
wire _19;
assign _19 = ~_18;
wire _20;
assign _20 = _17 | _19;
wire _21 = will_shifts[2];
wire _22 = outflow_path_valids[2];
wire[7:0] _23 = outflow_path_elems[2];
/*mux_wire*/ logic[4:0] space_remaining;
wire signed[5:0] _26;
assign _26 = read_addr - write_addr;
wire signed[5:0] _28;
assign _28 = _26 - $signed({1'b0, 1'd1});
wire[4:0] _29;
assign _29 = _28; // == mod 32 (target is 5 bits wide)
wire _32;
assign _32 = space_remaining > 1'd1;
/*mux_wire*/ logic _LatencyOffset_din;
wire _LatencyOffset_dout;
/*latency*/ logic __LatencyOffset_dout_D0; always_ff @(posedge clk) begin __LatencyOffset_dout_D0 <= _LatencyOffset_dout; end
/*mux_wire*/ logic[7:0] _ToBits_value;
wire[7:0] _ToBits_bits;
wire[5:0] _37;
assign _37 = write_addr + 1'd1;
wire[4:0] _38;
assign _38 = _37; // == mod 32 (target is 5 bits wide)
wire _39 = outflow_path_valids[2];
wire _40 = will_shifts[2];
wire _41;
assign _41 = _39 & _40;
wire[5:0] _44;
assign _44 = read_addr + 1'd1;
wire[4:0] _45;
assign _45 = _44; // == mod 32 (target is 5 bits wide)
wire _47 = outflow_path_valids[0];
wire[7:0] _48 = outflow_path_elems[0];
/*mux_wire*/ logic[7:0] _FromBits_bits;
wire[7:0] _FromBits_value;
LatencyOffset_T_type_bool_OFFSET_N1 LatencyOffset(
	.clk(clk),
	.din(_LatencyOffset_din),
	.dout(_LatencyOffset_dout)
);
ToBits_T_type_int_FROM_0_TO_256 ToBits(
	.clk(clk),
	.value(_ToBits_value),
	.bits(_ToBits_bits)
);
FromBits_T_type_int_FROM_0_TO_256 FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
always_ff @(posedge clk) begin // state mem
	if(push) mem[write_addr] <= _ToBits_bits;
end
always_ff @(posedge clk) begin // state read_addr
	if(_41) read_addr <= _45;
	if(rst) read_addr <= 1'd0;
end
always_ff @(posedge clk) begin // state write_addr
	if(push) write_addr <= _38;
	if(rst) write_addr <= 1'd0;
end
always_ff @(posedge clk) begin // state outflow_path_valids_reg
	if(_12) outflow_path_valids_reg[0] <= _13;
	if(_21) outflow_path_valids_reg[1] <= _22;
	if(rst) outflow_path_valids_reg[0] <= 1'b0;
	if(rst) outflow_path_valids_reg[1] <= 1'b0;
end
always_ff @(posedge clk) begin // state outflow_path_elems_reg
	if(_12) outflow_path_elems_reg[0] <= _14;
	if(_21) outflow_path_elems_reg[1] <= _23;
end
always_comb begin // combinatorial outflow_path_valids
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	outflow_path_valids = 3'bxxx;
	outflow_path_valids[2] = _3;
	outflow_path_valids[0] = _7;
	outflow_path_valids[1] = _16;
end
always_comb begin // combinatorial outflow_path_elems
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	outflow_path_elems = '{8'bxxxxxxxx, 8'bxxxxxxxx, 8'bxxxxxxxx};
	outflow_path_elems[2] = _5;
	outflow_path_elems[0] = _6;
	outflow_path_elems[1] = _15;
end
always_comb begin // combinatorial will_shifts
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	will_shifts = 3'bxxx;
	will_shifts[1] = _11;
	will_shifts[2] = _20;
	will_shifts[0] = 1'b0;
	if(pop_available) if(pop) will_shifts[0] = 1'b1;
end
always_comb begin // combinatorial space_remaining
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	space_remaining = 5'dx;
	space_remaining = _29;
end
always_comb begin // combinatorial may_push
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_push = 1'bx;
	may_push = __LatencyOffset_dout_D0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	may_push = may_push;
end
always_comb begin // combinatorial _LatencyOffset_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_din = 1'bx;
	_LatencyOffset_din = _32;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_LatencyOffset_din = _LatencyOffset_din;
end
always_comb begin // combinatorial _ToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_value = 8'dx;
	if(push) _ToBits_value = push_data;
end
always_comb begin // combinatorial pop_available
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_available = 1'bx;
	pop_available = 1'b0;
	if(_47) pop_available = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	pop_available = pop_available;
end
always_comb begin // combinatorial pop_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_data = 8'dx;
	if(_47) pop_data = _FromBits_value;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 8'bxxxxxxxx;
	if(_47) _FromBits_bits = _48;
end
endmodule // FWFT #(T: type int #(FROM: 0, TO: 256), DEPTH: 32, MAY_PUSH_LATENCY: 0)

// Tuple4 #(T1: type bool #(), T2: type bool #(), T3: type int #(FROM: 0, TO: 256), T4: type bool #())
module Tuple4_T1_type_bool_T2_type_bool_T3_type_int_FROM_0_TO_256_T4_type_bool(
	/* clock */ input clk,
	input wire v1_i,
	input wire v2_i,
	input wire[7:0] v3_i,
	input wire v4_i,
	output /*mux_wire*/ logic[10:0] packed_o,
	input wire[10:0] packed_i,
	output /*mux_wire*/ logic v1_o,
	output /*mux_wire*/ logic v2_o,
	output /*mux_wire*/ logic[7:0] v3_o,
	output /*mux_wire*/ logic v4_o
);

genvar _g0;
/*mux_wire*/ logic _ToBits_value;
wire[0:0] _ToBits_bits;
/*mux_wire*/ logic _ToBits_2_value;
wire[0:0] _ToBits_2_bits;
/*mux_wire*/ logic[7:0] _ToBits_3_value;
wire[7:0] _ToBits_3_bits;
/*mux_wire*/ logic _ToBits_4_value;
wire[0:0] _ToBits_4_bits;
wire[0:0] _5;
generate
for(_g0 = 0; _g0 < 1; _g0 = _g0 + 1) begin
assign _5[_g0] = packed_i[_g0];
end
endgenerate
/*mux_wire*/ logic[0:0] _FromBits_bits;
wire _FromBits_value;
wire[0:0] _6;
generate
for(_g0 = 0; _g0 < 1; _g0 = _g0 + 1) begin
assign _6[_g0] = packed_i[1 + _g0];
end
endgenerate
/*mux_wire*/ logic[0:0] _FromBits_2_bits;
wire _FromBits_2_value;
wire[7:0] _7;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _7[_g0] = packed_i[2 + _g0];
end
endgenerate
/*mux_wire*/ logic[7:0] _FromBits_3_bits;
wire[7:0] _FromBits_3_value;
wire[0:0] _8;
generate
for(_g0 = 0; _g0 < 1; _g0 = _g0 + 1) begin
assign _8[_g0] = packed_i[10 + _g0];
end
endgenerate
/*mux_wire*/ logic[0:0] _FromBits_4_bits;
wire _FromBits_4_value;
ToBits_T_type_bool ToBits(
	.clk(clk),
	.value(_ToBits_value),
	.bits(_ToBits_bits)
);
ToBits_T_type_bool ToBits_2(
	.clk(clk),
	.value(_ToBits_2_value),
	.bits(_ToBits_2_bits)
);
ToBits_T_type_int_FROM_0_TO_256 ToBits_3(
	.clk(clk),
	.value(_ToBits_3_value),
	.bits(_ToBits_3_bits)
);
ToBits_T_type_bool ToBits_4(
	.clk(clk),
	.value(_ToBits_4_value),
	.bits(_ToBits_4_bits)
);
FromBits_T_type_bool FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
FromBits_T_type_bool FromBits_2(
	.clk(clk),
	.bits(_FromBits_2_bits),
	.value(_FromBits_2_value)
);
FromBits_T_type_int_FROM_0_TO_256 FromBits_3(
	.clk(clk),
	.bits(_FromBits_3_bits),
	.value(_FromBits_3_value)
);
FromBits_T_type_bool FromBits_4(
	.clk(clk),
	.bits(_FromBits_4_bits),
	.value(_FromBits_4_value)
);
always_comb begin // combinatorial packed_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	packed_o = 11'bxxxxxxxxxxx;
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
packed_o[_v0] = _ToBits_bits[_v0];
end
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
packed_o[1 + _v0] = _ToBits_2_bits[_v0];
end
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
packed_o[2 + _v0] = _ToBits_3_bits[_v0];
end
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
packed_o[10 + _v0] = _ToBits_4_bits[_v0];
end
end
always_comb begin // combinatorial _ToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_value = 1'bx;
	_ToBits_value = v1_i;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ToBits_value = _ToBits_value;
end
always_comb begin // combinatorial _ToBits_2_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_2_value = 1'bx;
	_ToBits_2_value = v2_i;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ToBits_2_value = _ToBits_2_value;
end
always_comb begin // combinatorial _ToBits_3_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_3_value = 8'dx;
	_ToBits_3_value = v3_i;
end
always_comb begin // combinatorial _ToBits_4_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_4_value = 1'bx;
	_ToBits_4_value = v4_i;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ToBits_4_value = _ToBits_4_value;
end
always_comb begin // combinatorial v1_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v1_o = 1'bx;
	v1_o = _FromBits_value;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	v1_o = v1_o;
end
always_comb begin // combinatorial v2_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v2_o = 1'bx;
	v2_o = _FromBits_2_value;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	v2_o = v2_o;
end
always_comb begin // combinatorial v3_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v3_o = 8'dx;
	v3_o = _FromBits_3_value;
end
always_comb begin // combinatorial v4_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v4_o = 1'bx;
	v4_o = _FromBits_4_value;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	v4_o = v4_o;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 1'bx;
	_FromBits_bits = _5;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_FromBits_bits = _FromBits_bits;
end
always_comb begin // combinatorial _FromBits_2_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_2_bits = 1'bx;
	_FromBits_2_bits = _6;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_FromBits_2_bits = _FromBits_2_bits;
end
always_comb begin // combinatorial _FromBits_3_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_3_bits = 8'bxxxxxxxx;
	_FromBits_3_bits = _7;
end
always_comb begin // combinatorial _FromBits_4_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_4_bits = 1'bx;
	_FromBits_4_bits = _8;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_FromBits_4_bits = _FromBits_4_bits;
end
endmodule // Tuple4 #(T1: type bool #(), T2: type bool #(), T3: type int #(FROM: 0, TO: 256), T4: type bool #())

// FWFT #(T: type bool #()[11], DEPTH: 128, MAY_PUSH_LATENCY: 0)
module FWFT_T_type_bool_11_DEPTH_128_MAY_PUSH_LATENCY_0(
	/* clock */ input clk,
	output /*mux_wire*/ logic may_push,
	input wire push,
	input wire[10:0] push_data,
	output /*mux_wire*/ logic pop_available,
	output /*mux_wire*/ logic[10:0] pop_data,
	input wire pop,
	input wire rst
);

/*state*/ logic[10:0] mem[0:127];
/*state*/ logic[6:0] read_addr;
/*state*/ logic[6:0] write_addr;
/*state*/ logic[1:0] outflow_path_valids_reg;
/*state*/ logic[10:0] outflow_path_elems_reg[0:1];
/*mux_wire*/ logic[2:0] outflow_path_valids;
/*mux_wire*/ logic[10:0] outflow_path_elems[0:2];
/*mux_wire*/ logic[2:0] will_shifts;
wire _3;
assign _3 = read_addr != write_addr;
wire[10:0] _5 = mem[read_addr];
wire[10:0] _6 = outflow_path_elems_reg[0];
wire _7 = outflow_path_valids_reg[0];
wire _8 = will_shifts[0];
wire _9 = outflow_path_valids[0];
wire _10;
assign _10 = ~_9;
wire _11;
assign _11 = _8 | _10;
wire _12 = will_shifts[1];
wire _13 = outflow_path_valids[1];
wire[10:0] _14 = outflow_path_elems[1];
wire[10:0] _15 = outflow_path_elems_reg[1];
wire _16 = outflow_path_valids_reg[1];
wire _17 = will_shifts[1];
wire _18 = outflow_path_valids[1];
wire _19;
assign _19 = ~_18;
wire _20;
assign _20 = _17 | _19;
wire _21 = will_shifts[2];
wire _22 = outflow_path_valids[2];
wire[10:0] _23 = outflow_path_elems[2];
/*mux_wire*/ logic[6:0] space_remaining;
wire signed[7:0] _26;
assign _26 = read_addr - write_addr;
wire signed[7:0] _28;
assign _28 = _26 - $signed({1'b0, 1'd1});
wire[6:0] _29;
assign _29 = _28; // == mod 128 (target is 7 bits wide)
wire _32;
assign _32 = space_remaining > 1'd1;
/*mux_wire*/ logic _LatencyOffset_din;
wire _LatencyOffset_dout;
/*latency*/ logic __LatencyOffset_dout_D0; always_ff @(posedge clk) begin __LatencyOffset_dout_D0 <= _LatencyOffset_dout; end
/*mux_wire*/ logic[10:0] _ToBits_value;
wire[10:0] _ToBits_bits;
wire[7:0] _37;
assign _37 = write_addr + 1'd1;
wire[6:0] _38;
assign _38 = _37; // == mod 128 (target is 7 bits wide)
wire _39 = outflow_path_valids[2];
wire _40 = will_shifts[2];
wire _41;
assign _41 = _39 & _40;
wire[7:0] _44;
assign _44 = read_addr + 1'd1;
wire[6:0] _45;
assign _45 = _44; // == mod 128 (target is 7 bits wide)
wire _47 = outflow_path_valids[0];
wire[10:0] _48 = outflow_path_elems[0];
/*mux_wire*/ logic[10:0] _FromBits_bits;
wire[10:0] _FromBits_value;
LatencyOffset_T_type_bool_OFFSET_N1 LatencyOffset(
	.clk(clk),
	.din(_LatencyOffset_din),
	.dout(_LatencyOffset_dout)
);
ToBits_T_type_bool_11 ToBits(
	.clk(clk),
	.value(_ToBits_value),
	.bits(_ToBits_bits)
);
FromBits_T_type_bool_11 FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
always_ff @(posedge clk) begin // state mem
	if(push) mem[write_addr] <= _ToBits_bits;
end
always_ff @(posedge clk) begin // state read_addr
	if(_41) read_addr <= _45;
	if(rst) read_addr <= 1'd0;
end
always_ff @(posedge clk) begin // state write_addr
	if(push) write_addr <= _38;
	if(rst) write_addr <= 1'd0;
end
always_ff @(posedge clk) begin // state outflow_path_valids_reg
	if(_12) outflow_path_valids_reg[0] <= _13;
	if(_21) outflow_path_valids_reg[1] <= _22;
	if(rst) outflow_path_valids_reg[0] <= 1'b0;
	if(rst) outflow_path_valids_reg[1] <= 1'b0;
end
always_ff @(posedge clk) begin // state outflow_path_elems_reg
	if(_12) outflow_path_elems_reg[0] <= _14;
	if(_21) outflow_path_elems_reg[1] <= _23;
end
always_comb begin // combinatorial outflow_path_valids
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	outflow_path_valids = 3'bxxx;
	outflow_path_valids[2] = _3;
	outflow_path_valids[0] = _7;
	outflow_path_valids[1] = _16;
end
always_comb begin // combinatorial outflow_path_elems
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	outflow_path_elems = '{11'bxxxxxxxxxxx, 11'bxxxxxxxxxxx, 11'bxxxxxxxxxxx};
	outflow_path_elems[2] = _5;
	outflow_path_elems[0] = _6;
	outflow_path_elems[1] = _15;
end
always_comb begin // combinatorial will_shifts
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	will_shifts = 3'bxxx;
	will_shifts[1] = _11;
	will_shifts[2] = _20;
	will_shifts[0] = 1'b0;
	if(pop_available) if(pop) will_shifts[0] = 1'b1;
end
always_comb begin // combinatorial space_remaining
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	space_remaining = 7'dx;
	space_remaining = _29;
end
always_comb begin // combinatorial may_push
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_push = 1'bx;
	may_push = __LatencyOffset_dout_D0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	may_push = may_push;
end
always_comb begin // combinatorial _LatencyOffset_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_din = 1'bx;
	_LatencyOffset_din = _32;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_LatencyOffset_din = _LatencyOffset_din;
end
always_comb begin // combinatorial _ToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_value = 11'bxxxxxxxxxxx;
	if(push) _ToBits_value = push_data;
end
always_comb begin // combinatorial pop_available
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_available = 1'bx;
	pop_available = 1'b0;
	if(_47) pop_available = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	pop_available = pop_available;
end
always_comb begin // combinatorial pop_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_data = 11'bxxxxxxxxxxx;
	if(_47) pop_data = _FromBits_value;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 11'bxxxxxxxxxxx;
	if(_47) _FromBits_bits = _48;
end
endmodule // FWFT #(T: type bool #()[11], DEPTH: 128, MAY_PUSH_LATENCY: 0)

// FromBits #(T: type bool #()[11])
module FromBits_T_type_bool_11(
	/* clock */ input clk,
	input wire[10:0] bits,
	output /*mux_wire*/ logic[10:0] value
);

assign value = bits;
endmodule // FromBits #(T: type bool #()[11])

// ToBits #(T: type bool #()[11])
module ToBits_T_type_bool_11(
	/* clock */ input clk,
	input wire[10:0] value,
	output /*mux_wire*/ logic[10:0] bits
);

assign bits = value;
endmodule // ToBits #(T: type bool #()[11])

// FWFT #(T: type int #(FROM: 0, TO: 4611686018427387904), DEPTH: 32, MAY_PUSH_LATENCY: 0)
module FWFT_T_type_int_FROM_0_TO_4611686018427387904_DEPTH_32_MAY_PUSH_LATENCY_0(
	/* clock */ input clk,
	output /*mux_wire*/ logic may_push,
	input wire push,
	input wire[61:0] push_data,
	output /*mux_wire*/ logic pop_available,
	output /*mux_wire*/ logic[61:0] pop_data,
	input wire pop,
	input wire rst
);

/*state*/ logic[61:0] mem[0:31];
/*state*/ logic[4:0] read_addr;
/*state*/ logic[4:0] write_addr;
/*state*/ logic[1:0] outflow_path_valids_reg;
/*state*/ logic[61:0] outflow_path_elems_reg[0:1];
/*mux_wire*/ logic[2:0] outflow_path_valids;
/*mux_wire*/ logic[61:0] outflow_path_elems[0:2];
/*mux_wire*/ logic[2:0] will_shifts;
wire _3;
assign _3 = read_addr != write_addr;
wire[61:0] _5 = mem[read_addr];
wire[61:0] _6 = outflow_path_elems_reg[0];
wire _7 = outflow_path_valids_reg[0];
wire _8 = will_shifts[0];
wire _9 = outflow_path_valids[0];
wire _10;
assign _10 = ~_9;
wire _11;
assign _11 = _8 | _10;
wire _12 = will_shifts[1];
wire _13 = outflow_path_valids[1];
wire[61:0] _14 = outflow_path_elems[1];
wire[61:0] _15 = outflow_path_elems_reg[1];
wire _16 = outflow_path_valids_reg[1];
wire _17 = will_shifts[1];
wire _18 = outflow_path_valids[1];
wire _19;
assign _19 = ~_18;
wire _20;
assign _20 = _17 | _19;
wire _21 = will_shifts[2];
wire _22 = outflow_path_valids[2];
wire[61:0] _23 = outflow_path_elems[2];
/*mux_wire*/ logic[4:0] space_remaining;
wire signed[5:0] _26;
assign _26 = read_addr - write_addr;
wire signed[5:0] _28;
assign _28 = _26 - $signed({1'b0, 1'd1});
wire[4:0] _29;
assign _29 = _28; // == mod 32 (target is 5 bits wide)
wire _32;
assign _32 = space_remaining > 1'd1;
/*mux_wire*/ logic _LatencyOffset_din;
wire _LatencyOffset_dout;
/*latency*/ logic __LatencyOffset_dout_D0; always_ff @(posedge clk) begin __LatencyOffset_dout_D0 <= _LatencyOffset_dout; end
/*mux_wire*/ logic[61:0] _ToBits_value;
wire[61:0] _ToBits_bits;
wire[5:0] _37;
assign _37 = write_addr + 1'd1;
wire[4:0] _38;
assign _38 = _37; // == mod 32 (target is 5 bits wide)
wire _39 = outflow_path_valids[2];
wire _40 = will_shifts[2];
wire _41;
assign _41 = _39 & _40;
wire[5:0] _44;
assign _44 = read_addr + 1'd1;
wire[4:0] _45;
assign _45 = _44; // == mod 32 (target is 5 bits wide)
wire _47 = outflow_path_valids[0];
wire[61:0] _48 = outflow_path_elems[0];
/*mux_wire*/ logic[61:0] _FromBits_bits;
wire[61:0] _FromBits_value;
LatencyOffset_T_type_bool_OFFSET_N1 LatencyOffset(
	.clk(clk),
	.din(_LatencyOffset_din),
	.dout(_LatencyOffset_dout)
);
ToBits_T_type_int_FROM_0_TO_4611686018427387904 ToBits(
	.clk(clk),
	.value(_ToBits_value),
	.bits(_ToBits_bits)
);
FromBits_T_type_int_FROM_0_TO_4611686018427387904 FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
always_ff @(posedge clk) begin // state mem
	if(push) mem[write_addr] <= _ToBits_bits;
end
always_ff @(posedge clk) begin // state read_addr
	if(_41) read_addr <= _45;
	if(rst) read_addr <= 1'd0;
end
always_ff @(posedge clk) begin // state write_addr
	if(push) write_addr <= _38;
	if(rst) write_addr <= 1'd0;
end
always_ff @(posedge clk) begin // state outflow_path_valids_reg
	if(_12) outflow_path_valids_reg[0] <= _13;
	if(_21) outflow_path_valids_reg[1] <= _22;
	if(rst) outflow_path_valids_reg[0] <= 1'b0;
	if(rst) outflow_path_valids_reg[1] <= 1'b0;
end
always_ff @(posedge clk) begin // state outflow_path_elems_reg
	if(_12) outflow_path_elems_reg[0] <= _14;
	if(_21) outflow_path_elems_reg[1] <= _23;
end
always_comb begin // combinatorial outflow_path_valids
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	outflow_path_valids = 3'bxxx;
	outflow_path_valids[2] = _3;
	outflow_path_valids[0] = _7;
	outflow_path_valids[1] = _16;
end
always_comb begin // combinatorial outflow_path_elems
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	outflow_path_elems = '{62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	outflow_path_elems[2] = _5;
	outflow_path_elems[0] = _6;
	outflow_path_elems[1] = _15;
end
always_comb begin // combinatorial will_shifts
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	will_shifts = 3'bxxx;
	will_shifts[1] = _11;
	will_shifts[2] = _20;
	will_shifts[0] = 1'b0;
	if(pop_available) if(pop) will_shifts[0] = 1'b1;
end
always_comb begin // combinatorial space_remaining
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	space_remaining = 5'dx;
	space_remaining = _29;
end
always_comb begin // combinatorial may_push
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_push = 1'bx;
	may_push = __LatencyOffset_dout_D0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	may_push = may_push;
end
always_comb begin // combinatorial _LatencyOffset_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_din = 1'bx;
	_LatencyOffset_din = _32;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_LatencyOffset_din = _LatencyOffset_din;
end
always_comb begin // combinatorial _ToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_value = 62'dx;
	if(push) _ToBits_value = push_data;
end
always_comb begin // combinatorial pop_available
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_available = 1'bx;
	pop_available = 1'b0;
	if(_47) pop_available = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	pop_available = pop_available;
end
always_comb begin // combinatorial pop_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_data = 62'dx;
	if(_47) pop_data = _FromBits_value;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_47) _FromBits_bits = _48;
end
endmodule // FWFT #(T: type int #(FROM: 0, TO: 4611686018427387904), DEPTH: 32, MAY_PUSH_LATENCY: 0)

// LatencyOffset #(T: type bool #(), OFFSET: -1)
module LatencyOffset_T_type_bool_OFFSET_N1(
	/* clock */ input clk,
	input wire din,
	output /*mux_wire*/ logic dout
);

	assign dout = din;
endmodule // LatencyOffset #(T: type bool #(), OFFSET: -1)

// IntNarrow #(FROM_I: -255, TO_I: 256, FROM: 0, TO: 256)
module IntNarrow_FROM_I_N255_TO_I_256_FROM_0_TO_256(
	/* clock */ input clk,
	input wire signed[8:0] din,
	output /*mux_wire*/ logic[7:0] dout
);

	assign dout = din;
endmodule // IntNarrow #(FROM_I: -255, TO_I: 256, FROM: 0, TO: 256)

// BitwiseIntSplit #(TO: 255, LOWER_BITS: 0)
module BitwiseIntSplit_TO_255_LOWER_BITS_0(
	/* clock */ input clk,
	input wire[7:0] v,
	output /*mux_wire*/ logic[7:0] upper
	// (zero sized) output lower
);

genvar _g0;
/*mux_wire*/ logic[7:0] v_bits;
/*mux_wire*/ logic[7:0] _UIntToBits_value;
wire[7:0] _UIntToBits_bits;
// (zero sized) _2
// (zero sized) _BitsToUInt_bits
// (zero sized) _BitsToUInt_value
wire[7:0] _3;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _3[_g0] = v_bits[_g0];
end
endgenerate
/*mux_wire*/ logic[7:0] _FromBits_bits;
wire[7:0] _FromBits_value;
UIntToBits_NUM_BITS_8 UIntToBits(
	.clk(clk),
	.value(_UIntToBits_value),
	.bits(_UIntToBits_bits)
);
BitsToUInt_NUM_BITS_0 BitsToUInt(
	.clk(clk)
	// (zero sized port) .bits(_BitsToUInt_bits)
	// (zero sized port) .value(_BitsToUInt_value)
);
FromBits_T_type_int_FROM_0_TO_255 FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
always_comb begin // combinatorial upper
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	upper = 8'dx;
	upper = _FromBits_value;
end
always_comb begin // combinatorial v_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v_bits = 8'bxxxxxxxx;
	v_bits = _UIntToBits_bits;
end
always_comb begin // combinatorial _UIntToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_UIntToBits_value = 8'dx;
	_UIntToBits_value = v;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 8'bxxxxxxxx;
	_FromBits_bits = _3;
end
endmodule // BitwiseIntSplit #(TO: 255, LOWER_BITS: 0)

// FromBits #(T: type int #(FROM: 0, TO: 255))
module FromBits_T_type_int_FROM_0_TO_255(
	/* clock */ input clk,
	input wire[7:0] bits,
	output /*mux_wire*/ logic[7:0] value
);

assign value = bits;
endmodule // FromBits #(T: type int #(FROM: 0, TO: 255))

// IntNarrow #(FROM_I: 0, TO_I: 256, FROM: 1, TO: 256)
module IntNarrow_FROM_I_0_TO_I_256_FROM_1_TO_256(
	/* clock */ input clk,
	input wire[7:0] din,
	output /*mux_wire*/ logic[7:0] dout
);

	assign dout = din;
endmodule // IntNarrow #(FROM_I: 0, TO_I: 256, FROM: 1, TO: 256)

// SlowStablePipelineCustom #(T: type bool #()[71], PIPELINE_DEPTH: 1)
module SlowStablePipelineCustom_T_type_bool_71_PIPELINE_DEPTH_1(
	/* clock */ input clk,
	input wire input_changed,
	output /*mux_wire*/ logic pipeline_stable,
	input wire[70:0] pipeline_in,
	output /*mux_wire*/ logic[70:0] pipeline_out,
	input wire rst
);

/*state*/ logic[0:0] cooldown;
localparam[0:0] RepeatGen = 1'b0;
wire _1 = cooldown[0];
/*mux_wire*/ logic[70:0] _LatencyOffset_din;
wire[70:0] _LatencyOffset_dout;
localparam[0:0] RepeatGen_2 = 1'b0;
LatencyOffset_T_type_bool_71_OFFSET_N1 LatencyOffset(
	.clk(clk),
	.din(_LatencyOffset_din),
	.dout(_LatencyOffset_dout)
);
always_ff @(posedge clk) begin // state cooldown
	if(input_changed) cooldown <= RepeatGen;
	if(!input_changed) cooldown[0] <= 1'b1;
	if(rst) cooldown <= RepeatGen_2;
end
always_comb begin // combinatorial pipeline_stable
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pipeline_stable = 1'bx;
	pipeline_stable = _1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	pipeline_stable = pipeline_stable;
end
always_comb begin // combinatorial pipeline_out
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pipeline_out = 71'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	pipeline_out = _LatencyOffset_dout;
end
always_comb begin // combinatorial _LatencyOffset_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_din = 71'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_LatencyOffset_din = pipeline_in;
end
endmodule // SlowStablePipelineCustom #(T: type bool #()[71], PIPELINE_DEPTH: 1)

// LatencyOffset #(T: type bool #()[71], OFFSET: -1)
module LatencyOffset_T_type_bool_71_OFFSET_N1(
	/* clock */ input clk,
	input wire[70:0] din,
	output /*mux_wire*/ logic[70:0] dout
);

	assign dout = din;
endmodule // LatencyOffset #(T: type bool #()[71], OFFSET: -1)

// Tuple3 #(T1: type int #(FROM: 0, TO: 4611686018427387904), T2: type int #(FROM: 0, TO: 256), T3: type bool #())
module Tuple3_T1_type_int_FROM_0_TO_4611686018427387904_T2_type_int_FROM_0_TO_256_T3_type_bool(
	/* clock */ input clk,
	input wire[61:0] v1_i,
	input wire[7:0] v2_i,
	input wire v3_i,
	output /*mux_wire*/ logic[70:0] packed_o,
	input wire[70:0] packed_i,
	output /*mux_wire*/ logic[61:0] v1_o,
	output /*mux_wire*/ logic[7:0] v2_o,
	output /*mux_wire*/ logic v3_o
);

genvar _g0;
/*mux_wire*/ logic[61:0] _ToBits_value;
wire[61:0] _ToBits_bits;
/*mux_wire*/ logic[7:0] _ToBits_2_value;
wire[7:0] _ToBits_2_bits;
/*mux_wire*/ logic _ToBits_3_value;
wire[0:0] _ToBits_3_bits;
wire[61:0] _4;
generate
for(_g0 = 0; _g0 < 62; _g0 = _g0 + 1) begin
assign _4[_g0] = packed_i[_g0];
end
endgenerate
/*mux_wire*/ logic[61:0] _FromBits_bits;
wire[61:0] _FromBits_value;
wire[7:0] _5;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _5[_g0] = packed_i[62 + _g0];
end
endgenerate
/*mux_wire*/ logic[7:0] _FromBits_2_bits;
wire[7:0] _FromBits_2_value;
wire[0:0] _6;
generate
for(_g0 = 0; _g0 < 1; _g0 = _g0 + 1) begin
assign _6[_g0] = packed_i[70 + _g0];
end
endgenerate
/*mux_wire*/ logic[0:0] _FromBits_3_bits;
wire _FromBits_3_value;
ToBits_T_type_int_FROM_0_TO_4611686018427387904 ToBits(
	.clk(clk),
	.value(_ToBits_value),
	.bits(_ToBits_bits)
);
ToBits_T_type_int_FROM_0_TO_256 ToBits_2(
	.clk(clk),
	.value(_ToBits_2_value),
	.bits(_ToBits_2_bits)
);
ToBits_T_type_bool ToBits_3(
	.clk(clk),
	.value(_ToBits_3_value),
	.bits(_ToBits_3_bits)
);
FromBits_T_type_int_FROM_0_TO_4611686018427387904 FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
FromBits_T_type_int_FROM_0_TO_256 FromBits_2(
	.clk(clk),
	.bits(_FromBits_2_bits),
	.value(_FromBits_2_value)
);
FromBits_T_type_bool FromBits_3(
	.clk(clk),
	.bits(_FromBits_3_bits),
	.value(_FromBits_3_value)
);
always_comb begin // combinatorial packed_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	packed_o = 71'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	for(int _v0 = 0; _v0 < 62; _v0 = _v0 + 1) begin
packed_o[_v0] = _ToBits_bits[_v0];
end
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
packed_o[62 + _v0] = _ToBits_2_bits[_v0];
end
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
packed_o[70 + _v0] = _ToBits_3_bits[_v0];
end
end
always_comb begin // combinatorial _ToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_value = 62'dx;
	_ToBits_value = v1_i;
end
always_comb begin // combinatorial _ToBits_2_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_2_value = 8'dx;
	_ToBits_2_value = v2_i;
end
always_comb begin // combinatorial _ToBits_3_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_3_value = 1'bx;
	_ToBits_3_value = v3_i;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ToBits_3_value = _ToBits_3_value;
end
always_comb begin // combinatorial v1_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v1_o = 62'dx;
	v1_o = _FromBits_value;
end
always_comb begin // combinatorial v2_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v2_o = 8'dx;
	v2_o = _FromBits_2_value;
end
always_comb begin // combinatorial v3_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v3_o = 1'bx;
	v3_o = _FromBits_3_value;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	v3_o = v3_o;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_FromBits_bits = _4;
end
always_comb begin // combinatorial _FromBits_2_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_2_bits = 8'bxxxxxxxx;
	_FromBits_2_bits = _5;
end
always_comb begin // combinatorial _FromBits_3_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_3_bits = 1'bx;
	_FromBits_3_bits = _6;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_FromBits_3_bits = _FromBits_3_bits;
end
endmodule // Tuple3 #(T1: type int #(FROM: 0, TO: 4611686018427387904), T2: type int #(FROM: 0, TO: 256), T3: type bool #())

// ToBits #(T: type int #(FROM: 0, TO: 256))
module ToBits_T_type_int_FROM_0_TO_256(
	/* clock */ input clk,
	input wire[7:0] value,
	output /*mux_wire*/ logic[7:0] bits
);

assign bits = value;
endmodule // ToBits #(T: type int #(FROM: 0, TO: 256))

// axi4_burst_reader #(ExtraDataT: type bool #()[0], AXI_WIDTH: 32, ADDR_WIDTH: 64, ADDR_ALIGN: 4, COUNT_TO: 4294967296, MAX_IN_FLIGHT: 412)
module axi4_burst_reader_ExtraDataT_type_bool_0_AXI_WIDTH_32_ADDR_WIDTH_64_ADDR_ALIGN_4_COUNT_TO_4294967296_MAX_IN_FLIGHT_412(
	/* clock */ input clk,
	output /*state*/ logic arvalid,
	input wire arready,
	output /*mux_wire*/ logic[63:0] araddr,
	output /*state*/ logic[7:0] arlen,
	output /*mux_wire*/ logic[2:0] arsize,
	output /*mux_wire*/ logic[1:0] arburst,
	output /*mux_wire*/ logic[2:0] arprot,
	output /*mux_wire*/ logic[3:0] arcache,
	output /*mux_wire*/ logic[3:0] arqos,
	output /*mux_wire*/ logic arlock,
	output /*mux_wire*/ logic[3:0] arregion,
	input wire rvalid,
	output /*state*/ logic rready,
	input wire[31:0] rdata,
	input wire[1:0] rresp,
	input wire rlast,
	output /*mux_wire*/ logic may_request_new_read,
	input wire request_new_read,
	input wire[63:0] start_addr,
	input wire[31:0] count,
	// (zero sized) input extra_data
	input wire ready_for_lots_of_data,
	output /*mux_wire*/ logic chunk_valid,
	output /*mux_wire*/ logic[31:0] elements[0:0],
	output /*mux_wire*/ logic[0:0] chunk_length,
	// (zero sized) output chunk_offset
	output /*mux_wire*/ logic last,
	// (zero sized) output extra_data_out
	input wire rst
);

genvar _g0;
/*state*/ logic[61:0] araddr_transfer;
wire[63:0] _2;
assign _2 = araddr_transfer << 2'd2;
localparam[1:0] _3 = 2'b01;
localparam[2:0] _4 = 3'b000;
localparam[3:0] _5 = 4'b0010;
/*mux_wire*/ logic[1:0] _rresp;
/*state*/ logic cur_addr_valid;
/*state*/ logic[61:0] cur_addr;
/*state*/ logic[31:0] elements_remaining;
// (zero sized) stored_extra_data
/*mux_wire*/ logic[61:0] _pack_feedback_loop_v1_i;
/*mux_wire*/ logic[31:0] _pack_feedback_loop_v2_i;
wire[93:0] _pack_feedback_loop_packed_o;
/*mux_wire*/ logic[93:0] _feedback_loop_pipeline_in;
/*mux_wire*/ logic[61:0] cur_addr_begin_pipeline;
/*mux_wire*/ logic[31:0] elements_remaining_begin_pipeline;
wire[93:0] _feedback_loop_pipeline_out;
/*mux_wire*/ logic[93:0] _pack_feedback_loop_packed_i;
wire[61:0] _pack_feedback_loop_v1_o;
wire[31:0] _pack_feedback_loop_v2_o;
/*mux_wire*/ logic[53:0] addr_burst;
/*mux_wire*/ logic[7:0] first_elem_in_burst;
/*mux_wire*/ logic[61:0] _BitwiseIntSplit_v;
wire[53:0] _BitwiseIntSplit_upper;
wire[7:0] _BitwiseIntSplit_lower;
/*mux_wire*/ logic[7:0] first_transfer_idx;
// (zero sized) first_elem_in_transfer
/*mux_wire*/ logic[7:0] _BitwiseIntSplit_2_v;
wire[7:0] _BitwiseIntSplit_2_upper;
// (zero sized) _BitwiseIntSplit_2_lower
/*mux_wire*/ logic[53:0] next_addr_burst_idx;
wire[54:0] _16;
assign _16 = addr_burst + 1'd1;
wire[53:0] _18;
assign _18 = _16; // == mod 18014398509481984 (target is 54 bits wide)
/*latency*/ logic[53:0] __18_D0; always_ff @(posedge clk) begin __18_D0 <= _18; end
/*mux_wire*/ logic[8:0] max_number_of_elements_in_this_burst;
wire[8:0] _20;
assign _20 = 9'd256 - first_elem_in_burst;
/*mux_wire*/ logic signed[32:0] reduced_elements_remaining;
wire signed[32:0] _23;
assign _23 = elements_remaining_begin_pipeline - max_number_of_elements_in_this_burst;
/*latency*/ logic signed[32:0] __23_D0; always_ff @(posedge clk) begin __23_D0 <= _23; end
/*mux_wire*/ logic is_last;
wire _26;
assign _26 = reduced_elements_remaining <= $signed({1'b0, 1'd0});
/*mux_wire*/ logic is_zero_sized_burst;
wire _29;
assign _29 = elements_remaining_begin_pipeline == 1'd0;
/*latency*/ logic __29_D0; always_ff @(posedge clk) begin __29_D0 <= _29; end
/*mux_wire*/ logic signed[32:0] arlen_remaining;
/*latency*/ logic signed[32:0] _arlen_remaining_D0; always_ff @(posedge clk) begin _arlen_remaining_D0 <= arlen_remaining; end
wire[31:0] _32;
assign _32 = elements_remaining_begin_pipeline + 1'd0;
wire signed[32:0] _34;
assign _34 = _32 - 1'd1;
/*state*/ logic[8:0] in_flight_headroom;
wire _36;
assign _36 = ~cur_addr_valid;
/*mux_wire*/ logic[61:0] elem_addr;
/*mux_wire*/ logic[1:0] _misalign;
/*mux_wire*/ logic[63:0] _BitwiseIntSplit_3_v;
wire[61:0] _BitwiseIntSplit_3_upper;
wire[1:0] _BitwiseIntSplit_3_lower;
/*mux_wire*/ logic _feedback_loop_input_changed;
/*mux_wire*/ logic signed[8:0] num_transfers_in_this_burst;
wire _45;
assign _45 = arvalid & arready;
/*mux_wire*/ logic enough_in_flight_headroom;
wire signed[9:0] _50;
assign _50 = $signed({1'b0, in_flight_headroom}) - num_transfers_in_this_burst;
wire _53;
assign _53 = rready & rvalid;
/*mux_wire*/ logic _BoolToInt_i;
wire[0:0] _BoolToInt_o;
wire[0:0] _55;
assign _55 = 1'd1 - _BoolToInt_o;
wire signed[9:0] _56;
assign _56 = _50 - $signed({1'b0, _55});
/*mux_wire*/ logic signed[9:0] _IntNarrow_din;
wire[8:0] _IntNarrow_dout;
wire _58;
assign _58 = in_flight_headroom >= 9'd256;
/*mux_wire*/ logic offset_receiver_is_ready;
/*mux_wire*/ logic _LatencyOffset_din;
wire _LatencyOffset_dout;
wire _63;
assign _63 = cur_addr_valid & enough_in_flight_headroom;
wire _65;
assign _65 = _63 & offset_receiver_is_ready;
wire _67;
assign _67 = ~arvalid;
wire _68;
assign _68 = _65 & _67;
wire _command_fifo_may_push;
wire _70;
assign _70 = _68 & _command_fifo_may_push;
wire _feedback_loop_pipeline_stable;
wire _72;
assign _72 = _70 & _feedback_loop_pipeline_stable;
/*latency*/ logic __72_D1; always_ff @(posedge clk) begin __72_D1 <= _72; end
// (zero sized) final_align
/*mux_wire*/ logic[7:0] new_arlen;
/*mux_wire*/ logic[7:0] final_burst_arlen;
/*mux_wire*/ logic signed[32:0] _IntNarrow_2_din;
wire[7:0] _IntNarrow_2_dout;
/*mux_wire*/ logic[7:0] _BitwiseIntSplit_4_v;
wire[7:0] _BitwiseIntSplit_4_upper;
// (zero sized) _BitwiseIntSplit_4_lower
wire[7:0] _78;
assign _78 = 8'd255 - first_transfer_idx;
/*latency*/ logic[7:0] __78_D0; always_ff @(posedge clk) begin __78_D0 <= _78; end
/*mux_wire*/ logic signed[32:0] _IntNarrow_3_din;
wire[31:0] _IntNarrow_3_dout;
/*mux_wire*/ logic[53:0] _BitwiseIntConcat_upper;
/*mux_wire*/ logic[7:0] _BitwiseIntConcat_lower;
wire[61:0] _BitwiseIntConcat_v;
wire _86;
assign _86 = ~is_zero_sized_burst;
// (zero sized) _align
/*mux_wire*/ logic[61:0] _BitwiseIntSplit_5_v;
wire[61:0] _BitwiseIntSplit_5_upper;
// (zero sized) _BitwiseIntSplit_5_lower
/*mux_wire*/ logic[1:0] packed_command;
// (zero sized) _command_tuple_v1_i
// (zero sized) _command_tuple_v2_i
/*mux_wire*/ logic _command_tuple_v3_i;
/*mux_wire*/ logic _command_tuple_v4_i;
// (zero sized) _command_tuple_v5_i
wire[1:0] _command_tuple_packed_o;
/*latency*/ logic[1:0] __command_tuple_packed_o_D1; always_ff @(posedge clk) begin __command_tuple_packed_o_D1 <= _command_tuple_packed_o; end
/*mux_wire*/ logic _command_fifo_push;
/*mux_wire*/ logic[1:0] _command_fifo_push_data;
// (zero sized) chunk_offset_2
// (zero sized) stored_end_align
/*state*/ logic stored_is_last;
/*state*/ logic stored_is_empty_burst;
// (zero sized) stored_extra_data_out
/*mux_wire*/ logic[31:0] elements_2[0:0];
wire[31:0] _96;
generate
for(_g0 = 0; _g0 < 32; _g0 = _g0 + 1) begin
assign _96[_g0] = rdata[_g0];
end
endgenerate
/*mux_wire*/ logic[0:0] chunk_length_2;
/*mux_wire*/ logic is_final_last;
wire _101;
assign _101 = rlast & stored_is_last;
wire[0:0] _105;
assign _105 = 1'd0 + 1'd1;
wire[0:0] _107;
assign _107 = _105 - 1'd0;
/*mux_wire*/ logic[0:0] _IntNarrow_4_din;
wire[0:0] _IntNarrow_4_dout;
wire[0:0] _109;
assign _109 = 1'd1 - 1'd0;
wire _112;
assign _112 = rready & rvalid;
wire _114;
assign _114 = _112 | stored_is_empty_burst;
/*mux_wire*/ logic should_get_new_burst;
wire _124;
assign _124 = rready & rvalid;
wire _126;
assign _126 = _124 & rlast;
wire _128;
assign _128 = _126 | stored_is_empty_burst;
wire _130;
assign _130 = ~rready;
wire _131;
assign _131 = _128 | _130;
wire _command_fifo_pop_available;
wire[1:0] _command_fifo_pop_data;
/*mux_wire*/ logic[1:0] pop_data;
/*mux_wire*/ logic _command_fifo_pop;
// (zero sized) cmd_start_align
// (zero sized) cmd_end_align
/*mux_wire*/ logic cmd_is_last;
/*mux_wire*/ logic cmd_is_empty_burst;
// (zero sized) extra_data_2
/*mux_wire*/ logic[1:0] _command_tuple_packed_i;
// (zero sized) _command_tuple_v1_o
// (zero sized) _command_tuple_v2_o
wire _command_tuple_v3_o;
wire _command_tuple_v4_o;
// (zero sized) _command_tuple_v5_o
wire _142;
assign _142 = ~cmd_is_empty_burst;
/*mux_wire*/ logic _command_fifo_rst;
/*mux_wire*/ logic _feedback_loop_rst;
SlowStablePipelineCustom_T_type_bool_94_PIPELINE_DEPTH_1 feedback_loop(
	.clk(clk),
	.input_changed(_feedback_loop_input_changed),
	.pipeline_stable(_feedback_loop_pipeline_stable),
	.pipeline_in(_feedback_loop_pipeline_in),
	.pipeline_out(_feedback_loop_pipeline_out),
	.rst(_feedback_loop_rst)
);
Tuple2_T1_type_int_FROM_0_TO_4611686018427387904_T2_type_int_FROM_0_TO_4294967296 pack_feedback_loop(
	.clk(clk),
	.v1_i(_pack_feedback_loop_v1_i),
	.v2_i(_pack_feedback_loop_v2_i),
	.packed_o(_pack_feedback_loop_packed_o),
	.packed_i(_pack_feedback_loop_packed_i),
	.v1_o(_pack_feedback_loop_v1_o),
	.v2_o(_pack_feedback_loop_v2_o)
);
BitwiseIntSplit_TO_4611686018427387904_LOWER_BITS_8 BitwiseIntSplit(
	.clk(clk),
	.v(_BitwiseIntSplit_v),
	.upper(_BitwiseIntSplit_upper),
	.lower(_BitwiseIntSplit_lower)
);
BitwiseIntSplit_TO_256_LOWER_BITS_0 BitwiseIntSplit_2(
	.clk(clk),
	.v(_BitwiseIntSplit_2_v),
	.upper(_BitwiseIntSplit_2_upper)
	// (zero sized port) .lower(_BitwiseIntSplit_2_lower)
);
Tuple5_T1_type_int_FROM_0_TO_1_T2_type_int_FROM_0_TO_1_T3_type_bool_T4_type_bool_T5_type_bool_0 command_tuple(
	.clk(clk),
	// (zero sized port) .v1_i(_command_tuple_v1_i)
	// (zero sized port) .v2_i(_command_tuple_v2_i)
	.v3_i(_command_tuple_v3_i),
	.v4_i(_command_tuple_v4_i),
	// (zero sized port) .v5_i(_command_tuple_v5_i)
	.packed_o(_command_tuple_packed_o),
	.packed_i(_command_tuple_packed_i),
	// (zero sized port) .v1_o(_command_tuple_v1_o)
	// (zero sized port) .v2_o(_command_tuple_v2_o)
	.v3_o(_command_tuple_v3_o),
	.v4_o(_command_tuple_v4_o)
	// (zero sized port) .v5_o(_command_tuple_v5_o)
);
FWFT_T_type_bool_2_DEPTH_256_MAY_PUSH_LATENCY_1 command_fifo(
	.clk(clk),
	.may_push(_command_fifo_may_push),
	.push(_command_fifo_push),
	.push_data(_command_fifo_push_data),
	.pop_available(_command_fifo_pop_available),
	.pop_data(_command_fifo_pop_data),
	.pop(_command_fifo_pop),
	.rst(_command_fifo_rst)
);
BitwiseIntSplit_TO_18446744073709551616_LOWER_BITS_2 BitwiseIntSplit_3(
	.clk(clk),
	.v(_BitwiseIntSplit_3_v),
	.upper(_BitwiseIntSplit_3_upper),
	.lower(_BitwiseIntSplit_3_lower)
);
BoolToInt BoolToInt(
	.clk(clk),
	.i(_BoolToInt_i),
	.o(_BoolToInt_o)
);
IntNarrow_FROM_I_N256_TO_I_414_FROM_0_TO_413 IntNarrow(
	.clk(clk),
	.din(_IntNarrow_din),
	.dout(_IntNarrow_dout)
);
LatencyOffset_T_type_bool_OFFSET_412 LatencyOffset(
	.clk(clk),
	.din(_LatencyOffset_din),
	.dout(_LatencyOffset_dout)
);
IntNarrow_FROM_I_N1_TO_I_4294967295_FROM_0_TO_256 IntNarrow_2(
	.clk(clk),
	.din(_IntNarrow_2_din),
	.dout(_IntNarrow_2_dout)
);
BitwiseIntSplit_TO_256_LOWER_BITS_0 BitwiseIntSplit_4(
	.clk(clk),
	.v(_BitwiseIntSplit_4_v),
	.upper(_BitwiseIntSplit_4_upper)
	// (zero sized port) .lower(_BitwiseIntSplit_4_lower)
);
IntNarrow_FROM_I_N256_TO_I_4294967295_FROM_1_TO_4294967296 IntNarrow_3(
	.clk(clk),
	.din(_IntNarrow_3_din),
	.dout(_IntNarrow_3_dout)
);
BitwiseIntConcat_UPPER_TO_18014398509481984_LOWER_BITS_8 BitwiseIntConcat(
	.clk(clk),
	.upper(_BitwiseIntConcat_upper),
	.lower(_BitwiseIntConcat_lower),
	.v(_BitwiseIntConcat_v)
);
BitwiseIntSplit_TO_4611686018427387904_LOWER_BITS_0 BitwiseIntSplit_5(
	.clk(clk),
	.v(_BitwiseIntSplit_5_v),
	.upper(_BitwiseIntSplit_5_upper)
	// (zero sized port) .lower(_BitwiseIntSplit_5_lower)
);
IntNarrow_FROM_I_1_TO_I_2_FROM_0_TO_2 IntNarrow_4(
	.clk(clk),
	.din(_IntNarrow_4_din),
	.dout(_IntNarrow_4_dout)
);
always_ff @(posedge clk) begin // state araddr_transfer
	if(_72) araddr_transfer <= _BitwiseIntSplit_5_upper;
end
always_ff @(posedge clk) begin // state arvalid
	if(_45) arvalid <= 1'b0;
	if(_72) arvalid <= _86;
	if(rst) arvalid <= 1'b0;
end
always_comb begin // combinatorial araddr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	araddr = 64'dx;
	araddr = _2;
end
always_ff @(posedge clk) begin // state arlen
	if(_72) arlen <= new_arlen;
end
always_comb begin // combinatorial arsize
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	arsize = 3'dx;
	arsize = 2'd2;
end
always_comb begin // combinatorial arburst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	arburst = 2'bxx;
	arburst = _3;
end
always_comb begin // combinatorial arprot
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	arprot = 3'bxxx;
	arprot = _4;
end
always_comb begin // combinatorial arcache
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	arcache = 4'bxxxx;
	arcache = _5;
end
always_comb begin // combinatorial arqos
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	arqos = 4'dx;
	arqos = 1'd0;
end
always_comb begin // combinatorial arlock
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	arlock = 1'bx;
	arlock = 1'b0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	arlock = arlock;
end
always_comb begin // combinatorial arregion
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	arregion = 4'dx;
	arregion = 1'd0;
end
always_ff @(posedge clk) begin // state rready
	if(should_get_new_burst) if(_command_fifo_pop_available) rready <= _142;
	if(should_get_new_burst) if(!_command_fifo_pop_available) rready <= 1'b0;
	if(rst) rready <= 1'b0;
end
always_comb begin // combinatorial _rresp
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rresp = 2'bxx;
	_rresp = rresp;
end
always_ff @(posedge clk) begin // state cur_addr_valid
	if(request_new_read) cur_addr_valid <= 1'b1;
	if(_72) if(is_last) cur_addr_valid <= 1'b0;
	if(rst) cur_addr_valid <= 1'b0;
end
always_ff @(posedge clk) begin // state cur_addr
	if(request_new_read) cur_addr <= elem_addr;
	if(_72) if(!is_last) cur_addr <= _BitwiseIntConcat_v;
end
always_ff @(posedge clk) begin // state elements_remaining
	if(request_new_read) elements_remaining <= count;
	if(_72) if(!is_last) elements_remaining <= _IntNarrow_3_dout;
end
always_comb begin // combinatorial _pack_feedback_loop_v1_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pack_feedback_loop_v1_i = 62'dx;
	_pack_feedback_loop_v1_i = cur_addr;
end
always_comb begin // combinatorial _pack_feedback_loop_v2_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pack_feedback_loop_v2_i = 32'dx;
	_pack_feedback_loop_v2_i = elements_remaining;
end
always_comb begin // combinatorial _feedback_loop_pipeline_in
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_feedback_loop_pipeline_in = 94'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_feedback_loop_pipeline_in = _pack_feedback_loop_packed_o;
end
always_comb begin // combinatorial cur_addr_begin_pipeline
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	cur_addr_begin_pipeline = 62'dx;
	cur_addr_begin_pipeline = _pack_feedback_loop_v1_o;
end
always_comb begin // combinatorial elements_remaining_begin_pipeline
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	elements_remaining_begin_pipeline = 32'dx;
	elements_remaining_begin_pipeline = _pack_feedback_loop_v2_o;
end
always_comb begin // combinatorial _pack_feedback_loop_packed_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pack_feedback_loop_packed_i = 94'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_pack_feedback_loop_packed_i = _feedback_loop_pipeline_out;
end
always_comb begin // combinatorial addr_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	addr_burst = 54'dx;
	addr_burst = _BitwiseIntSplit_upper;
end
always_comb begin // combinatorial first_elem_in_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	first_elem_in_burst = 8'dx;
	first_elem_in_burst = _BitwiseIntSplit_lower;
end
always_comb begin // combinatorial _BitwiseIntSplit_v
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitwiseIntSplit_v = 62'dx;
	_BitwiseIntSplit_v = cur_addr_begin_pipeline;
end
always_comb begin // combinatorial first_transfer_idx
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	first_transfer_idx = 8'dx;
	first_transfer_idx = _BitwiseIntSplit_2_upper;
end
always_comb begin // combinatorial _BitwiseIntSplit_2_v
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitwiseIntSplit_2_v = 8'dx;
	_BitwiseIntSplit_2_v = first_elem_in_burst;
end
always_comb begin // combinatorial next_addr_burst_idx
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	next_addr_burst_idx = 54'dx;
	next_addr_burst_idx = __18_D0;
end
always_comb begin // combinatorial max_number_of_elements_in_this_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	max_number_of_elements_in_this_burst = 9'dx;
	max_number_of_elements_in_this_burst = _20;
end
always_comb begin // combinatorial reduced_elements_remaining
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	reduced_elements_remaining = 33'sdx;
	reduced_elements_remaining = __23_D0;
end
always_comb begin // combinatorial is_last
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_last = 1'bx;
	is_last = _26;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	is_last = is_last;
end
always_comb begin // combinatorial is_zero_sized_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_zero_sized_burst = 1'bx;
	is_zero_sized_burst = __29_D0;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	is_zero_sized_burst = is_zero_sized_burst;
end
always_comb begin // combinatorial arlen_remaining
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	arlen_remaining = 33'sdx;
	arlen_remaining = _34;
end
always_ff @(posedge clk) begin // state in_flight_headroom
	in_flight_headroom <= _IntNarrow_dout;
	if(rst) in_flight_headroom <= 9'd412;
end
always_comb begin // combinatorial may_request_new_read
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_request_new_read = 1'bx;
	may_request_new_read = _36;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	may_request_new_read = may_request_new_read;
end
always_comb begin // combinatorial elem_addr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	elem_addr = 62'dx;
	if(request_new_read) elem_addr = _BitwiseIntSplit_3_upper;
end
always_comb begin // combinatorial _misalign
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_misalign = 2'dx;
	if(request_new_read) _misalign = _BitwiseIntSplit_3_lower;
end
always_comb begin // combinatorial _BitwiseIntSplit_3_v
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitwiseIntSplit_3_v = 64'dx;
	if(request_new_read) _BitwiseIntSplit_3_v = start_addr;
end
always_comb begin // combinatorial _feedback_loop_input_changed
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_feedback_loop_input_changed = 1'bx;
	_feedback_loop_input_changed = 1'b0;
	if(request_new_read) _feedback_loop_input_changed = 1'b1;
	if(_72) if(!is_last) _feedback_loop_input_changed = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_feedback_loop_input_changed = _feedback_loop_input_changed;
end
always_comb begin // combinatorial num_transfers_in_this_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	num_transfers_in_this_burst = 9'sdx;
	if(_45) num_transfers_in_this_burst = arlen;
	if(!_45) num_transfers_in_this_burst = 1'sh1 /* -1 */;
end
always_comb begin // combinatorial enough_in_flight_headroom
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	enough_in_flight_headroom = 1'bx;
	enough_in_flight_headroom = _58;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	enough_in_flight_headroom = enough_in_flight_headroom;
end
always_comb begin // combinatorial _BoolToInt_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BoolToInt_i = 1'bx;
	_BoolToInt_i = _53;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_BoolToInt_i = _BoolToInt_i;
end
always_comb begin // combinatorial _IntNarrow_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_din = 10'sdx;
	_IntNarrow_din = _56;
end
always_comb begin // combinatorial offset_receiver_is_ready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	offset_receiver_is_ready = 1'bx;
	offset_receiver_is_ready = _LatencyOffset_dout;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	offset_receiver_is_ready = offset_receiver_is_ready;
end
always_comb begin // combinatorial _LatencyOffset_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_din = 1'bx;
	_LatencyOffset_din = ready_for_lots_of_data;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_LatencyOffset_din = _LatencyOffset_din;
end
always_comb begin // combinatorial chunk_valid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	chunk_valid = 1'bx;
	chunk_valid = 1'b0;
	if(_114) chunk_valid = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	chunk_valid = chunk_valid;
end
always_comb begin // combinatorial elements
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	elements = '{32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
if(_114) elements[_v0] = elements_2[_v0];
end
end
always_comb begin // combinatorial chunk_length
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	chunk_length = 1'dx;
	if(_114) chunk_length = chunk_length_2;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	chunk_length = chunk_length;
end
always_comb begin // combinatorial last
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	last = 1'bx;
	if(_114) last = is_final_last;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	last = last;
end
always_comb begin // combinatorial new_arlen
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	new_arlen = 8'dx;
	if(_72) if(is_last) new_arlen = _BitwiseIntSplit_4_upper;
	if(_72) if(!is_last) new_arlen = __78_D0;
end
always_comb begin // combinatorial final_burst_arlen
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	final_burst_arlen = 8'dx;
	if(_72) if(is_last) final_burst_arlen = _IntNarrow_2_dout;
end
always_comb begin // combinatorial _IntNarrow_2_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_2_din = 33'sdx;
	if(_72) if(is_last) _IntNarrow_2_din = _arlen_remaining_D0;
end
always_comb begin // combinatorial _BitwiseIntSplit_4_v
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitwiseIntSplit_4_v = 8'dx;
	if(_72) if(is_last) _BitwiseIntSplit_4_v = final_burst_arlen;
end
always_comb begin // combinatorial _IntNarrow_3_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_3_din = 33'sdx;
	if(_72) if(!is_last) _IntNarrow_3_din = reduced_elements_remaining;
end
always_comb begin // combinatorial _BitwiseIntConcat_upper
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitwiseIntConcat_upper = 54'dx;
	if(_72) if(!is_last) _BitwiseIntConcat_upper = next_addr_burst_idx;
end
always_comb begin // combinatorial _BitwiseIntConcat_lower
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitwiseIntConcat_lower = 8'dx;
	if(_72) if(!is_last) _BitwiseIntConcat_lower = 1'd0;
end
always_comb begin // combinatorial _BitwiseIntSplit_5_v
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitwiseIntSplit_5_v = 62'dx;
	if(_72) _BitwiseIntSplit_5_v = cur_addr;
end
always_comb begin // combinatorial packed_command
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	packed_command = 2'bxx;
	if(__72_D1) packed_command = __command_tuple_packed_o_D1;
end
always_comb begin // combinatorial _command_tuple_v3_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_command_tuple_v3_i = 1'bx;
	if(_72) _command_tuple_v3_i = is_last;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_command_tuple_v3_i = _command_tuple_v3_i;
end
always_comb begin // combinatorial _command_tuple_v4_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_command_tuple_v4_i = 1'bx;
	if(_72) _command_tuple_v4_i = is_zero_sized_burst;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_command_tuple_v4_i = _command_tuple_v4_i;
end
always_comb begin // combinatorial _command_fifo_push
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_command_fifo_push = 1'bx;
	_command_fifo_push = 1'b0;
	if(__72_D1) _command_fifo_push = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_command_fifo_push = _command_fifo_push;
end
always_comb begin // combinatorial _command_fifo_push_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_command_fifo_push_data = 2'bxx;
	if(__72_D1) _command_fifo_push_data = packed_command;
end
always_ff @(posedge clk) begin // state stored_is_last
	if(should_get_new_burst) if(_command_fifo_pop_available) stored_is_last <= cmd_is_last;
end
always_ff @(posedge clk) begin // state stored_is_empty_burst
	if(_114) stored_is_empty_burst <= 1'b0;
	if(should_get_new_burst) if(_command_fifo_pop_available) stored_is_empty_burst <= cmd_is_empty_burst;
	if(rst) stored_is_empty_burst <= 1'b0;
end
always_comb begin // combinatorial elements_2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	elements_2 = '{32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	elements_2[0] = _96;
end
always_comb begin // combinatorial chunk_length_2
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	chunk_length_2 = 1'dx;
	if(stored_is_empty_burst) chunk_length_2 = 1'd0;
	if(!stored_is_empty_burst) if(is_final_last) chunk_length_2 = _IntNarrow_4_dout;
	if(!stored_is_empty_burst) if(!is_final_last) chunk_length_2 = _109;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	chunk_length_2 = chunk_length_2;
end
always_comb begin // combinatorial is_final_last
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_final_last = 1'bx;
	if(stored_is_empty_burst) is_final_last = 1'b1;
	if(!stored_is_empty_burst) is_final_last = _101;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	is_final_last = is_final_last;
end
always_comb begin // combinatorial _IntNarrow_4_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_4_din = 1'dx;
	if(!stored_is_empty_burst) if(is_final_last) _IntNarrow_4_din = _107;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_IntNarrow_4_din = _IntNarrow_4_din;
end
always_comb begin // combinatorial should_get_new_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	should_get_new_burst = 1'bx;
	should_get_new_burst = _131;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	should_get_new_burst = should_get_new_burst;
end
always_comb begin // combinatorial pop_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_data = 2'bxx;
	if(should_get_new_burst) if(_command_fifo_pop_available) pop_data = _command_fifo_pop_data;
end
always_comb begin // combinatorial _command_fifo_pop
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_command_fifo_pop = 1'bx;
	_command_fifo_pop = 1'b0;
	if(should_get_new_burst) if(_command_fifo_pop_available) _command_fifo_pop = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_command_fifo_pop = _command_fifo_pop;
end
always_comb begin // combinatorial cmd_is_last
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	cmd_is_last = 1'bx;
	if(should_get_new_burst) if(_command_fifo_pop_available) cmd_is_last = _command_tuple_v3_o;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	cmd_is_last = cmd_is_last;
end
always_comb begin // combinatorial cmd_is_empty_burst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	cmd_is_empty_burst = 1'bx;
	if(should_get_new_burst) if(_command_fifo_pop_available) cmd_is_empty_burst = _command_tuple_v4_o;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	cmd_is_empty_burst = cmd_is_empty_burst;
end
always_comb begin // combinatorial _command_tuple_packed_i
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_command_tuple_packed_i = 2'bxx;
	if(should_get_new_burst) if(_command_fifo_pop_available) _command_tuple_packed_i = pop_data;
end
always_comb begin // combinatorial _command_fifo_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_command_fifo_rst = 1'bx;
	_command_fifo_rst = 1'b0;
	if(rst) _command_fifo_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_command_fifo_rst = _command_fifo_rst;
end
always_comb begin // combinatorial _feedback_loop_rst
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_feedback_loop_rst = 1'bx;
	_feedback_loop_rst = 1'b0;
	if(rst) _feedback_loop_rst = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_feedback_loop_rst = _feedback_loop_rst;
end
endmodule // axi4_burst_reader #(ExtraDataT: type bool #()[0], AXI_WIDTH: 32, ADDR_WIDTH: 64, ADDR_ALIGN: 4, COUNT_TO: 4294967296, MAX_IN_FLIGHT: 412)

// IntNarrow #(FROM_I: 1, TO_I: 2, FROM: 0, TO: 2)
module IntNarrow_FROM_I_1_TO_I_2_FROM_0_TO_2(
	/* clock */ input clk,
	input wire[0:0] din,
	output /*mux_wire*/ logic[0:0] dout
);

	assign dout = din;
endmodule // IntNarrow #(FROM_I: 1, TO_I: 2, FROM: 0, TO: 2)

// BitwiseIntSplit #(TO: 4611686018427387904, LOWER_BITS: 0)
module BitwiseIntSplit_TO_4611686018427387904_LOWER_BITS_0(
	/* clock */ input clk,
	input wire[61:0] v,
	output /*mux_wire*/ logic[61:0] upper
	// (zero sized) output lower
);

genvar _g0;
/*mux_wire*/ logic[61:0] v_bits;
/*mux_wire*/ logic[61:0] _UIntToBits_value;
wire[61:0] _UIntToBits_bits;
// (zero sized) _2
// (zero sized) _BitsToUInt_bits
// (zero sized) _BitsToUInt_value
wire[61:0] _3;
generate
for(_g0 = 0; _g0 < 62; _g0 = _g0 + 1) begin
assign _3[_g0] = v_bits[_g0];
end
endgenerate
/*mux_wire*/ logic[61:0] _FromBits_bits;
wire[61:0] _FromBits_value;
UIntToBits_NUM_BITS_62 UIntToBits(
	.clk(clk),
	.value(_UIntToBits_value),
	.bits(_UIntToBits_bits)
);
BitsToUInt_NUM_BITS_0 BitsToUInt(
	.clk(clk)
	// (zero sized port) .bits(_BitsToUInt_bits)
	// (zero sized port) .value(_BitsToUInt_value)
);
FromBits_T_type_int_FROM_0_TO_4611686018427387904 FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
always_comb begin // combinatorial upper
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	upper = 62'dx;
	upper = _FromBits_value;
end
always_comb begin // combinatorial v_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v_bits = 62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	v_bits = _UIntToBits_bits;
end
always_comb begin // combinatorial _UIntToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_UIntToBits_value = 62'dx;
	_UIntToBits_value = v;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_FromBits_bits = _3;
end
endmodule // BitwiseIntSplit #(TO: 4611686018427387904, LOWER_BITS: 0)

// BitwiseIntConcat #(UPPER_TO: 18014398509481984, LOWER_BITS: 8)
module BitwiseIntConcat_UPPER_TO_18014398509481984_LOWER_BITS_8(
	/* clock */ input clk,
	input wire[53:0] upper,
	input wire[7:0] lower,
	output /*mux_wire*/ logic[61:0] v
);

/*mux_wire*/ logic[61:0] v_bits;
/*mux_wire*/ logic[7:0] _UIntToBits_value;
wire[7:0] _UIntToBits_bits;
/*mux_wire*/ logic[53:0] _UIntToBits_2_value;
wire[53:0] _UIntToBits_2_bits;
/*mux_wire*/ logic[61:0] _FromBits_bits;
wire[61:0] _FromBits_value;
UIntToBits_NUM_BITS_8 UIntToBits(
	.clk(clk),
	.value(_UIntToBits_value),
	.bits(_UIntToBits_bits)
);
UIntToBits_NUM_BITS_54 UIntToBits_2(
	.clk(clk),
	.value(_UIntToBits_2_value),
	.bits(_UIntToBits_2_bits)
);
FromBits_T_type_int_FROM_0_TO_4611686018427387904 FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
always_comb begin // combinatorial v
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v = 62'dx;
	v = _FromBits_value;
end
always_comb begin // combinatorial v_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v_bits = 62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
v_bits[_v0] = _UIntToBits_bits[_v0];
end
	for(int _v0 = 0; _v0 < 54; _v0 = _v0 + 1) begin
v_bits[8 + _v0] = _UIntToBits_2_bits[_v0];
end
end
always_comb begin // combinatorial _UIntToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_UIntToBits_value = 8'dx;
	_UIntToBits_value = lower;
end
always_comb begin // combinatorial _UIntToBits_2_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_UIntToBits_2_value = 54'dx;
	_UIntToBits_2_value = upper;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_FromBits_bits = v_bits;
end
endmodule // BitwiseIntConcat #(UPPER_TO: 18014398509481984, LOWER_BITS: 8)

// UIntToBits #(NUM_BITS: 54)
module UIntToBits_NUM_BITS_54(
	/* clock */ input clk,
	input wire[53:0] value,
	output /*mux_wire*/ logic[53:0] bits
);

	assign bits = value;
endmodule // UIntToBits #(NUM_BITS: 54)

// IntNarrow #(FROM_I: -256, TO_I: 4294967295, FROM: 1, TO: 4294967296)
module IntNarrow_FROM_I_N256_TO_I_4294967295_FROM_1_TO_4294967296(
	/* clock */ input clk,
	input wire signed[32:0] din,
	output /*mux_wire*/ logic[31:0] dout
);

	assign dout = din;
endmodule // IntNarrow #(FROM_I: -256, TO_I: 4294967295, FROM: 1, TO: 4294967296)

// IntNarrow #(FROM_I: -1, TO_I: 4294967295, FROM: 0, TO: 256)
module IntNarrow_FROM_I_N1_TO_I_4294967295_FROM_0_TO_256(
	/* clock */ input clk,
	input wire signed[32:0] din,
	output /*mux_wire*/ logic[7:0] dout
);

	assign dout = din;
endmodule // IntNarrow #(FROM_I: -1, TO_I: 4294967295, FROM: 0, TO: 256)

// LatencyOffset #(T: type bool #(), OFFSET: 412)
module LatencyOffset_T_type_bool_OFFSET_412(
	/* clock */ input clk,
	input wire din,
	output /*mux_wire*/ logic dout
);

	assign dout = din;
endmodule // LatencyOffset #(T: type bool #(), OFFSET: 412)

// IntNarrow #(FROM_I: -256, TO_I: 414, FROM: 0, TO: 413)
module IntNarrow_FROM_I_N256_TO_I_414_FROM_0_TO_413(
	/* clock */ input clk,
	input wire signed[9:0] din,
	output /*mux_wire*/ logic[8:0] dout
);

	assign dout = din;
endmodule // IntNarrow #(FROM_I: -256, TO_I: 414, FROM: 0, TO: 413)

// BoolToInt #()
module BoolToInt(
	/* clock */ input clk,
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
endmodule // BoolToInt #()

// BitwiseIntSplit #(TO: 18446744073709551616, LOWER_BITS: 2)
module BitwiseIntSplit_TO_18446744073709551616_LOWER_BITS_2(
	/* clock */ input clk,
	input wire[63:0] v,
	output /*mux_wire*/ logic[61:0] upper,
	output /*mux_wire*/ logic[1:0] lower
);

genvar _g0;
/*mux_wire*/ logic[63:0] v_bits;
/*mux_wire*/ logic[63:0] _UIntToBits_value;
wire[63:0] _UIntToBits_bits;
wire[1:0] _2;
generate
for(_g0 = 0; _g0 < 2; _g0 = _g0 + 1) begin
assign _2[_g0] = v_bits[_g0];
end
endgenerate
/*mux_wire*/ logic[1:0] _BitsToUInt_bits;
wire[1:0] _BitsToUInt_value;
wire[61:0] _3;
generate
for(_g0 = 0; _g0 < 62; _g0 = _g0 + 1) begin
assign _3[_g0] = v_bits[2 + _g0];
end
endgenerate
/*mux_wire*/ logic[61:0] _FromBits_bits;
wire[61:0] _FromBits_value;
UIntToBits_NUM_BITS_64 UIntToBits(
	.clk(clk),
	.value(_UIntToBits_value),
	.bits(_UIntToBits_bits)
);
BitsToUInt_NUM_BITS_2 BitsToUInt(
	.clk(clk),
	.bits(_BitsToUInt_bits),
	.value(_BitsToUInt_value)
);
FromBits_T_type_int_FROM_0_TO_4611686018427387904 FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
always_comb begin // combinatorial upper
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	upper = 62'dx;
	upper = _FromBits_value;
end
always_comb begin // combinatorial lower
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	lower = 2'dx;
	lower = _BitsToUInt_value;
end
always_comb begin // combinatorial v_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v_bits = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	v_bits = _UIntToBits_bits;
end
always_comb begin // combinatorial _UIntToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_UIntToBits_value = 64'dx;
	_UIntToBits_value = v;
end
always_comb begin // combinatorial _BitsToUInt_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToUInt_bits = 2'bxx;
	_BitsToUInt_bits = _2;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_FromBits_bits = _3;
end
endmodule // BitwiseIntSplit #(TO: 18446744073709551616, LOWER_BITS: 2)

// BitsToUInt #(NUM_BITS: 2)
module BitsToUInt_NUM_BITS_2(
	/* clock */ input clk,
	input wire[1:0] bits,
	output /*mux_wire*/ logic[1:0] value
);

	assign value = bits;
endmodule // BitsToUInt #(NUM_BITS: 2)

// UIntToBits #(NUM_BITS: 64)
module UIntToBits_NUM_BITS_64(
	/* clock */ input clk,
	input wire[63:0] value,
	output /*mux_wire*/ logic[63:0] bits
);

	assign bits = value;
endmodule // UIntToBits #(NUM_BITS: 64)

// FWFT #(T: type bool #()[2], DEPTH: 256, MAY_PUSH_LATENCY: 1)
module FWFT_T_type_bool_2_DEPTH_256_MAY_PUSH_LATENCY_1(
	/* clock */ input clk,
	output /*mux_wire*/ logic may_push,
	input wire push,
	input wire[1:0] push_data,
	output /*mux_wire*/ logic pop_available,
	output /*mux_wire*/ logic[1:0] pop_data,
	input wire pop,
	input wire rst
);

/*state*/ logic[1:0] mem[0:255];
/*state*/ logic[7:0] read_addr;
/*state*/ logic[7:0] write_addr;
/*state*/ logic[1:0] outflow_path_valids_reg;
/*state*/ logic[1:0] outflow_path_elems_reg[0:1];
/*mux_wire*/ logic[2:0] outflow_path_valids;
/*mux_wire*/ logic[1:0] outflow_path_elems[0:2];
/*mux_wire*/ logic[2:0] will_shifts;
wire _3;
assign _3 = read_addr != write_addr;
wire[1:0] _5 = mem[read_addr];
wire[1:0] _6 = outflow_path_elems_reg[0];
wire _7 = outflow_path_valids_reg[0];
wire _8 = will_shifts[0];
wire _9 = outflow_path_valids[0];
wire _10;
assign _10 = ~_9;
wire _11;
assign _11 = _8 | _10;
wire _12 = will_shifts[1];
wire _13 = outflow_path_valids[1];
wire[1:0] _14 = outflow_path_elems[1];
wire[1:0] _15 = outflow_path_elems_reg[1];
wire _16 = outflow_path_valids_reg[1];
wire _17 = will_shifts[1];
wire _18 = outflow_path_valids[1];
wire _19;
assign _19 = ~_18;
wire _20;
assign _20 = _17 | _19;
wire _21 = will_shifts[2];
wire _22 = outflow_path_valids[2];
wire[1:0] _23 = outflow_path_elems[2];
/*mux_wire*/ logic[7:0] space_remaining;
wire signed[8:0] _26;
assign _26 = read_addr - write_addr;
wire signed[8:0] _28;
assign _28 = _26 - $signed({1'b0, 1'd1});
wire[7:0] _29;
assign _29 = _28; // == mod 256 (target is 8 bits wide)
wire _32;
assign _32 = space_remaining > 2'd2;
/*mux_wire*/ logic _LatencyOffset_din;
wire _LatencyOffset_dout;
/*latency*/ logic __LatencyOffset_dout_N1; always_ff @(posedge clk) begin __LatencyOffset_dout_N1 <= _LatencyOffset_dout; end
/*mux_wire*/ logic[1:0] _ToBits_value;
wire[1:0] _ToBits_bits;
wire[8:0] _37;
assign _37 = write_addr + 1'd1;
wire[7:0] _38;
assign _38 = _37; // == mod 256 (target is 8 bits wide)
wire _39 = outflow_path_valids[2];
wire _40 = will_shifts[2];
wire _41;
assign _41 = _39 & _40;
wire[8:0] _44;
assign _44 = read_addr + 1'd1;
wire[7:0] _45;
assign _45 = _44; // == mod 256 (target is 8 bits wide)
wire _47 = outflow_path_valids[0];
wire[1:0] _48 = outflow_path_elems[0];
/*mux_wire*/ logic[1:0] _FromBits_bits;
wire[1:0] _FromBits_value;
LatencyOffset_T_type_bool_OFFSET_N2 LatencyOffset(
	.clk(clk),
	.din(_LatencyOffset_din),
	.dout(_LatencyOffset_dout)
);
ToBits_T_type_bool_2 ToBits(
	.clk(clk),
	.value(_ToBits_value),
	.bits(_ToBits_bits)
);
FromBits_T_type_bool_2 FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
always_ff @(posedge clk) begin // state mem
	if(push) mem[write_addr] <= _ToBits_bits;
end
always_ff @(posedge clk) begin // state read_addr
	if(_41) read_addr <= _45;
	if(rst) read_addr <= 1'd0;
end
always_ff @(posedge clk) begin // state write_addr
	if(push) write_addr <= _38;
	if(rst) write_addr <= 1'd0;
end
always_ff @(posedge clk) begin // state outflow_path_valids_reg
	if(_12) outflow_path_valids_reg[0] <= _13;
	if(_21) outflow_path_valids_reg[1] <= _22;
	if(rst) outflow_path_valids_reg[0] <= 1'b0;
	if(rst) outflow_path_valids_reg[1] <= 1'b0;
end
always_ff @(posedge clk) begin // state outflow_path_elems_reg
	if(_12) outflow_path_elems_reg[0] <= _14;
	if(_21) outflow_path_elems_reg[1] <= _23;
end
always_comb begin // combinatorial outflow_path_valids
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	outflow_path_valids = 3'bxxx;
	outflow_path_valids[2] = _3;
	outflow_path_valids[0] = _7;
	outflow_path_valids[1] = _16;
end
always_comb begin // combinatorial outflow_path_elems
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	outflow_path_elems = '{2'bxx, 2'bxx, 2'bxx};
	outflow_path_elems[2] = _5;
	outflow_path_elems[0] = _6;
	outflow_path_elems[1] = _15;
end
always_comb begin // combinatorial will_shifts
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	will_shifts = 3'bxxx;
	will_shifts[1] = _11;
	will_shifts[2] = _20;
	will_shifts[0] = 1'b0;
	if(pop_available) if(pop) will_shifts[0] = 1'b1;
end
always_comb begin // combinatorial space_remaining
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	space_remaining = 8'dx;
	space_remaining = _29;
end
always_comb begin // combinatorial may_push
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_push = 1'bx;
	may_push = __LatencyOffset_dout_N1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	may_push = may_push;
end
always_comb begin // combinatorial _LatencyOffset_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_din = 1'bx;
	_LatencyOffset_din = _32;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_LatencyOffset_din = _LatencyOffset_din;
end
always_comb begin // combinatorial _ToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_value = 2'bxx;
	if(push) _ToBits_value = push_data;
end
always_comb begin // combinatorial pop_available
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_available = 1'bx;
	pop_available = 1'b0;
	if(_47) pop_available = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	pop_available = pop_available;
end
always_comb begin // combinatorial pop_data
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_data = 2'bxx;
	if(_47) pop_data = _FromBits_value;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 2'bxx;
	if(_47) _FromBits_bits = _48;
end
endmodule // FWFT #(T: type bool #()[2], DEPTH: 256, MAY_PUSH_LATENCY: 1)

// FromBits #(T: type bool #()[2])
module FromBits_T_type_bool_2(
	/* clock */ input clk,
	input wire[1:0] bits,
	output /*mux_wire*/ logic[1:0] value
);

assign value = bits;
endmodule // FromBits #(T: type bool #()[2])

// ToBits #(T: type bool #()[2])
module ToBits_T_type_bool_2(
	/* clock */ input clk,
	input wire[1:0] value,
	output /*mux_wire*/ logic[1:0] bits
);

assign bits = value;
endmodule // ToBits #(T: type bool #()[2])

// LatencyOffset #(T: type bool #(), OFFSET: -2)
module LatencyOffset_T_type_bool_OFFSET_N2(
	/* clock */ input clk,
	input wire din,
	output /*mux_wire*/ logic dout
);

	assign dout = din;
endmodule // LatencyOffset #(T: type bool #(), OFFSET: -2)

// Tuple5 #(T1: type int #(FROM: 0, TO: 1), T2: type int #(FROM: 0, TO: 1), T3: type bool #(), T4: type bool #(), T5: type bool #()[0])
module Tuple5_T1_type_int_FROM_0_TO_1_T2_type_int_FROM_0_TO_1_T3_type_bool_T4_type_bool_T5_type_bool_0(
	/* clock */ input clk,
	// (zero sized) input v1_i
	// (zero sized) input v2_i
	input wire v3_i,
	input wire v4_i,
	// (zero sized) input v5_i
	output /*mux_wire*/ logic[1:0] packed_o,
	input wire[1:0] packed_i,
	// (zero sized) output v1_o
	// (zero sized) output v2_o
	output /*mux_wire*/ logic v3_o,
	output /*mux_wire*/ logic v4_o
	// (zero sized) output v5_o
);

genvar _g0;
// (zero sized) _ToBits_value
// (zero sized) _ToBits_bits
// (zero sized) _ToBits_2_value
// (zero sized) _ToBits_2_bits
/*mux_wire*/ logic _ToBits_3_value;
wire[0:0] _ToBits_3_bits;
/*mux_wire*/ logic _ToBits_4_value;
wire[0:0] _ToBits_4_bits;
// (zero sized) _ToBits_5_value
// (zero sized) _ToBits_5_bits
// (zero sized) _6
// (zero sized) _FromBits_bits
// (zero sized) _FromBits_value
// (zero sized) _7
// (zero sized) _FromBits_2_bits
// (zero sized) _FromBits_2_value
wire[0:0] _8;
generate
for(_g0 = 0; _g0 < 1; _g0 = _g0 + 1) begin
assign _8[_g0] = packed_i[_g0];
end
endgenerate
/*mux_wire*/ logic[0:0] _FromBits_3_bits;
wire _FromBits_3_value;
wire[0:0] _9;
generate
for(_g0 = 0; _g0 < 1; _g0 = _g0 + 1) begin
assign _9[_g0] = packed_i[1 + _g0];
end
endgenerate
/*mux_wire*/ logic[0:0] _FromBits_4_bits;
wire _FromBits_4_value;
// (zero sized) _10
// (zero sized) _FromBits_5_bits
// (zero sized) _FromBits_5_value
ToBits_T_type_int_FROM_0_TO_1 ToBits(
	.clk(clk)
	// (zero sized port) .value(_ToBits_value)
	// (zero sized port) .bits(_ToBits_bits)
);
ToBits_T_type_int_FROM_0_TO_1 ToBits_2(
	.clk(clk)
	// (zero sized port) .value(_ToBits_2_value)
	// (zero sized port) .bits(_ToBits_2_bits)
);
ToBits_T_type_bool ToBits_3(
	.clk(clk),
	.value(_ToBits_3_value),
	.bits(_ToBits_3_bits)
);
ToBits_T_type_bool ToBits_4(
	.clk(clk),
	.value(_ToBits_4_value),
	.bits(_ToBits_4_bits)
);
ToBits_T_type_bool_0 ToBits_5(
	.clk(clk)
	// (zero sized port) .value(_ToBits_5_value)
	// (zero sized port) .bits(_ToBits_5_bits)
);
FromBits_T_type_int_FROM_0_TO_1 FromBits(
	.clk(clk)
	// (zero sized port) .bits(_FromBits_bits)
	// (zero sized port) .value(_FromBits_value)
);
FromBits_T_type_int_FROM_0_TO_1 FromBits_2(
	.clk(clk)
	// (zero sized port) .bits(_FromBits_2_bits)
	// (zero sized port) .value(_FromBits_2_value)
);
FromBits_T_type_bool FromBits_3(
	.clk(clk),
	.bits(_FromBits_3_bits),
	.value(_FromBits_3_value)
);
FromBits_T_type_bool FromBits_4(
	.clk(clk),
	.bits(_FromBits_4_bits),
	.value(_FromBits_4_value)
);
FromBits_T_type_bool_0 FromBits_5(
	.clk(clk)
	// (zero sized port) .bits(_FromBits_5_bits)
	// (zero sized port) .value(_FromBits_5_value)
);
always_comb begin // combinatorial packed_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	packed_o = 2'bxx;
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
packed_o[_v0] = _ToBits_3_bits[_v0];
end
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
packed_o[1 + _v0] = _ToBits_4_bits[_v0];
end
end
always_comb begin // combinatorial _ToBits_3_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_3_value = 1'bx;
	_ToBits_3_value = v3_i;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ToBits_3_value = _ToBits_3_value;
end
always_comb begin // combinatorial _ToBits_4_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_4_value = 1'bx;
	_ToBits_4_value = v4_i;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_ToBits_4_value = _ToBits_4_value;
end
always_comb begin // combinatorial v3_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v3_o = 1'bx;
	v3_o = _FromBits_3_value;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	v3_o = v3_o;
end
always_comb begin // combinatorial v4_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v4_o = 1'bx;
	v4_o = _FromBits_4_value;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	v4_o = v4_o;
end
always_comb begin // combinatorial _FromBits_3_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_3_bits = 1'bx;
	_FromBits_3_bits = _8;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_FromBits_3_bits = _FromBits_3_bits;
end
always_comb begin // combinatorial _FromBits_4_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_4_bits = 1'bx;
	_FromBits_4_bits = _9;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	_FromBits_4_bits = _FromBits_4_bits;
end
endmodule // Tuple5 #(T1: type int #(FROM: 0, TO: 1), T2: type int #(FROM: 0, TO: 1), T3: type bool #(), T4: type bool #(), T5: type bool #()[0])

// FromBits #(T: type bool #()[0])
module FromBits_T_type_bool_0(
	/* clock */ input clk
	// (zero sized) input bits
	// (zero sized) output value
);

// PATCH XRT 2.16 over-zealous empty module DRC
initial begin end
endmodule // FromBits #(T: type bool #()[0])

// FromBits #(T: type bool #())
module FromBits_T_type_bool(
	/* clock */ input clk,
	input wire[0:0] bits,
	output /*mux_wire*/ logic value
);

assign value = bits;
endmodule // FromBits #(T: type bool #())

// FromBits #(T: type int #(FROM: 0, TO: 1))
module FromBits_T_type_int_FROM_0_TO_1(
	/* clock */ input clk
	// (zero sized) input bits
	// (zero sized) output value
);

// PATCH XRT 2.16 over-zealous empty module DRC
initial begin end
endmodule // FromBits #(T: type int #(FROM: 0, TO: 1))

// ToBits #(T: type bool #()[0])
module ToBits_T_type_bool_0(
	/* clock */ input clk
	// (zero sized) input value
	// (zero sized) output bits
);

// PATCH XRT 2.16 over-zealous empty module DRC
initial begin end
endmodule // ToBits #(T: type bool #()[0])

// ToBits #(T: type bool #())
module ToBits_T_type_bool(
	/* clock */ input clk,
	input wire value,
	output /*mux_wire*/ logic[0:0] bits
);

assign bits = value;
endmodule // ToBits #(T: type bool #())

// ToBits #(T: type int #(FROM: 0, TO: 1))
module ToBits_T_type_int_FROM_0_TO_1(
	/* clock */ input clk
	// (zero sized) input value
	// (zero sized) output bits
);

// PATCH XRT 2.16 over-zealous empty module DRC
initial begin end
endmodule // ToBits #(T: type int #(FROM: 0, TO: 1))

// BitwiseIntSplit #(TO: 256, LOWER_BITS: 0)
module BitwiseIntSplit_TO_256_LOWER_BITS_0(
	/* clock */ input clk,
	input wire[7:0] v,
	output /*mux_wire*/ logic[7:0] upper
	// (zero sized) output lower
);

genvar _g0;
/*mux_wire*/ logic[7:0] v_bits;
/*mux_wire*/ logic[7:0] _UIntToBits_value;
wire[7:0] _UIntToBits_bits;
// (zero sized) _2
// (zero sized) _BitsToUInt_bits
// (zero sized) _BitsToUInt_value
wire[7:0] _3;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _3[_g0] = v_bits[_g0];
end
endgenerate
/*mux_wire*/ logic[7:0] _FromBits_bits;
wire[7:0] _FromBits_value;
UIntToBits_NUM_BITS_8 UIntToBits(
	.clk(clk),
	.value(_UIntToBits_value),
	.bits(_UIntToBits_bits)
);
BitsToUInt_NUM_BITS_0 BitsToUInt(
	.clk(clk)
	// (zero sized port) .bits(_BitsToUInt_bits)
	// (zero sized port) .value(_BitsToUInt_value)
);
FromBits_T_type_int_FROM_0_TO_256 FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
always_comb begin // combinatorial upper
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	upper = 8'dx;
	upper = _FromBits_value;
end
always_comb begin // combinatorial v_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v_bits = 8'bxxxxxxxx;
	v_bits = _UIntToBits_bits;
end
always_comb begin // combinatorial _UIntToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_UIntToBits_value = 8'dx;
	_UIntToBits_value = v;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 8'bxxxxxxxx;
	_FromBits_bits = _3;
end
endmodule // BitwiseIntSplit #(TO: 256, LOWER_BITS: 0)

// FromBits #(T: type int #(FROM: 0, TO: 256))
module FromBits_T_type_int_FROM_0_TO_256(
	/* clock */ input clk,
	input wire[7:0] bits,
	output /*mux_wire*/ logic[7:0] value
);

assign value = bits;
endmodule // FromBits #(T: type int #(FROM: 0, TO: 256))

// BitsToUInt #(NUM_BITS: 0)
module BitsToUInt_NUM_BITS_0(
	/* clock */ input clk
	// (zero sized) input bits
	// (zero sized) output value
);

// PATCH XRT 2.16 over-zealous empty module DRC
initial begin end
endmodule // BitsToUInt #(NUM_BITS: 0)

// UIntToBits #(NUM_BITS: 8)
module UIntToBits_NUM_BITS_8(
	/* clock */ input clk,
	input wire[7:0] value,
	output /*mux_wire*/ logic[7:0] bits
);

	assign bits = value;
endmodule // UIntToBits #(NUM_BITS: 8)

// BitwiseIntSplit #(TO: 4611686018427387904, LOWER_BITS: 8)
module BitwiseIntSplit_TO_4611686018427387904_LOWER_BITS_8(
	/* clock */ input clk,
	input wire[61:0] v,
	output /*mux_wire*/ logic[53:0] upper,
	output /*mux_wire*/ logic[7:0] lower
);

genvar _g0;
/*mux_wire*/ logic[61:0] v_bits;
/*mux_wire*/ logic[61:0] _UIntToBits_value;
wire[61:0] _UIntToBits_bits;
wire[7:0] _2;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _2[_g0] = v_bits[_g0];
end
endgenerate
/*mux_wire*/ logic[7:0] _BitsToUInt_bits;
wire[7:0] _BitsToUInt_value;
wire[53:0] _3;
generate
for(_g0 = 0; _g0 < 54; _g0 = _g0 + 1) begin
assign _3[_g0] = v_bits[8 + _g0];
end
endgenerate
/*mux_wire*/ logic[53:0] _FromBits_bits;
wire[53:0] _FromBits_value;
UIntToBits_NUM_BITS_62 UIntToBits(
	.clk(clk),
	.value(_UIntToBits_value),
	.bits(_UIntToBits_bits)
);
BitsToUInt_NUM_BITS_8 BitsToUInt(
	.clk(clk),
	.bits(_BitsToUInt_bits),
	.value(_BitsToUInt_value)
);
FromBits_T_type_int_FROM_0_TO_18014398509481984 FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
always_comb begin // combinatorial upper
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	upper = 54'dx;
	upper = _FromBits_value;
end
always_comb begin // combinatorial lower
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	lower = 8'dx;
	lower = _BitsToUInt_value;
end
always_comb begin // combinatorial v_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v_bits = 62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	v_bits = _UIntToBits_bits;
end
always_comb begin // combinatorial _UIntToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_UIntToBits_value = 62'dx;
	_UIntToBits_value = v;
end
always_comb begin // combinatorial _BitsToUInt_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_BitsToUInt_bits = 8'bxxxxxxxx;
	_BitsToUInt_bits = _2;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 54'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_FromBits_bits = _3;
end
endmodule // BitwiseIntSplit #(TO: 4611686018427387904, LOWER_BITS: 8)

// FromBits #(T: type int #(FROM: 0, TO: 18014398509481984))
module FromBits_T_type_int_FROM_0_TO_18014398509481984(
	/* clock */ input clk,
	input wire[53:0] bits,
	output /*mux_wire*/ logic[53:0] value
);

assign value = bits;
endmodule // FromBits #(T: type int #(FROM: 0, TO: 18014398509481984))

// BitsToUInt #(NUM_BITS: 8)
module BitsToUInt_NUM_BITS_8(
	/* clock */ input clk,
	input wire[7:0] bits,
	output /*mux_wire*/ logic[7:0] value
);

	assign value = bits;
endmodule // BitsToUInt #(NUM_BITS: 8)

// UIntToBits #(NUM_BITS: 62)
module UIntToBits_NUM_BITS_62(
	/* clock */ input clk,
	input wire[61:0] value,
	output /*mux_wire*/ logic[61:0] bits
);

	assign bits = value;
endmodule // UIntToBits #(NUM_BITS: 62)

// Tuple2 #(T1: type int #(FROM: 0, TO: 4611686018427387904), T2: type int #(FROM: 0, TO: 4294967296))
module Tuple2_T1_type_int_FROM_0_TO_4611686018427387904_T2_type_int_FROM_0_TO_4294967296(
	/* clock */ input clk,
	input wire[61:0] v1_i,
	input wire[31:0] v2_i,
	output /*mux_wire*/ logic[93:0] packed_o,
	input wire[93:0] packed_i,
	output /*mux_wire*/ logic[61:0] v1_o,
	output /*mux_wire*/ logic[31:0] v2_o
);

genvar _g0;
/*mux_wire*/ logic[61:0] _ToBits_value;
wire[61:0] _ToBits_bits;
/*mux_wire*/ logic[31:0] _ToBits_2_value;
wire[31:0] _ToBits_2_bits;
wire[61:0] _3;
generate
for(_g0 = 0; _g0 < 62; _g0 = _g0 + 1) begin
assign _3[_g0] = packed_i[_g0];
end
endgenerate
/*mux_wire*/ logic[61:0] _FromBits_bits;
wire[61:0] _FromBits_value;
wire[31:0] _4;
generate
for(_g0 = 0; _g0 < 32; _g0 = _g0 + 1) begin
assign _4[_g0] = packed_i[62 + _g0];
end
endgenerate
/*mux_wire*/ logic[31:0] _FromBits_2_bits;
wire[31:0] _FromBits_2_value;
ToBits_T_type_int_FROM_0_TO_4611686018427387904 ToBits(
	.clk(clk),
	.value(_ToBits_value),
	.bits(_ToBits_bits)
);
ToBits_T_type_int_FROM_0_TO_4294967296 ToBits_2(
	.clk(clk),
	.value(_ToBits_2_value),
	.bits(_ToBits_2_bits)
);
FromBits_T_type_int_FROM_0_TO_4611686018427387904 FromBits(
	.clk(clk),
	.bits(_FromBits_bits),
	.value(_FromBits_value)
);
FromBits_T_type_int_FROM_0_TO_4294967296 FromBits_2(
	.clk(clk),
	.bits(_FromBits_2_bits),
	.value(_FromBits_2_value)
);
always_comb begin // combinatorial packed_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	packed_o = 94'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	for(int _v0 = 0; _v0 < 62; _v0 = _v0 + 1) begin
packed_o[_v0] = _ToBits_bits[_v0];
end
	for(int _v0 = 0; _v0 < 32; _v0 = _v0 + 1) begin
packed_o[62 + _v0] = _ToBits_2_bits[_v0];
end
end
always_comb begin // combinatorial _ToBits_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_value = 62'dx;
	_ToBits_value = v1_i;
end
always_comb begin // combinatorial _ToBits_2_value
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ToBits_2_value = 32'dx;
	_ToBits_2_value = v2_i;
end
always_comb begin // combinatorial v1_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v1_o = 62'dx;
	v1_o = _FromBits_value;
end
always_comb begin // combinatorial v2_o
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v2_o = 32'dx;
	v2_o = _FromBits_2_value;
end
always_comb begin // combinatorial _FromBits_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_bits = 62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_FromBits_bits = _3;
end
always_comb begin // combinatorial _FromBits_2_bits
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_FromBits_2_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_FromBits_2_bits = _4;
end
endmodule // Tuple2 #(T1: type int #(FROM: 0, TO: 4611686018427387904), T2: type int #(FROM: 0, TO: 4294967296))

// FromBits #(T: type int #(FROM: 0, TO: 4294967296))
module FromBits_T_type_int_FROM_0_TO_4294967296(
	/* clock */ input clk,
	input wire[31:0] bits,
	output /*mux_wire*/ logic[31:0] value
);

assign value = bits;
endmodule // FromBits #(T: type int #(FROM: 0, TO: 4294967296))

// FromBits #(T: type int #(FROM: 0, TO: 4611686018427387904))
module FromBits_T_type_int_FROM_0_TO_4611686018427387904(
	/* clock */ input clk,
	input wire[61:0] bits,
	output /*mux_wire*/ logic[61:0] value
);

assign value = bits;
endmodule // FromBits #(T: type int #(FROM: 0, TO: 4611686018427387904))

// ToBits #(T: type int #(FROM: 0, TO: 4294967296))
module ToBits_T_type_int_FROM_0_TO_4294967296(
	/* clock */ input clk,
	input wire[31:0] value,
	output /*mux_wire*/ logic[31:0] bits
);

assign bits = value;
endmodule // ToBits #(T: type int #(FROM: 0, TO: 4294967296))

// ToBits #(T: type int #(FROM: 0, TO: 4611686018427387904))
module ToBits_T_type_int_FROM_0_TO_4611686018427387904(
	/* clock */ input clk,
	input wire[61:0] value,
	output /*mux_wire*/ logic[61:0] bits
);

assign bits = value;
endmodule // ToBits #(T: type int #(FROM: 0, TO: 4611686018427387904))

// SlowStablePipelineCustom #(T: type bool #()[94], PIPELINE_DEPTH: 1)
module SlowStablePipelineCustom_T_type_bool_94_PIPELINE_DEPTH_1(
	/* clock */ input clk,
	input wire input_changed,
	output /*mux_wire*/ logic pipeline_stable,
	input wire[93:0] pipeline_in,
	output /*mux_wire*/ logic[93:0] pipeline_out,
	input wire rst
);

/*state*/ logic[0:0] cooldown;
localparam[0:0] RepeatGen = 1'b0;
wire _1 = cooldown[0];
/*mux_wire*/ logic[93:0] _LatencyOffset_din;
wire[93:0] _LatencyOffset_dout;
localparam[0:0] RepeatGen_2 = 1'b0;
LatencyOffset_T_type_bool_94_OFFSET_N1 LatencyOffset(
	.clk(clk),
	.din(_LatencyOffset_din),
	.dout(_LatencyOffset_dout)
);
always_ff @(posedge clk) begin // state cooldown
	if(input_changed) cooldown <= RepeatGen;
	if(!input_changed) cooldown[0] <= 1'b1;
	if(rst) cooldown <= RepeatGen_2;
end
always_comb begin // combinatorial pipeline_stable
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pipeline_stable = 1'bx;
	pipeline_stable = _1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	pipeline_stable = pipeline_stable;
end
always_comb begin // combinatorial pipeline_out
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pipeline_out = 94'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	pipeline_out = _LatencyOffset_dout;
end
always_comb begin // combinatorial _LatencyOffset_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_din = 94'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_LatencyOffset_din = pipeline_in;
end
endmodule // SlowStablePipelineCustom #(T: type bool #()[94], PIPELINE_DEPTH: 1)

// LatencyOffset #(T: type bool #()[94], OFFSET: -1)
module LatencyOffset_T_type_bool_94_OFFSET_N1(
	/* clock */ input clk,
	input wire[93:0] din,
	output /*mux_wire*/ logic[93:0] dout
);

	assign dout = din;
endmodule // LatencyOffset #(T: type bool #()[94], OFFSET: -1)

// xrt_ctrl_slave #(NUM_INPUT_REGS: 45, NUM_OUTPUT_REGS: 0, ADDR_WIDTH: 12, AXI_WIDTH: 32)
module xrt_ctrl_slave_NUM_INPUT_REGS_45_NUM_OUTPUT_REGS_0_ADDR_WIDTH_12_AXI_WIDTH_32(
	/* clock */ input clk,
	input wire[11:0] awaddr,
	input wire awvalid,
	output /*mux_wire*/ logic awready,
	input wire[31:0] wdata,
	input wire[3:0] wstrb,
	input wire wvalid,
	output /*mux_wire*/ logic wready,
	output /*mux_wire*/ logic[1:0] bresp,
	output /*mux_wire*/ logic bvalid,
	input wire bready,
	input wire[11:0] araddr,
	input wire arvalid,
	output /*mux_wire*/ logic arready,
	output /*mux_wire*/ logic[31:0] rdata,
	output /*mux_wire*/ logic[1:0] rresp,
	output /*mux_wire*/ logic rvalid,
	input wire rready,
	output /*state*/ logic[31:0] input_regs[0:44],
	output /*mux_wire*/ logic start,
	input wire finish,
	// (zero sized) input output_regs
	input wire rst
);

genvar _g0;
/*mux_wire*/ logic do_reset;
// (zero sized) stored_output_regs
/*state*/ logic reg_ctrl_ap_idle;
/*state*/ logic reg_ctrl_ap_done;
/*mux_wire*/ logic reg_ctrl_ap_ready;
/*state*/ logic reg_ctrl_ap_start;
/*state*/ logic[9:0] stored_addr;
/*state*/ logic stored_addr_valid;
/*state*/ logic[1:0] last_bresp;
/*state*/ logic last_werr_valid;
wire _4;
assign _4 = ~stored_addr_valid;
wire _6;
assign _6 = ~do_reset;
wire _7;
assign _7 = _4 & _6;
wire _10;
assign _10 = ~last_werr_valid;
wire _11;
assign _11 = stored_addr_valid & _10;
wire _16;
assign _16 = awready & awvalid;
wire[9:0] _18;
assign _18 = awaddr[11:2]; // == div 4
wire _21;
assign _21 = wready & wvalid;
localparam[1:0] RESP_SLVERR = 2'b10;
wire _23;
assign _23 = stored_addr == 1'd0;
wire _24 = wstrb[0];
wire _25 = wdata[0];
wire _26;
assign _26 = _24 & _25;
localparam[1:0] RESP_OKAY = 2'b00;
wire _29;
assign _29 = stored_addr >= 3'd4;
wire _32;
assign _32 = stored_addr < 6'd49;
wire _33;
assign _33 = _29 & _32;
/*mux_wire*/ logic[5:0] write_idx;
/*mux_wire*/ logic[9:0] _IntNarrow_din;
wire[5:0] _IntNarrow_dout;
wire[5:0] _35;
assign _35 = _IntNarrow_dout - 3'd4;
wire _36 = wstrb[0];
wire[7:0] _38;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _38[_g0] = wdata[_g0];
end
endgenerate
wire _39 = wstrb[1];
wire[7:0] _41;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _41[_g0] = wdata[8 + _g0];
end
endgenerate
wire _42 = wstrb[2];
wire[7:0] _44;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _44[_g0] = wdata[16 + _g0];
end
endgenerate
wire _45 = wstrb[3];
wire[7:0] _47;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _47[_g0] = wdata[24 + _g0];
end
endgenerate
localparam[1:0] RESP_OKAY_2 = 2'b00;
wire _50;
assign _50 = bready & bvalid;
/*state*/ logic last_rdata_valid;
/*state*/ logic[31:0] last_rdata;
/*state*/ logic[1:0] last_rresp;
/*mux_wire*/ logic[31:0] regs_read_multiplexer[0:44];
wire _56;
assign _56 = ~last_rdata_valid;
wire _58;
assign _58 = ~do_reset;
wire _59;
assign _59 = _56 & _58;
wire _63;
assign _63 = arready & arvalid;
localparam[1:0] RESP_SLVERR_2 = 2'b10;
/*mux_wire*/ logic[9:0] read_addr;
wire[9:0] _65;
assign _65 = araddr[11:2]; // == div 4
wire _67;
assign _67 = read_addr == 1'd0;
localparam[27:0] _72 = 28'b0000000000000000000000000000;
localparam[1:0] RESP_OKAY_3 = 2'b00;
wire _75;
assign _75 = read_addr >= 3'd4;
wire _78;
assign _78 = read_addr < 6'd49;
wire _79;
assign _79 = _75 & _78;
/*mux_wire*/ logic[5:0] read_idx;
/*mux_wire*/ logic[9:0] _IntNarrow_2_din;
wire[5:0] _IntNarrow_2_dout;
wire[5:0] _81;
assign _81 = _IntNarrow_2_dout - 3'd4;
wire[31:0] _83 = regs_read_multiplexer[read_idx];
localparam[1:0] RESP_OKAY_4 = 2'b00;
wire _86;
assign _86 = rready & rvalid;
localparam[31:0] RepeatGen[0:44] = '{32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000};
// (zero sized) RepeatGen_2
IntNarrow_FROM_I_0_TO_I_1024_FROM_4_TO_49 IntNarrow(
	.clk(clk),
	.din(_IntNarrow_din),
	.dout(_IntNarrow_dout)
);
IntNarrow_FROM_I_0_TO_I_1024_FROM_4_TO_49 IntNarrow_2(
	.clk(clk),
	.din(_IntNarrow_2_din),
	.dout(_IntNarrow_2_dout)
);
always_comb begin // combinatorial do_reset
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	do_reset = 1'bx;
	do_reset = 1'b0;
	if(rst) do_reset = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	do_reset = do_reset;
end
always_comb begin // combinatorial awready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awready = 1'bx;
	awready = 1'b0;
	awready = _7;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	awready = awready;
end
always_comb begin // combinatorial wready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wready = 1'bx;
	wready = 1'b0;
	wready = _11;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	wready = wready;
end
always_comb begin // combinatorial bresp
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	bresp = 2'bxx;
	bresp = last_bresp;
end
always_comb begin // combinatorial bvalid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	bvalid = 1'bx;
	bvalid = 1'b0;
	bvalid = last_werr_valid;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	bvalid = bvalid;
end
always_comb begin // combinatorial arready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	arready = 1'bx;
	arready = 1'b0;
	arready = _59;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	arready = arready;
end
always_comb begin // combinatorial rdata
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	rdata = last_rdata;
end
always_comb begin // combinatorial rresp
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rresp = 2'bxx;
	rresp = last_rresp;
end
always_comb begin // combinatorial rvalid
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rvalid = 1'bx;
	rvalid = 1'b0;
	rvalid = last_rdata_valid;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	rvalid = rvalid;
end
always_ff @(posedge clk) begin // state input_regs
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
if(_21) if(_33) if(_36) input_regs[write_idx][_v0] <= _38[_v0];
end
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
if(_21) if(_33) if(_39) input_regs[write_idx][8 + _v0] <= _41[_v0];
end
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
if(_21) if(_33) if(_42) input_regs[write_idx][16 + _v0] <= _44[_v0];
end
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
if(_21) if(_33) if(_45) input_regs[write_idx][24 + _v0] <= _47[_v0];
end
	for(int _v0 = 0; _v0 < 45; _v0 = _v0 + 1) begin
if(rst) input_regs[_v0] <= RepeatGen[_v0];
end
end
always_comb begin // combinatorial start
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	start = 1'bx;
	start = 1'b0;
	if(_21) if(_23) if(_26) start = 1'b1;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	start = start;
end
always_ff @(posedge clk) begin // state reg_ctrl_ap_idle
	if(_21) if(_23) if(_26) reg_ctrl_ap_idle <= 1'b0;
	if(_63) if(_67) if(reg_ctrl_ap_done) reg_ctrl_ap_idle <= 1'b1;
	if(finish) reg_ctrl_ap_idle <= 1'b0;
	if(rst) reg_ctrl_ap_idle <= 1'b1;
end
always_ff @(posedge clk) begin // state reg_ctrl_ap_done
	if(_63) if(_67) reg_ctrl_ap_done <= 1'b0;
	if(finish) reg_ctrl_ap_done <= 1'b1;
	if(rst) reg_ctrl_ap_done <= 1'b0;
end
always_comb begin // combinatorial reg_ctrl_ap_ready
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	reg_ctrl_ap_ready = 1'bx;
	reg_ctrl_ap_ready = reg_ctrl_ap_done;
	// PATCH Vivado 23.1 Simulator Bug: 1-bit Conditional Assigns become don't care
	reg_ctrl_ap_ready = reg_ctrl_ap_ready;
end
always_ff @(posedge clk) begin // state reg_ctrl_ap_start
	if(_21) if(_23) if(_26) reg_ctrl_ap_start <= 1'b1;
	if(finish) reg_ctrl_ap_start <= 1'b0;
	if(rst) reg_ctrl_ap_start <= 1'b0;
end
always_ff @(posedge clk) begin // state stored_addr
	if(_16) stored_addr <= _18;
end
always_ff @(posedge clk) begin // state stored_addr_valid
	if(_16) stored_addr_valid <= 1'b1;
	if(_21) stored_addr_valid <= 1'b0;
	if(rst) stored_addr_valid <= 1'b0;
end
always_ff @(posedge clk) begin // state last_bresp
	if(_21) last_bresp <= RESP_SLVERR;
	if(_21) if(_23) last_bresp <= RESP_OKAY;
	if(_21) if(_33) last_bresp <= RESP_OKAY_2;
end
always_ff @(posedge clk) begin // state last_werr_valid
	if(_21) last_werr_valid <= 1'b1;
	if(_50) last_werr_valid <= 1'b0;
	if(rst) last_werr_valid <= 1'b0;
end
always_comb begin // combinatorial write_idx
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	write_idx = 6'dx;
	if(_21) if(_33) write_idx = _35;
end
always_comb begin // combinatorial _IntNarrow_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_din = 10'dx;
	if(_21) if(_33) _IntNarrow_din = stored_addr;
end
always_ff @(posedge clk) begin // state last_rdata_valid
	if(_63) last_rdata_valid <= 1'b1;
	if(_86) last_rdata_valid <= 1'b0;
	if(rst) last_rdata_valid <= 1'b0;
end
always_ff @(posedge clk) begin // state last_rdata
	if(_63) if(_67) last_rdata[0] <= reg_ctrl_ap_start;
	if(_63) if(_67) last_rdata[1] <= reg_ctrl_ap_done;
	if(_63) if(_67) last_rdata[2] <= reg_ctrl_ap_idle;
	if(_63) if(_67) last_rdata[3] <= reg_ctrl_ap_ready;
	for(int _v0 = 0; _v0 < 28; _v0 = _v0 + 1) begin
if(_63) if(_67) last_rdata[4 + _v0] <= _72[_v0];
end
	if(_63) if(_79) last_rdata <= _83;
end
always_ff @(posedge clk) begin // state last_rresp
	if(_63) last_rresp <= RESP_SLVERR_2;
	if(_63) if(_67) last_rresp <= RESP_OKAY_3;
	if(_63) if(_79) last_rresp <= RESP_OKAY_4;
end
always_comb begin // combinatorial regs_read_multiplexer
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	regs_read_multiplexer = '{32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	for(int _v0 = 0; _v0 < 45; _v0 = _v0 + 1) begin
regs_read_multiplexer[_v0] = input_regs[_v0];
end
end
always_comb begin // combinatorial read_addr
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	read_addr = 10'dx;
	if(_63) read_addr = _65;
end
always_comb begin // combinatorial read_idx
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	read_idx = 6'dx;
	if(_63) if(_79) read_idx = _81;
end
always_comb begin // combinatorial _IntNarrow_2_din
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_IntNarrow_2_din = 10'dx;
	if(_63) if(_79) _IntNarrow_2_din = read_addr;
end
endmodule // xrt_ctrl_slave #(NUM_INPUT_REGS: 45, NUM_OUTPUT_REGS: 0, ADDR_WIDTH: 12, AXI_WIDTH: 32)

// IntNarrow #(FROM_I: 0, TO_I: 1024, FROM: 4, TO: 49)
module IntNarrow_FROM_I_0_TO_I_1024_FROM_4_TO_49(
	/* clock */ input clk,
	input wire[9:0] din,
	output /*mux_wire*/ logic[5:0] dout
);

	assign dout = din;
endmodule // IntNarrow #(FROM_I: 0, TO_I: 1024, FROM: 4, TO: 49)

