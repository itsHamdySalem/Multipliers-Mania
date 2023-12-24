module SimpleMultiplier (
    input clk,
    input rst,
    input signed [31:0] X,
    input signed [31:0] Y,
    output signed [63:0] Z
);

reg signed [31:0] activeX;
reg signed [31:0] activeY;
wire signed [63:0] intermediateZ;

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

assign intermediateZ = activeX*activeY;

endmodule
