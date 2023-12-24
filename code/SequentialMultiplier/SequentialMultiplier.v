module SequentialMultiplier (
    input clk,
    input rst,
    input signed [31:0] X,
    input signed [31:0] Y,
    output reg signed [63:0] Z
);

reg signed [31:0] activeX;
reg signed [31:0] activeY;
wire signed [31:0] effectiveX;
wire signed [31:0] effectiveY;
wire signX;
wire signY;
wire signed [63:0] intermediateZ;
reg [31:0] ones;

initial begin
    ones = (1<<33)-1;
end

assign signX = activeX[31];
assign signY = activeY[31];
assign effectiveX = (signX ? 1+(ones^activeX) : activeX);
assign effectiveY = (signY ? 1+(ones^activeY) : activeY);

wire [63:0] product;
wire [63:0] partial_products[31:0];

genvar i;
generate
    for (i = 0; i < 32; i = i + 1) begin : pp_gen
        assign partial_products[i] = (effectiveX[i] ? effectiveY : 0) << i;
    end
endgenerate

always @(posedge(clk) or posedge(rst)) begin
    if (rst) begin
        activeX = 0;
        activeY = 0;
        Z = 0;
    end
    else begin
        activeX = X;
        activeY = Y;
        Z = intermediateZ;
    end
end

assign product = partial_products[0] + partial_products[1] + partial_products[2] + partial_products[3] + partial_products[4] +
                 partial_products[5] + partial_products[6] + partial_products[7] + partial_products[8] + partial_products[9] +
                 partial_products[10] + partial_products[11] + partial_products[12] + partial_products[13] + partial_products[14] +
                 partial_products[15] + partial_products[16] + partial_products[17] + partial_products[18] + partial_products[19] +
                 partial_products[20] + partial_products[21] + partial_products[22] + partial_products[23] + partial_products[24] +
                 partial_products[25] + partial_products[26] + partial_products[27] + partial_products[28] + partial_products[29] +
                 partial_products[30] + partial_products[31];

assign intermediateZ = (signX^signY ? -product : product);

endmodule
