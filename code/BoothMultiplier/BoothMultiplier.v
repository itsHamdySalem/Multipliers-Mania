module BoothMultiplier (
    input CLK,
    input RESET,
    input signed [31:0] X,
    input signed [31:0] Y,
    output reg signed [63:0] Z
);

    reg signed [31:0] XX;
    reg signed [31:0] YY;

    wire signed [31:0] Q0;
    wire signed [31:0] Q[31:0];
    wire signed [31:0] A[31:0];

    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin: gen_blk
            if (i) begin
                BoothMultiplierHelper U(A[i - 1], Q[i - 1], Q0[i - 1], YY, A[i], Q[i], Q0[i]);
            end else begin
                BoothMultiplierHelper U(32'b0, XX, 1'b0, YY, A[i], Q[i], Q0[i]);
            end
        end
    endgenerate


    always @ (posedge(CLK), RESET) begin
        if (RESET) begin
            XX = 0;
            YY = 0;
            Z = 0;
        end else begin
            XX = X;
            YY = Y;
            Z = {A[31], Q[31]};
        end
    end

endmodule

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
