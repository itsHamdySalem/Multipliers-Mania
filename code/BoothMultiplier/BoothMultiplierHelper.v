
module BoothMultiplierHelper (
    input wire signed [31:0] A,
    input wire signed [31:0] Q,
    input wire signed Q0,
    input wire signed [31:0] M,
    output reg signed [31:0] F8,
    output reg signed [31:0] L8,
    output reg signed CQ0
);

    wire [31:0] added, subtracted;

    assign added = A + M;
    assign subtracted = A - M;

    always @(*) begin
        CQ0 = Q[0];
        L8 = Q >> 1;
        if (Q[0] === Q0) begin
            F8 = A >> 1;
            L8[31] = A[0];
            F8[31] = A[31];
        end
        else if (~Q[0] & Q0) begin
            F8 = added >> 1;
            L8[31] = added[0];
            F8[31] = added[31];
        end
        else begin
            F8 = subtracted >> 1;
            L8[31] = subtracted[0];
            F8[31] = subtracted[31];
        end
    end

endmodule
