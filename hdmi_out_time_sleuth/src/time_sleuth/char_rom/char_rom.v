`timescale 1 ns / 1 ns

module char_rom (
    input clock,
    input [7:0] address,
    output [7:0] q
);

reg[7:0] q_reg;
reg[7:0] q_reg_2;

assign q = q_reg_2;

always @(posedge clock) begin
    case (address[7:4])
        0: begin
            case (address[3:0])
                `include "font/8x16-font-digits/digit-0.v"
            endcase
        end
        1: begin
            case (address[3:0])
                `include "font/8x16-font-digits/digit-1.v"
            endcase
        end
        2: begin
            case (address[3:0])
                `include "font/8x16-font-digits/digit-2.v"
            endcase
        end
        3: begin
            case (address[3:0])
                `include "font/8x16-font-digits/digit-3.v"
            endcase
        end
        4: begin
            case (address[3:0])
                `include "font/8x16-font-digits/digit-4.v"
            endcase
        end
        5: begin
            case (address[3:0])
                `include "font/8x16-font-digits/digit-5.v"
            endcase
        end
        6: begin
            case (address[3:0])
                `include "font/8x16-font-digits/digit-6.v"
            endcase
        end
        7: begin
            case (address[3:0])
                `include "font/8x16-font-digits/digit-7.v"
            endcase
        end
        8: begin
            case (address[3:0])
                `include "font/8x16-font-digits/digit-8.v"
            endcase
        end
        9: begin
            case (address[3:0])
                `include "font/8x16-font-digits/digit-9.v"
            endcase
        end
    endcase
    q_reg_2 <= q_reg;
end
endmodule
