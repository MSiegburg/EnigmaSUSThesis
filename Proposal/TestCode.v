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
        $display("encoded letter is %0d", encode_letter);
        
        shift_amout = 5'b01100;
        #5
        $display("encoded letter is %0d", encode_letter);
        
        shift_amout = 5'b01001;
        #5
        $display("encoded letter is %0d", encode_letter);
        $finish;
    end


endmodule*/

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

module shift_subtract(
    input logic[4:0] letter_index,
    input logic[4:0] rotor_position,
    output logic[4:0] shift_amount_decode_out
);

always_comb begin
    if(letter_index<rotor_position) begin
        shift_amount_out=letter_index+26-rotor_position;
    end
    else begin
    shift_amount_out=letter_index-rotor_position;
    end
end
endmodule