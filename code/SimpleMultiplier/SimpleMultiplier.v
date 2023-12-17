module SimpleMultiplier (
    input clk,
    input rst,
    input signed [31:0] X,
    input signed [31:0] Y,
    output signed [63:0] Z
);

wire signed [31:0] activeX;
wire signed [31:0] activeY;
wire signed [63:0] intermediateZ;

RegisterInput R1(.clk(clk), .rst(rst), .in(X), .out(activeX));
RegisterInput R2(.clk(clk), .rst(rst), .in(Y), .out(activeY));

assign intermediateZ = activeX*activeY;

RegisterOuput R3(.clk(clk), .rst(rst), .in(intermediateZ), .out(Z));

endmodule


module RegisterInput (
    input clk,
    input rst,
    input signed [31:0] in,
    output reg signed [31:0] out
);

always @ (posedge(clk), rst) begin
    if (rst) begin
        out = 0;
    end else begin
        out = in;
    end
end

endmodule

module RegisterOuput (
    input clk,
    input rst,
    input signed [63:0] in,
    output reg signed [63:0] out
);

always @ (posedge(clk), rst) begin
    if (rst) begin
        out = 0;
    end else begin
        out = in;
    end
end

endmodule
