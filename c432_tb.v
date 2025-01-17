`timescale 1ns / 1ps
module c432 (N1,N4,N8,N11,N14,N17,N21,N24,N27,N30,
  N34,N37,N40,N43,N47,N50,N53,N56,N60,N63,
  N66,N69,N73,N76,N79,N82,N86,N89,N92,N95,
  N99,N102,N105,N108,N112,N115,N223,N329,N370,N421,
  N430,N431,N432);

input N1,N4,N8,N11,N14,N17,N21,N24,N27,N30,
N34,N37,N40,N43,N47,N50,N53,N56,N60,N63,
N66,N69,N73,N76,N79,N82,N86,N89,N92,N95,
N99,N102,N105,N108,N112,N115;

output N223,N329,N370,N421,N430,N431,N432;

wire N118,N119,N122,N123,N126,N127,N130,N131,N134,N135,
N138,N139,N142,N143,N146,N147,N150,N151,N154,N157,
N158,N159,N162,N165,N168,N171,N174,N177,N180,N183,
N184,N185,N186,N187,N188,N189,N190,N191,N192,N193,
N194,N195,N196,N197,N198,N199,N203,N213,N224,N227,
N230,N233,N236,N239,N242,N243,N246,N247,N250,N251,
N254,N255,N256,N257,N258,N259,N260,N263,N264,N267,
N270,N273,N276,N279,N282,N285,N288,N289,N290,N291,
N292,N293,N294,N295,N296,N300,N301,N302,N303,N304,
N305,N306,N307,N308,N309,N319,N330,N331,N332,N333,
N334,N335,N336,N337,N338,N339,N340,N341,N342,N343,
N344,N345,N346,N347,N348,N349,N350,N351,N352,N353,
N354,N355,N356,N357,N360,N371,N372,N373,N374,N375,
N376,N377,N378,N379,N380,N381,N386,N393,N399,N404,
N407,N411,N414,N415,N416,N417,N418,N419,N420,N422,
N425,N428,N429;

not NOT1_1 (N118, N1);
not NOT1_2 (N119, N4);
not NOT1_3 (N122, N11);
not NOT1_4 (N123, N17);
not NOT1_5 (N126, N24);
not NOT1_6 (N127, N30);
not NOT1_7 (N130, N37);
not NOT1_8 (N131, N43);
not NOT1_9 (N134, N50);
not NOT1_10 (N135, N56);
not NOT1_11 (N138, N63);
not NOT1_12 (N139, N69);
not NOT1_13 (N142, N76);
not NOT1_14 (N143, N82);
not NOT1_15 (N146, N89);
not NOT1_16 (N147, N95);
not NOT1_17 (N150, N102);
not NOT1_18 (N151, N108);
nand NAND2_19 (N154, N118, N4);
nor NOR2_20 (N157, N8, N119);
nor NOR2_21 (N158, N14, N119);
nand NAND2_22 (N159, N122, N17);
nand NAND2_23 (N162, N126, N30);
nand NAND2_24 (N165, N130, N43);
nand NAND2_25 (N168, N134, N56);
nand NAND2_26 (N171, N138, N69);
nand NAND2_27 (N174, N142, N82);
nand NAND2_28 (N177, N146, N95);
nand NAND2_29 (N180, N150, N108);
nor NOR2_30 (N183, N21, N123);
nor NOR2_31 (N184, N27, N123);
nor NOR2_32 (N185, N34, N127);
nor NOR2_33 (N186, N40, N127);
nor NOR2_34 (N187, N47, N131);
nor NOR2_35 (N188, N53, N131);
nor NOR2_36 (N189, N60, N135);
nor NOR2_37 (N190, N66, N135);
nor NOR2_38 (N191, N73, N139);
nor NOR2_39 (N192, N79, N139);
nor NOR2_40 (N193, N86, N143);
nor NOR2_41 (N194, N92, N143);
nor NOR2_42 (N195, N99, N147);
nor NOR2_43 (N196, N105, N147);
nor NOR2_44 (N197, N112, N151);
nor NOR2_45 (N198, N115, N151);
and AND9_46 (N199, N154, N159, N162, N165, N168, N171, N174, N177, N180);
not NOT1_47 (N203, N199);
not NOT1_48 (N213, N199);
not NOT1_49 (N223, N199);
xor XOR2_50 (N224, N203, N154);
xor XOR2_51 (N227, N203, N159);
xor XOR2_52 (N230, N203, N162);
xor XOR2_53 (N233, N203, N165);
xor XOR2_54 (N236, N203, N168);
xor XOR2_55 (N239, N203, N171);
nand NAND2_56 (N242, N1, N213);
xor XOR2_57 (N243, N203, N174);
nand NAND2_58 (N246, N213, N11);
xor XOR2_59 (N247, N203, N177);
nand NAND2_60 (N250, N213, N24);
xor XOR2_61 (N251, N203, N180);
nand NAND2_62 (N254, N213, N37);
nand NAND2_63 (N255, N213, N50);
nand NAND2_64 (N256, N213, N63);
nand NAND2_65 (N257, N213, N76);
nand NAND2_66 (N258, N213, N89);
nand NAND2_67 (N259, N213, N102);
nand NAND2_68 (N260, N224, N157);
nand NAND2_69 (N263, N224, N158);
nand NAND2_70 (N264, N227, N183);
nand NAND2_71 (N267, N230, N185);
nand NAND2_72 (N270, N233, N187);
nand NAND2_73 (N273, N236, N189);
nand NAND2_74 (N276, N239, N191);
nand NAND2_75 (N279, N243, N193);
nand NAND2_76 (N282, N247, N195);
nand NAND2_77 (N285, N251, N197);
nand NAND2_78 (N288, N227, N184);
nand NAND2_79 (N289, N230, N186);
nand NAND2_80 (N290, N233, N188);
nand NAND2_81 (N291, N236, N190);
nand NAND2_82 (N292, N239, N192);
nand NAND2_83 (N293, N243, N194);
nand NAND2_84 (N294, N247, N196);
nand NAND2_85 (N295, N251, N198);
and AND9_86 (N296, N260, N264, N267, N270, N273, N276, N279, N282, N285);
not NOT1_87 (N300, N263);
not NOT1_88 (N301, N288);
not NOT1_89 (N302, N289);
not NOT1_90 (N303, N290);
not NOT1_91 (N304, N291);
not NOT1_92 (N305, N292);
not NOT1_93 (N306, N293);
not NOT1_94 (N307, N294);
not NOT1_95 (N308, N295);
not NOT1_96 (N309, N296);
not NOT1_97 (N319, N296);
not NOT1_98 (N329, N296);
xor XOR2_99 (N330, N309, N260);
xor XOR2_100 (N331, N309, N264);
xor XOR2_101 (N332, N309, N267);
xor XOR2_102 (N333, N309, N270);
nand NAND2_103 (N334, N8, N319);
xor XOR2_104 (N335, N309, N273);
nand NAND2_105 (N336, N319, N21);
xor XOR2_106 (N337, N309, N276);
nand NAND2_107 (N338, N319, N34);
xor XOR2_108 (N339, N309, N279);
nand NAND2_109 (N340, N319, N47);
xor XOR2_110 (N341, N309, N282);
nand NAND2_111 (N342, N319, N60);
xor XOR2_112 (N343, N309, N285);
nand NAND2_113 (N344, N319, N73);
nand NAND2_114 (N345, N319, N86);
nand NAND2_115 (N346, N319, N99);
nand NAND2_116 (N347, N319, N112);
nand NAND2_117 (N348, N330, N300);
nand NAND2_118 (N349, N331, N301);
nand NAND2_119 (N350, N332, N302);
nand NAND2_120 (N351, N333, N303);
nand NAND2_121 (N352, N335, N304);
nand NAND2_122 (N353, N337, N305);
nand NAND2_123 (N354, N339, N306);
nand NAND2_124 (N355, N341, N307);
nand NAND2_125 (N356, N343, N308);
and AND9_126 (N357, N348, N349, N350, N351, N352, N353, N354, N355, N356);
not NOT1_127 (N360, N357);
not NOT1_128 (N370, N357);
nand NAND2_129 (N371, N14, N360);
nand NAND2_130 (N372, N360, N27);
nand NAND2_131 (N373, N360, N40);
nand NAND2_132 (N374, N360, N53);
nand NAND2_133 (N375, N360, N66);
nand NAND2_134 (N376, N360, N79);
nand NAND2_135 (N377, N360, N92);
nand NAND2_136 (N378, N360, N105);
nand NAND2_137 (N379, N360, N115);
nand NAND4_138 (N380, N4, N242, N334, N371);
nand NAND4_139 (N381, N246, N336, N372, N17);
nand NAND4_140 (N386, N250, N338, N373, N30);
nand NAND4_141 (N393, N254, N340, N374, N43);
nand NAND4_142 (N399, N255, N342, N375, N56);
nand NAND4_143 (N404, N256, N344, N376, N69);
nand NAND4_144 (N407, N257, N345, N377, N82);
nand NAND4_145 (N411, N258, N346, N378, N95);
nand NAND4_146 (N414, N259, N347, N379, N108);
not NOT1_147 (N415, N380);
and AND8_148 (N416, N381, N386, N393, N399, N404, N407, N411, N414);
not NOT1_149 (N417, N393);
not NOT1_150 (N418, N404);
not NOT1_151 (N419, N407);
not NOT1_152 (N420, N411);
nor NOR2_153 (N421, N415, N416);
nand NAND2_154 (N422, N386, N417);
nand NAND4_155 (N425, N386, N393, N418, N399);
nand NAND3_156 (N428, N399, N393, N419);
nand NAND4_157 (N429, N386, N393, N407, N420);
nand NAND4_158 (N430, N381, N386, N422, N399);
nand NAND4_159 (N431, N381, N386, N425, N428);
nand NAND4_160 (N432, N381, N422, N425, N429);

endmodule


module c432_tb;

    // Inputs
    reg N1, N4, N8, N11, N14, N17, N21, N24, N27, N30;
    reg N34, N37, N40, N43, N47, N50, N53, N56, N60, N63;
    reg N66, N69, N73, N76, N79, N82, N86, N89, N92, N95;
    reg N99, N102, N105, N108, N112, N115;

    // Outputs
    wire N223, N329, N370, N421, N430, N431, N432;

    c432 uut (
        .N1(N1), .N4(N4), .N8(N8), .N11(N11), .N14(N14),
        .N17(N17), .N21(N21), .N24(N24), .N27(N27), .N30(N30),
        .N34(N34), .N37(N37), .N40(N40), .N43(N43), .N47(N47),
        .N50(N50), .N53(N53), .N56(N56), .N60(N60), .N63(N63),
        .N66(N66), .N69(N69), .N73(N73), .N76(N76), .N79(N79),
        .N82(N82), .N86(N86), .N89(N89), .N92(N92), .N95(N95),
        .N99(N99), .N102(N102), .N105(N105), .N108(N108),
        .N112(N112), .N115(N115),
        .N223(N223), .N329(N329), .N370(N370), .N421(N421),
        .N430(N430), .N431(N431), .N432(N432)
    );
    
    //Verilog testing - fault free circuit

    reg [35:0] test_vectors[0:7]; 
    integer i;

    initial begin
        // test vectors
        test_vectors[0] = 36'b000000000000000000000000000000000000; 
        test_vectors[1] = 36'b111111111111111111111111111111111111; 
        test_vectors[2] = 36'b010101010101010101010101010101010101; 
        test_vectors[3] = 36'b101010101010101010101010101010101010;
        test_vectors[4] = 36'b000011110000111100001111000011110000; 
        test_vectors[5] = 36'b111100001111000011110000111100001111; 
        test_vectors[6] = 36'b100000000000000000000000000000000001; 
        test_vectors[7] = 36'b000000001111111100000000111111110000; 

        for (i = 0; i < 8; i = i + 1) begin
            {N1, N4, N8, N11, N14, N17, N21, N24, N27, N30,
             N34, N37, N40, N43, N47, N50, N53, N56, N60, N63,
             N66, N69, N73, N76, N79, N82, N86, N89, N92, N95,
             N99, N102, N105, N108, N112, N115} = test_vectors[i];
            #10;

            // Display results
            $display("Test Vector %d: %b", i, test_vectors[i]);
            $display("Outputs: N223=%b, N329=%b, N370=%b, N421=%b, N430=%b, N431=%b, N432=%b",
                     N223, N329, N370, N421, N430, N431, N432);
        end

    end

    reg [35:0] test_vector = 36'b010101010101010101010101010101010101;
    reg fault_detected;
    reg [127:0] fault_list[0:55]; 
    reg [6:0] fault_free_outputs;

    initial begin
      

        //Populating fault list
        fault_list[0] = "N309 stuck at 0";
        fault_list[1] = "N407 stuck at 0";
        fault_list[2] = "N213 stuck at 0";
        fault_list[3] = "N258 stuck at 1";
        fault_list[4] = "N296 stuck at 1";
        fault_list[5] = "N256 stuck at 1";
        fault_list[6] = "N421 stuck at 1";
        fault_list[7] = "N263 stuck at 1";
        fault_list[8] = "N430 stuck at 1";
        fault_list[9] = "N257 stuck at 1";
        fault_list[10] = "N255 stuck at 1";
        fault_list[11] = "N254 stuck at 1";
        fault_list[12] = "N223 stuck at 0";
        fault_list[13] = "N4 stuck at 0";
        fault_list[14] = "N158 stuck at 0";
        fault_list[15] = "N224 stuck at 0";
        fault_list[16] = "N11 stuck at 0";
        fault_list[17] = "N399 stuck at 0";
        fault_list[18] = "N8 stuck at 1";
        fault_list[19] = "N329 stuck at 0";
        fault_list[20] = "N119 stuck at 1";
        fault_list[21] = "N431 stuck at 1";
        fault_list[22] = "N425 stuck at 0";
        fault_list[23] = "N386 stuck at 0";
        fault_list[24] = "N417 stuck at 1";
        fault_list[25] = "N393 stuck at 0";
        fault_list[26] = "N404 stuck at 0";
        fault_list[27] = "N76 stuck at 0";
        fault_list[28] = "N357 stuck at 1";
        fault_list[29] = "N89 stuck at 0";
        fault_list[30] = "N157 stuck at 0";
        fault_list[31] = "N348 stuck at 1";
        fault_list[32] = "N250 stuck at 1";
        fault_list[33] = "N419 stuck at 1";
        fault_list[34] = "N420 stuck at 1";
        fault_list[35] = "N14 stuck at 1";
        fault_list[36] = "N422 stuck at 0";
        fault_list[37] = "N154 stuck at 1";
        fault_list[38] = "N370 stuck at 0";
        fault_list[39] = "N260 stuck at 1";
        fault_list[40] = "N432 stuck at 1";
        fault_list[41] = "N411 stuck at 0";
        fault_list[42] = "N37 stuck at 0";
        fault_list[43] = "N418 stuck at 1";
        fault_list[44] = "N381 stuck at 0";
        fault_list[45] = "N246 stuck at 1";
        fault_list[46] = "N50 stuck at 0";
        fault_list[47] = "N1 stuck at 1";
        fault_list[48] = "N24 stuck at 0";
        fault_list[49] = "N199 stuck at 1";
        fault_list[50] = "N330 stuck at 0";
        fault_list[51] = "N63 stuck at 0";
        fault_list[52] = "N428 stuck at 0";
        fault_list[53] = "N118 stuck at 0";
        fault_list[54] = "N300 stuck at 0";
        fault_list[55] = "N429 stuck at 0";

        {N1, N4, N8, N11, N14, N17, N21, N24, N27, N30,
         N34, N37, N40, N43, N47, N50, N53, N56, N60, N63,
         N66, N69, N73, N76, N79, N82, N86, N89, N92, N95,
         N99, N102, N105, N108, N112, N115} = test_vector;

        #10; 

        //fault-free outputs
        fault_free_outputs[0] = N223;
        fault_free_outputs[1] = N329;
        fault_free_outputs[2] = N370;
        fault_free_outputs[3] = N421;
        fault_free_outputs[4] = N430;
        fault_free_outputs[5] = N431;
        fault_free_outputs[6] = N432;
         // Test each fault
        for (i = 0; i < 56; i = i + 1) begin
            $display("Testing fault: %s", fault_list[i]);
            
            // Inject fault
            if (fault_list[i] == "N309 stuck at 0") force uut.N309 = 0;
            else if (fault_list[i] == "N407 stuck at 0") force uut.N407 = 0;
            else if (fault_list[i] == "N213 stuck at 0") force uut.N213 = 0;
            else if (fault_list[i] == "N258 stuck at 1") force uut.N258 = 1;
            else if (fault_list[i] == "N296 stuck at 1") force uut.N296 = 1;
            else if (fault_list[i] == "N256 stuck at 1") force uut.N256 = 1;
            else if (fault_list[i] == "N421 stuck at 1") force uut.N421 = 1;
            else if (fault_list[i] == "N263 stuck at 1") force uut.N263 = 1;
            else if (fault_list[i] == "N430 stuck at 1") force uut.N430 = 1;
            else if (fault_list[i] == "N257 stuck at 1") force uut.N257 = 1;
            else if (fault_list[i] == "N255 stuck at 1") force uut.N255 = 1;
            else if (fault_list[i] == "N254 stuck at 1") force uut.N254 = 1;
            else if (fault_list[i] == "N223 stuck at 0") force uut.N223 = 0;
            else if (fault_list[i] == "N4 stuck at 0") force uut.N4 = 0;
            else if (fault_list[i] == "N158 stuck at 0") force uut.N158 = 0;
            else if (fault_list[i] == "N224 stuck at 0") force uut.N224 = 0;
            else if (fault_list[i] == "N11 stuck at 0") force uut.N11 = 0;
            else if (fault_list[i] == "N399 stuck at 0") force uut.N399 = 0;
            else if (fault_list[i] == "N8 stuck at 1") force uut.N8 = 1;
            else if (fault_list[i] == "N329 stuck at 0") force uut.N329 = 0;
            else if (fault_list[i] == "N119 stuck at 1") force uut.N119 = 1;
            else if (fault_list[i] == "N431 stuck at 1") force uut.N431 = 1;
            else if (fault_list[i] == "N425 stuck at 0") force uut.N425 = 0;
            else if (fault_list[i] == "N386 stuck at 0") force uut.N386 = 0;
            else if (fault_list[i] == "N417 stuck at 1") force uut.N417 = 1;
            else if (fault_list[i] == "N393 stuck at 0") force uut.N393 = 0;
            else if (fault_list[i] == "N404 stuck at 0") force uut.N404 = 0;
            else if (fault_list[i] == "N76 stuck at 0") force uut.N76 = 0;
            else if (fault_list[i] == "N357 stuck at 1") force uut.N357 = 1;
            else if (fault_list[i] == "N89 stuck at 0") force uut.N89 = 0;
            else if (fault_list[i] == "N157 stuck at 0") force uut.N157 = 0;
            else if (fault_list[i] == "N348 stuck at 1") force uut.N348 = 1;
            else if (fault_list[i] == "N250 stuck at 1") force uut.N250 = 1;
            else if (fault_list[i] == "N419 stuck at 1") force uut.N419 = 1;
            else if (fault_list[i] == "N420 stuck at 1") force uut.N420 = 1;
            else if (fault_list[i] == "N14 stuck at 1") force uut.N14 = 1;
            else if (fault_list[i] == "N422 stuck at 0") force uut.N422 = 0;
            else if (fault_list[i] == "N154 stuck at 1") force uut.N154 = 1;
            else if (fault_list[i] == "N370 stuck at 0") force uut.N370 = 0;
            else if (fault_list[i] == "N260 stuck at 1") force uut.N260 = 1;
            else if (fault_list[i] == "N432 stuck at 1") force uut.N432 = 1;
            else if (fault_list[i] == "N411 stuck at 0") force uut.N411 = 0;
            else if (fault_list[i] == "N37 stuck at 0") force uut.N37 = 0;
            else if (fault_list[i] == "N418 stuck at 1") force uut.N418 = 1;
            else if (fault_list[i] == "N381 stuck at 0") force uut.N381 = 0;
            else if (fault_list[i] == "N246 stuck at 1") force uut.N246 = 1;
            else if (fault_list[i] == "N50 stuck at 0") force uut.N50 = 0;
            else if (fault_list[i] == "N1 stuck at 1") force uut.N1 = 1;
            else if (fault_list[i] == "N24 stuck at 0") force uut.N24 = 0;
            else if (fault_list[i] == "N199 stuck at 1") force uut.N199 = 1;
            else if (fault_list[i] == "N330 stuck at 0") force uut.N330 = 0;
            else if (fault_list[i] == "N63 stuck at 0") force uut.N63 = 0;
            else if (fault_list[i] == "N428 stuck at 0") force uut.N428 = 0;
            else if (fault_list[i] == "N118 stuck at 0") force uut.N118 = 0;
            else if (fault_list[i] == "N300 stuck at 0") force uut.N300 = 0;
            else if (fault_list[i] == "N429 stuck at 0") force uut.N429 = 0;

            #10; 

            // Compare outputs
            fault_detected = 0;
            if (N223 !== fault_free_outputs[0]) fault_detected = 1;
            if (N329 !== fault_free_outputs[1]) fault_detected = 1;
            if (N370 !== fault_free_outputs[2]) fault_detected = 1;
            if (N421 !== fault_free_outputs[3]) fault_detected = 1;
            if (N430 !== fault_free_outputs[4]) fault_detected = 1;
            if (N431 !== fault_free_outputs[5]) fault_detected = 1;
            if (N432 !== fault_free_outputs[6]) fault_detected = 1;

            if (fault_detected)
                $display("Fault %s is DETECTED.", fault_list[i]);
            else
                $display("Fault %s is NOT detected.", fault_list[i]);

            // Releasing the fault
            release uut.N309;
            release uut.N407;
            release uut.N213;
            release uut.N258;
            release uut.N296;
            release uut.N256;
            release uut.N421;
            release uut.N263;
            release uut.N430;
            release uut.N257;
            release uut.N255;
            release uut.N254;
            release uut.N223;
            release uut.N4;
            release uut.N158;
            release uut.N224;
            release uut.N11;
            release uut.N399;
            release uut.N8;
            release uut.N329;
            release uut.N119;
            release uut.N431;
            release uut.N425;
            release uut.N386;
            release uut.N417;
            release uut.N393;
            release uut.N404;
            release uut.N76;
            release uut.N357;
            release uut.N89;
            release uut.N157;
            release uut.N348;
            release uut.N250;
            release uut.N419;
            release uut.N420;
            release uut.N14;
            release uut.N422;
            release uut.N154;
            release uut.N370;
            release uut.N260;
            release uut.N432;
            release uut.N411;
            release uut.N37;
            release uut.N418;
            release uut.N381;
            release uut.N246;
            release uut.N50;
            release uut.N1;
            release uut.N24;
            release uut.N199;
            release uut.N330;
            release uut.N63;
            release uut.N428;
            release uut.N118;
            release uut.N300;
            release uut.N429;
        end
              $finish;
    end

endmodule