`timescale 1ns/1ps

module decoder_tb;

reg A, B;
wire Y0, Y1, Y2, Y3;

// Instantiate Decoder
decoder uut (
    .A(A),
    .B(B),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin

    // Generate waveform
    $dumpfile("decoder.vcd");
    $dumpvars(0, decoder_tb);

    $display("A B | Y0 Y1 Y2 Y3");
    $display("------------------");

    A = 0; B = 0; #10;
    $display("%b %b | %b  %b  %b  %b", A, B, Y0, Y1, Y2, Y3);

    A = 0; B = 1; #10;
    $display("%b %b | %b  %b  %b  %b", A, B, Y0, Y1, Y2, Y3);

    A = 1; B = 0; #10;
    $display("%b %b | %b  %b  %b  %b", A, B, Y0, Y1, Y2, Y3);

    A = 1; B = 1; #10;
    $display("%b %b | %b  %b  %b  %b", A, B, Y0, Y1, Y2, Y3);

    $finish;

end

endmodule