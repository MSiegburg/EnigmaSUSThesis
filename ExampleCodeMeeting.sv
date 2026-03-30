`timescale 1ns / 1ps

module wirereg(
    input clk,
    input...
);

logic clk = 0;
logic rst = 0;
always #5 clk = ~clk;

wire[19:0] w;


assign w[3] = 1'b0;

reg[19:0] r;
always @(w) begin
    r = w;
end

reg[19:0] r_reg;
always @(posedge clk) begin
    r_reg <= w;
end


logic[19:0] logic_r;
always @(w) begin
    logic_r = w;
end

logic[19:0] logic_r_reg;
always @(posedge clk) begin
    logic_r_reg <= w;
end

bit[19:0] bit_r;




logic advance;
logic[4:0] rotor_position;

always @(negedge rst) begin
    rotor_position = 0;
end

always @(posedge clk) begin
    if(rst) begin
        rotor_position <= 0;
    end else if(advance) begin
        rotor_position <= (rotor_position + 1) % 26;
    end
end


always_ff @(posedge clk) begin

end

always_comb begin

end



endmodule