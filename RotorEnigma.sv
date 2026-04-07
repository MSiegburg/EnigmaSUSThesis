`timescale 1ns / 1ps


module rotor_position_reg(
    input logic advance,
    input logic clk,
    input logic rst,
    input logic write_rotor,
    input logic[4:0] set_rotor,
    output logic[4:0] cur_rotor_position
    
    );

logic[4:0] rotor_position;
always_ff @(posedge clk) begin                  //check for changes to register on clk
    if (rst) begin                              //check for reset signal
        rotor_position <= 0;
    end
    else if(write_rotor) begin
        rotor_position <= set_rotor;
    end
    else if (advance) begin
        rotor_position <= (rotor_position+1) %26; //assign rotor position 0 if it would increment to 26
    end
    cur_rotor_position <= rotor_position;
end

endmodule


module shift_adder(
    input logic[4:0] letter_index,
    input logic[4:0] rotor_position,
    output logic[4:0] shift_amount_encode_out
);

always_comb begin
    shift_amount_encode_out=(letter_index+rotor_position)%26; //adding two 5 bit arrays and modchecking 
end

endmodule


module rotor_wire_encode(
    input logic[4:0] shift_amount_in,
    output logic[4:0] encode_letter
);
always_comb begin
    case (shift_amount_in)                   //case statement to assign Letters based on predetermined hard wiring
        5'b00000:encode_letter = 5'b00101;   //A=F
        5'b00001:encode_letter = 5'b10111;   //B=X
        5'b00010:encode_letter = 5'b00001;   //C=B
        5'b00011:encode_letter = 5'b00010;   //D=C
        5'b00100:encode_letter = 5'b00110;   //E=G
        5'b00101:encode_letter = 5'b01011;   //F=L
        5'b00110:encode_letter = 5'b01010;   //G=K
        5'b00111:encode_letter = 5'b01100;   //H=M
        5'b01000:encode_letter = 5'b11000;   //I=Y
        5'b01001:encode_letter = 5'b10011;   //J=T
        5'b01010:encode_letter = 5'b01101;   //K=N
        5'b01011:encode_letter = 5'b00000;   //L=A
        5'b01100:encode_letter = 5'b10001;   //M=R
        5'b01101:encode_letter = 5'b10000;   //N=Q
        5'b01110:encode_letter = 5'b11001;   //O=Z
        5'b01111:encode_letter = 5'b00011;   //P=D
        5'b10000:encode_letter = 5'b01111;   //Q=P
        5'b10001:encode_letter = 5'b10110;   //R=W
        5'b10010:encode_letter = 5'b10101;   //S=V
        5'b10011:encode_letter = 5'b00100;   //T=E
        5'b10100:encode_letter = 5'b01000;   //U=I
        5'b10101:encode_letter = 5'b01001;   //V=J
        5'b10110:encode_letter = 5'b00111;   //W=H
        5'b10111:encode_letter = 5'b01110;   //X=O
        5'b11000:encode_letter = 5'b10100;   //Y=U
        5'b11001:encode_letter = 5'b10010;   //Z=S
        
        default:encode_letter = 5'b11011; // sollte nicht vorkommen können
    endcase
end

endmodule


module shift_subtract(
    input logic[4:0] letter_index,
    input logic[4:0] rotor_position,
    output logic[4:0] shift_amount_decode_out
);

always_comb begin
    if(letter_index<rotor_position) begin
        shift_amount_decode_out=(letter_index+25)-rotor_position;
    end
    else begin
    shift_amount_decode_out=letter_index-rotor_position;
    end
end
endmodule


module rotor_wire_decode(
    input logic[4:0] shift_amount_in,
    output logic[4:0] decode_letter
);
always_comb begin
    case (shift_amount_in)                   //case statement to assign Letters based on predetermined hard wiring
        5'b00101:decode_letter = 5'b00000;   //F=A
        5'b10111:decode_letter = 5'b00001;   //X=B
        5'b00001:decode_letter = 5'b00010;   //B=C
        5'b00010:decode_letter = 5'b00011;   //C=D
        5'b00110:decode_letter = 5'b00100;   //G=E
        5'b01011:decode_letter = 5'b00101;   //L=F
        5'b01010:decode_letter = 5'b00110;   //K=G
        5'b01100:decode_letter = 5'b00111;   //M=H
        5'b11000:decode_letter = 5'b01000;   //Y=I
        5'b10011:decode_letter = 5'b01001;   //T=J
        5'b01101:decode_letter = 5'b01010;   //N=K
        5'b00000:decode_letter = 5'b01011;   //A=L
        5'b10001:decode_letter = 5'b01100;   //R=M
        5'b10000:decode_letter = 5'b01101;   //Q=N
        5'b11001:decode_letter = 5'b01110;   //Z=O
        5'b00011:decode_letter = 5'b01111;   //D=P
        5'b01111:decode_letter = 5'b10000;   //P=Q
        5'b10110:decode_letter = 5'b10001;   //W=R
        5'b10101:decode_letter = 5'b10010;   //V=S
        5'b00100:decode_letter = 5'b10011;   //E=T
        5'b01000:decode_letter = 5'b10100;   //I=U
        5'b01001:decode_letter = 5'b10101;   //J=V
        5'b00111:decode_letter = 5'b10110;   //H=W
        5'b01110:decode_letter = 5'b10111;   //O=X
        5'b10100:decode_letter = 5'b11000;   //U=Y
        5'b10010:decode_letter = 5'b11001;   //S=Z
        
        default:decode_letter = 5'b11011; // sollte nicht vorkommen können
    endcase
end

endmodule


module full_rotor_tb;
    // Signale
    logic advance;
    logic clk;
    logic rst;
    logic write_rotor;
    logic [4:0] cur_rotor_position;
    logic [4:0] input_char;
    logic [4:0] shift_amount_encode_out;
    logic [4:0] shift_amount_decode_out;
    logic [4:0] encoded_char;
    logic [4:0] decoded_char;
    logic [4:0] set_rotor;

    // Instanziierung der Module
    rotor_position_reg uut_rotor_pos (
        .advance(advance),
        .clk(clk),
        .rst(rst),
        .write_rotor(write_rotor),
        .set_rotor(set_rotor),
        .cur_rotor_position(cur_rotor_position)
    );
    shift_adder uut_adder (
        .letter_index(input_char),
        .rotor_position(cur_rotor_position),
        .shift_amount_encode_out(shift_amount_encode_out)
    );
    shift_subtract uut_subtract (
        .letter_index(decoded_char),
        .rotor_position(cur_rotor_position),
        .shift_amount_decode_out(shift_amount_decode_out)
    );
    rotor_wire_encode uut_wire_encode (
        .shift_amount_in(shift_amount_encode_out),
        .encode_letter(encoded_char)
    );
    rotor_wire_decode uut_wire_decode (
        .shift_amount_in(input_char),
        .decode_letter(decoded_char)
    );
    
    // Clock: 100 MHz (10ns Takt)
    always #5 clk = ~clk;
    
    // Testbench
    initial begin
        $display("Starting Enigma-Rotor Testbench...");

        // initializing
        clk = 0;
        advance = 0;
        rst = 1;
        input_char = 0; // A
        write_rotor=0;

        #20;
        rst = 0;
        $display("Reset deactivated, encoding steps are next");
    
        // Test 1: A (0) -> F (5)
        $display("\n--- Test 1: A (0) -> F (5) ---");
        input_char = 5'b00000;
        @(posedge clk);
        $display("Time %0t: input_char = A (0), rotor_pos = %d, shift = %d, encoded = %d (F)",
                 $time, cur_rotor_position, shift_amount_encode_out, encoded_char);
                 
       // Test 2: F (5) -> L (11)
        $display("\n--- Test 2: F (5) -> L (11) ---");
        input_char = 5'b00101;
        @(posedge clk);
        $display("Time %0t: input_char = F (5), rotor_pos = %d, shift = %d, encoded = %d (L)",
                 $time, cur_rotor_position, shift_amount_encode_out, encoded_char);
        // Test 3: L (11) -> A (0)
        $display("\n--- Test 3: L (11) -> A (0) ---");
        input_char = 5'b01011;
        @(posedge clk);
        $display("Time %0t: input_char = L (11), rotor_pos = %d, shift = %d, encoded = %d (A)",
                 $time, cur_rotor_position, shift_amount_encode_out, encoded_char);

        // Test 4: Z (25) -> S (18)
        $display("\n--- Test 4: Z (25) -> S (18) ---");
        input_char = 5'b11001;
        @(posedge clk);
        $display("Time %0t: input_char = Z (25), rotor_pos = %d, shift = %d, encoded = %d (S)",
                 $time, cur_rotor_position, shift_amount_encode_out, encoded_char);

        // Test 5: Inputs with advance rotor position incrementing
        $display("\n--- Test 5: Inputs with advance rotor position incrementing ---");
        input_char = 5'b00000;
        @(posedge clk);
        $display("Time %0t: input_char = A (0), rotor_pos = %d, shift = %d, encoded = %d (F)",
                 $time, cur_rotor_position, shift_amount_encode_out, encoded_char);
        advance = 1;
        @(posedge clk);
        input_char = 5'b00000;
        advance = 0;
        @(posedge clk);
        $display("Time %0t: input_char = A (0), rotor_pos = %d, shift = %d, encoded = %d (X)",
                 $time, cur_rotor_position, shift_amount_encode_out, encoded_char);
        advance = 1;
        @(posedge clk);
        input_char = 5'b00101;
        advance = 0;
        @(posedge clk);
        $display("Time %0t: input_char = F (5), rotor_pos = %d, shift = %d, encoded = %d (M)",
                 $time, cur_rotor_position, shift_amount_encode_out, encoded_char);

        // Test 6: Decoding previously encoded letter
        $display("\n--- Test 6: Decoding previously encoded letter ---");
        input_char = 5'b01100;
        @(posedge clk);
        $display("Time %0t: input_char = M(12), rotor_pos = %d, decode_before_shift = %d (H) decoded = %d (F)",
                 $time, cur_rotor_position, decoded_char, shift_amount_decode_out);


        //Test 7: Set Rotor to Position 5
        $display("\n--- Test 7: Setting Rotor Position to 5 ---");
        @(posedge clk);
        set_rotor=5'b00101;
        write_rotor=1;
        
        @(posedge clk);
        write_rotor=0;
        @(posedge clk);
        $display("Time %0t: after set_rotor: rotor_position = %d", $time, cur_rotor_position);

        // Test 8: Reset -> Position = 0
        @(posedge clk);
        $display("\n--- Test 8: Reset -> Position = 0 ---");
        rst = 1;
        #10
        @(posedge clk);
        #5
        $display("Time %0t: after Reset: rotor_position = %d", $time, cur_rotor_position);
        assert (cur_rotor_position == 0) else $error("Fehler: Reset hat nicht funktioniert!");

        $finish;
    end
endmodule