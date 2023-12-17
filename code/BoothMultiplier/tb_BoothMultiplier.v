`timescale 1ns / 1ps

module tb_BoothMultiplier;

    reg CLK, RESET;
    reg signed [31:0] A, B;
    wire signed [63:0] F;

    BoothMultiplier UUT (
        .CLK(CLK),
        .RESET(RESET),
        .X(A),
        .Y(B),
        .Z(F)
    );

    always #5 CLK = ~CLK;  // Toggle clock every 5 time units

    initial begin
        // Initialize clock and reset
        CLK = 0;
        RESET = 0;

        // Test Case 1: Multiplication of positive and negative number
        A = 15;
        B = -31;
        #20
        if (F === A * B) begin
            $display("TestCase#1: success. Input A=%0d, B=%0d, Output F=%0d", A, B, F);
        end else begin
            $display("TestCase#1: failed with input A=%0d, B=%0d and Output F=%0d", A, B, F);
        end

        // Test Case 2: Multiplication of positive and positive number
        A = 13;
        B = 29;
        #20
        if (F === A * B) begin
            $display("TestCase#2: success. Input A=%0d, B=%0d, Output F=%0d", A, B, F);
        end else begin
            $display("TestCase#2: failed with input A=%0d, B=%0d and Output F=%0d", A, B, F);
        end

        // Test Case 3: Multiplication of negative and negative number
        A = -81;
        B = -55;
        #20
        if (F === A * B) begin
            $display("TestCase#3: success. Input A=%0d, B=%0d, Output F=%0d", A, B, F);
        end else begin
            $display("TestCase#3: failed with input A=%0d, B=%0d and Output F=%0d", A, B, F);
        end

        // Test Case 4: Multiplication of negative and positive number
        A = -100;
        B = 6;
        #20
        if (F === A * B) begin
            $display("TestCase#4: success. Input A=%0d, B=%0d, Output F=%0d", A, B, F);
        end else begin
            $display("TestCase#4: failed with input A=%0d, B=%0d and Output F=%0d", A, B, F);
        end

        // Test Case 5: Multiplication by zero
        A = 0;
        B = -300;
        #20
        if (F === A * B) begin
            $display("TestCase#5: success. Input A=%0d, B=%0d, Output F=%0d", A, B, F);
        end else begin
            $display("TestCase#5: failed with input A=%0d, B=%0d and Output F=%0d", A, B, F);
        end

        // Test Case 6: Multiplication by 1
        A = 122;
        B = 1;
        #20
        if (F === A * B) begin
            $display("TestCase#6: success. Input A=%0d, B=%0d, Output F=%0d", A, B, F);
        end else begin
            $display("TestCase#6: failed with input A=%0d, B=%0d and Output F=%0d", A, B, F);
        end

        // Test Case 7: Additional random test case
        A = 1577;
        B = -40;
        #20
        if (F === A * B) begin
            $display("TestCase#7: success. Input A=%0d, B=%0d, Output F=%0d", A, B, F);
        end else begin
            $display("TestCase#7: failed with input A=%0d, B=%0d and Output F=%0d", A, B, F);
        end

        // Test Case 8: Additional random test case
        A = -12340;
        B = -54321;
        #20
        if (F === A * B) begin
            $display("TestCase#8: success. Input A=%0d, B=%0d, Output F=%0d", A, B, F);
        end else begin
            $display("TestCase#8: failed with input A=%0d, B=%0d and Output F=%0d", A, B, F);
        end

    end

endmodule
