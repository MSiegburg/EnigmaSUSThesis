`timescale 1ns / 1ps


module rotor_position_reg(
    //input logic[4:0] set_rotor,
    input logic advance,
    input logic clk,
    input logic rst,
    output logic[4:0] cur_rotor_position
    );

logic[4:0] rotor_position;
always_ff @(posedge clk) begin                  //check for changes to register on clk
    if (rst) begin                              //check for reset signal
        rotor_position <= 0;
    end else if (advance) begin
        rotor_position <= (rotor_position+1) %26; //assign rotor position 0 if it would increment to 26
        
    end
    cur_rotor_position <= rotor_position;
end

endmodule



module shift_adder(
    input logic[4:0] letter_index,
    input logic[4:0] rotor_position,
    output logic[4:0] shift_amount_out
);

always_comb begin
    shift_amount_out=(letter_index+rotor_position)%26; //adding two 5 bit arrays and modchecking 
end

endmodule

module rotor_wire_assign(
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
        
        default:encode_letter = 5'b10011; // sollte nicht vorkommen können
    endcase
end

endmodule

/*module shift_adder_tb;                    early attempts at testbenching 

    logic[4:0] letter_index;
    logic[4:0] rotor_position;
    logic[4:0] shift_amout;

    shift_adder dut(
        .letter_index(letter_index),
        .rotor_position(rotor_position),
        .shift_amout(shift_amout)
    );

    initial begin
        letter_index = 5'b00000;
        rotor_position = 5'b01010;
        #5
        $display("shift amount for lookup= %0d", shift_amout);
        
        letter_index = 5'b00101;
        rotor_position = 5'b01010;
        #5
        $display("shift amount for lookup= %0d", shift_amout);
        
        letter_index = 5'b01111;
        rotor_position = 5'b01010;
        #5
        $display("shift amount for lookup= %0d", shift_amout);
        $finish;

    end


endmodule


module rotor_wire_assign_tb;                early attempts at testbenching 

    logic[4:0] shift_amout;
    logic[4:0] encode_letter;

    rotor_wire_assign dut(
        .shift_amout(shift_amout),
        .encode_letter(encode_letter)
    );

    initial begin
        shift_amout = 5'b00000;
        #5
        $display("Encoded letter is %0d", encode_letter);
        
        shift_amout = 5'b01100;
        #5
        $display("Encoded letter is %0d", encode_letter);
        
        shift_amout = 5'b01001;
        #5
        $display("Encoded letter is %0d", encode_letter);
        $finish;
    end


endmodule*/




module full_rotor_tb;
    // Signale
    logic advance;
    logic clk;
    logic rst;
    logic [4:0] cur_rotor_position;
    logic [4:0] input_char;
    logic [4:0] shift_amount_out;
    logic [4:0] encoded_char;

    // Instanziierung der Module
    rotor_position_reg uut_rotor_pos (
        .advance(advance),
        .clk(clk),
        .rst(rst),
        .cur_rotor_position(cur_rotor_position)
    );
    shift_adder uut_adder (
        .letter_index(input_char),
        .rotor_position(cur_rotor_position),
        .shift_amount_out(shift_amount_out)
    );
    rotor_wire_assign uut_wire_assign (
        .shift_amount_in(shift_amount_out),
        .encode_letter(encoded_char)
    );
    
    // Clock: 100 MHz (10ns Takt)
    always #5 clk = ~clk;
    
    // Testbench
    initial begin
        $display("Starting Enigma-Rotor Testbench...");
        $dumpfile("enigma_test.vcd");
        $dumpvars(0, tb_enigma_rotor);

        // Initialisierung
        clk = 0;
        advance = 0;
        rst = 1;
        input_char = 0; // A

        #20;
        rst = 0;
        $display("reset deactivated, encoding steps are next");
    
        // Test 1: A (0) -> F (5)
        $display("\n--- Test 1: A (0) -> F (5) ---");
        input_char = 5'b00000;
        @(posedge clk);
        $display("Time %0t: input_char = A (0), rotor_pos = %d, shift = %d, encoded = %d (F)",
                 $time, cur_rotor_position, shift_amount_out, encoded_char);
                 
       // Test 2: F (5) -> L (11)
        $display("\n--- Test 2: F (5) -> L (11) ---");
        input_char = 5'b00101;
        @(posedge clk);
        $display("Time %0t: input_char = F (5), rotor_pos = %d, shift = %d, encoded = %d (L)",
                 $time, cur_rotor_position, shift_amount_out, encoded_char);
        // Test 3: L (11) -> A (0)
        $display("\n--- Test 3: L (11) -> A (0) ---");
        input_char = 5'b01011;
        @(posedge clk);
        $display("Time %0t: input_char = L (11), rotor_pos = %d, shift = %d, encoded = %d (A)",
                 $time, cur_rotor_position, shift_amount_out, encoded_char);

        // Test 4: Z (25) -> S (18)
        $display("\n--- Test 4: Z (25) -> S (18) ---");
        input_char = 5'b11001;
        @(posedge clk);
        $display("Time %0t: input_char = Z (25), rotor_pos = %d, shift = %d, encoded = %d (S)",
                 $time, cur_rotor_position, shift_amount_out, encoded_char);

        // Test 5: Nach 26 Schritten - Rotorposition = 0
        $display("\n--- Test 5: 26 Mal advance -> Position = 0 ---");
        for (int i = 0; i < 26; i++) begin
            @(posedge clk);
            advance = 1;
            #1;
            advance = 0;
        end
        @(posedge clk);
        $display("Time %0t: Nach 26 Schritten: rotor_position = %d", $time, cur_rotor_position);
        assert (cur_rotor_position == 0) else $error("Fehler: Rotorposition sollte 0 sein!");

        // Test 6: Reset -> Position = 0
        $display("\n--- Test 6: Reset -> Position = 0 ---");
        rst = 1;
        @(posedge clk);
        $display("Time %0t: Nach Reset: rotor_position = %d", $time, cur_rotor_position);
        assert (cur_rotor_position == 0) else $error("Fehler: Reset hat nicht funktioniert!");

        $display("\n Alle Tests erfolgreich abgeschlossen.");
        $finish;
    end
endmodule