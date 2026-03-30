module shift_increment(
    input [4:0] S;
    input A;
    output [4:0] cur_shift

);

always_comb @(A) begin
    if (S=25) begin
        S = 5'b00001
    end else begin
        S = S+1
    end

end

endmodule



module rotor_position(
    input[4:0] cur_shift;
    input A;
    input clk;
    input rst;
    output [4:0] S
);

allways_ff @(posedge clk) begin
    if(rst) begin
        rotor_position <= 0;
    end
    else if(A) begin
        rotor_position <= (rotor_position+1) %26;
    end
end


endmodule



module shift_adder(
    input[4:0] I;
    input[4:0] S;
    output carry;
    output[4:0] shift_amout
);
allways_comb @(I,S) begin
    shift_amout=(I+S)%26;
end

endmodule

module rotor_wire_assign(
    input[4:0] shift_amout;
    output[4:0] encode_letter
);
allways_comb @(shift_amout) begin
    case (shift_amout)
        5'b00000:encode_letter = 5'b00101   //A=F
        5'b00001:encode_letter = 5'b10111   //B=X
        5'b00010:encode_letter = 5'b00001   //C=B
        5'b00011:encode_letter = 5'b00010   //D=C
        5'b00100:encode_letter = 5'b00110   //E=G        
        5'b00101:encode_letter = 5'b01011   //F=L
        5'b00110:encode_letter = 5'b01010   //G=K
        5'b00111:encode_letter = 5'b01100   //H=M
        5'b01000:encode_letter = 5'b11000   //I=Y
        5'b01001:encode_letter = 5'b10011   //J=T
        5'b01010:encode_letter = 5'b01101   //K=N
        5'b01011:encode_letter = 5'b00000   //L=A
        5'b01100:encode_letter = 5'b10001   //M=R
        5'b01101:encode_letter = 5'b10000   //N=Q
        5'b01110:encode_letter = 5'b11001   //O=Z
        5'b01111:encode_letter = 5'b00011   //P=D
        5'b10000:encode_letter = 5'b01111   //Q=P
        5'b10001:encode_letter = 5'b10110   //R=W
        5'b10010:encode_letter = 5'b10101   //S=V
        5'b10011:encode_letter = 5'b00100   //T=E
        5'b10100:encode_letter = 5'b01000   //U=I
        5'b10101:encode_letter = 5'b01001   //V=J
        5'b10110:encode_letter = 5'b00111   //W=H
        5'b10111:encode_letter = 5'b01110   //X=O
        5'b11000:encode_letter = 5'b10100   //Y=U
        5'b11001:encode_letter = 5'b10010   //Z=S
        
            default: 
    endcase
end

endmodule