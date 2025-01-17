module full_adder;

    // Inputs
    input A, B, Cin;  

    // Outputs
    output Sum, Cout; 

    wire D, E, F;

    xor g1(D, A, B);
    xor g2(Sum, D, Cin);
    and g3(E, A, B);
    and g4(F, D, Cin);
    or g5(Cout, E, F);

endmodule