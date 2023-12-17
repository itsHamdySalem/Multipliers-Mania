
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


    always @ (posedge(CLK) or posedge(RESET)) begin
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
