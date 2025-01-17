module c499 (N1,N5,N9,N13,N17,N21,N25,N29,N33,N37,
             N41,N45,N49,N53,N57,N61,N65,N69,N73,N77,
             N81,N85,N89,N93,N97,N101,N105,N109,N113,N117,
             N121,N125,N129,N130,N131,N132,N133,N134,N135,N136,
             N137,N724,N725,N726,N727,N728,N729,N730,N731,N732,
             N733,N734,N735,N736,N737,N738,N739,N740,N741,N742,
             N743,N744,N745,N746,N747,N748,N749,N750,N751,N752,
             N753,N754,N755);

input N1,N5,N9,N13,N17,N21,N25,N29,N33,N37,
      N41,N45,N49,N53,N57,N61,N65,N69,N73,N77,
      N81,N85,N89,N93,N97,N101,N105,N109,N113,N117,
      N121,N125,N129,N130,N131,N132,N133,N134,N135,N136,
      N137;

output N724,N725,N726,N727,N728,N729,N730,N731,N732,N733,
       N734,N735,N736,N737,N738,N739,N740,N741,N742,N743,
       N744,N745,N746,N747,N748,N749,N750,N751,N752,N753,
       N754,N755;

wire N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,
     N260,N261,N262,N263,N264,N265,N266,N267,N268,N269,
     N270,N271,N272,N273,N274,N275,N276,N277,N278,N279,
     N280,N281,N282,N283,N284,N285,N286,N287,N288,N289,
     N290,N293,N296,N299,N302,N305,N308,N311,N314,N315,
     N316,N317,N318,N319,N320,N321,N338,N339,N340,N341,
     N342,N343,N344,N345,N346,N347,N348,N349,N350,N351,
     N352,N353,N354,N367,N380,N393,N406,N419,N432,N445,
     N554,N555,N556,N557,N558,N559,N560,N561,N562,N563,
     N564,N565,N566,N567,N568,N569,N570,N571,N572,N573,
     N574,N575,N576,N577,N578,N579,N580,N581,N582,N583,
     N584,N585,N586,N587,N588,N589,N590,N591,N592,N593,
     N594,N595,N596,N597,N598,N599,N600,N601,N602,N607,
     N620,N625,N630,N635,N640,N645,N650,N655,N692,N693,
     N694,N695,N696,N697,N698,N699,N700,N701,N702,N703,
     N704,N705,N706,N707,N708,N709,N710,N711,N712,N713,
     N714,N715,N716,N717,N718,N719,N720,N721,N722,N723;

xor XOR2_1 (N250, N1, N5);
xor XOR2_2 (N251, N9, N13);
xor XOR2_3 (N252, N17, N21);
xor XOR2_4 (N253, N25, N29);
xor XOR2_5 (N254, N33, N37);
xor XOR2_6 (N255, N41, N45);
xor XOR2_7 (N256, N49, N53);
xor XOR2_8 (N257, N57, N61);
xor XOR2_9 (N258, N65, N69);
xor XOR2_10 (N259, N73, N77);
xor XOR2_11 (N260, N81, N85);
xor XOR2_12 (N261, N89, N93);
xor XOR2_13 (N262, N97, N101);
xor XOR2_14 (N263, N105, N109);
xor XOR2_15 (N264, N113, N117);
xor XOR2_16 (N265, N121, N125);
and AND2_17 (N266, N129, N137);
and AND2_18 (N267, N130, N137);
and AND2_19 (N268, N131, N137);
and AND2_20 (N269, N132, N137);
and AND2_21 (N270, N133, N137);
and AND2_22 (N271, N134, N137);
and AND2_23 (N272, N135, N137);
and AND2_24 (N273, N136, N137);
xor XOR2_25 (N274, N1, N17);
xor XOR2_26 (N275, N33, N49);
xor XOR2_27 (N276, N5, N21);
xor XOR2_28 (N277, N37, N53);
xor XOR2_29 (N278, N9, N25);
xor XOR2_30 (N279, N41, N57);
xor XOR2_31 (N280, N13, N29);
xor XOR2_32 (N281, N45, N61);
xor XOR2_33 (N282, N65, N81);
xor XOR2_34 (N283, N97, N113);
xor XOR2_35 (N284, N69, N85);
xor XOR2_36 (N285, N101, N117);
xor XOR2_37 (N286, N73, N89);
xor XOR2_38 (N287, N105, N121);
xor XOR2_39 (N288, N77, N93);
xor XOR2_40 (N289, N109, N125);
xor XOR2_41 (N290, N250, N251);
xor XOR2_42 (N293, N252, N253);
xor XOR2_43 (N296, N254, N255);
xor XOR2_44 (N299, N256, N257);
xor XOR2_45 (N302, N258, N259);
xor XOR2_46 (N305, N260, N261);
xor XOR2_47 (N308, N262, N263);
xor XOR2_48 (N311, N264, N265);
xor XOR2_49 (N314, N274, N275);
xor XOR2_50 (N315, N276, N277);
xor XOR2_51 (N316, N278, N279);
xor XOR2_52 (N317, N280, N281);
xor XOR2_53 (N318, N282, N283);
xor XOR2_54 (N319, N284, N285);
xor XOR2_55 (N320, N286, N287);
xor XOR2_56 (N321, N288, N289);
xor XOR2_57 (N338, N290, N293);
xor XOR2_58 (N339, N296, N299);
xor XOR2_59 (N340, N290, N296);
xor XOR2_60 (N341, N293, N299);
xor XOR2_61 (N342, N302, N305);
xor XOR2_62 (N343, N308, N311);
xor XOR2_63 (N344, N302, N308);
xor XOR2_64 (N345, N305, N311);
xor XOR2_65 (N346, N266, N342);
xor XOR2_66 (N347, N267, N343);
xor XOR2_67 (N348, N268, N344);
xor XOR2_68 (N349, N269, N345);
xor XOR2_69 (N350, N270, N338);
xor XOR2_70 (N351, N271, N339);
xor XOR2_71 (N352, N272, N340);
xor XOR2_72 (N353, N273, N341);
xor XOR2_73 (N354, N314, N346);
xor XOR2_74 (N367, N315, N347);
xor XOR2_75 (N380, N316, N348);
xor XOR2_76 (N393, N317, N349);
xor XOR2_77 (N406, N318, N350);
xor XOR2_78 (N419, N319, N351);
xor XOR2_79 (N432, N320, N352);
xor XOR2_80 (N445, N321, N353);
not NOT1_81 (N554, N354);
not NOT1_82 (N555, N367);
not NOT1_83 (N556, N380);
not NOT1_84 (N557, N354);
not NOT1_85 (N558, N367);
not NOT1_86 (N559, N393);
not NOT1_87 (N560, N354);
not NOT1_88 (N561, N380);
not NOT1_89 (N562, N393);
not NOT1_90 (N563, N367);
not NOT1_91 (N564, N380);
not NOT1_92 (N565, N393);
not NOT1_93 (N566, N419);
not NOT1_94 (N567, N445);
not NOT1_95 (N568, N419);
not NOT1_96 (N569, N432);
not NOT1_97 (N570, N406);
not NOT1_98 (N571, N445);
not NOT1_99 (N572, N406);
not NOT1_100 (N573, N432);
not NOT1_101 (N574, N406);
not NOT1_102 (N575, N419);
not NOT1_103 (N576, N432);
not NOT1_104 (N577, N406);
not NOT1_105 (N578, N419);
not NOT1_106 (N579, N445);
not NOT1_107 (N580, N406);
not NOT1_108 (N581, N432);
not NOT1_109 (N582, N445);
not NOT1_110 (N583, N419);
not NOT1_111 (N584, N432);
not NOT1_112 (N585, N445);
not NOT1_113 (N586, N367);
not NOT1_114 (N587, N393);
not NOT1_115 (N588, N367);
not NOT1_116 (N589, N380);
not NOT1_117 (N590, N354);
not NOT1_118 (N591, N393);
not NOT1_119 (N592, N354);
not NOT1_120 (N593, N380);
and AND4_121 (N594, N554, N555, N556, N393);
and AND4_122 (N595, N557, N558, N380, N559);
and AND4_123 (N596, N560, N367, N561, N562);
and AND4_124 (N597, N354, N563, N564, N565);
and AND4_125 (N598, N574, N575, N576, N445);
and AND4_126 (N599, N577, N578, N432, N579);
and AND4_127 (N600, N580, N419, N581, N582);
and AND4_128 (N601, N406, N583, N584, N585);
or OR4_129 (N602, N594, N595, N596, N597);
or OR4_130 (N607, N598, N599, N600, N601);
and AND5_131 (N620, N406, N566, N432, N567, N602);
and AND5_132 (N625, N406, N568, N569, N445, N602);
and AND5_133 (N630, N570, N419, N432, N571, N602);
and AND5_134 (N635, N572, N419, N573, N445, N602);
and AND5_135 (N640, N354, N586, N380, N587, N607);
and AND5_136 (N645, N354, N588, N589, N393, N607);
and AND5_137 (N650, N590, N367, N380, N591, N607);
and AND5_138 (N655, N592, N367, N593, N393, N607);
and AND2_139 (N692, N354, N620);
and AND2_140 (N693, N367, N620);
and AND2_141 (N694, N380, N620);
and AND2_142 (N695, N393, N620);
and AND2_143 (N696, N354, N625);
and AND2_144 (N697, N367, N625);
and AND2_145 (N698, N380, N625);
and AND2_146 (N699, N393, N625);
and AND2_147 (N700, N354, N630);
and AND2_148 (N701, N367, N630);
and AND2_149 (N702, N380, N630);
and AND2_150 (N703, N393, N630);
and AND2_151 (N704, N354, N635);
and AND2_152 (N705, N367, N635);
and AND2_153 (N706, N380, N635);
and AND2_154 (N707, N393, N635);
and AND2_155 (N708, N406, N640);
and AND2_156 (N709, N419, N640);
and AND2_157 (N710, N432, N640);
and AND2_158 (N711, N445, N640);
and AND2_159 (N712, N406, N645);
and AND2_160 (N713, N419, N645);
and AND2_161 (N714, N432, N645);
and AND2_162 (N715, N445, N645);
and AND2_163 (N716, N406, N650);
and AND2_164 (N717, N419, N650);
and AND2_165 (N718, N432, N650);
and AND2_166 (N719, N445, N650);
and AND2_167 (N720, N406, N655);
and AND2_168 (N721, N419, N655);
and AND2_169 (N722, N432, N655);
and AND2_170 (N723, N445, N655);
xor XOR2_171 (N724, N1, N692);
xor XOR2_172 (N725, N5, N693);
xor XOR2_173 (N726, N9, N694);
xor XOR2_174 (N727, N13, N695);
xor XOR2_175 (N728, N17, N696);
xor XOR2_176 (N729, N21, N697);
xor XOR2_177 (N730, N25, N698);
xor XOR2_178 (N731, N29, N699);
xor XOR2_179 (N732, N33, N700);
xor XOR2_180 (N733, N37, N701);
xor XOR2_181 (N734, N41, N702);
xor XOR2_182 (N735, N45, N703);
xor XOR2_183 (N736, N49, N704);
xor XOR2_184 (N737, N53, N705);
xor XOR2_185 (N738, N57, N706);
xor XOR2_186 (N739, N61, N707);
xor XOR2_187 (N740, N65, N708);
xor XOR2_188 (N741, N69, N709);
xor XOR2_189 (N742, N73, N710);
xor XOR2_190 (N743, N77, N711);
xor XOR2_191 (N744, N81, N712);
xor XOR2_192 (N745, N85, N713);
xor XOR2_193 (N746, N89, N714);
xor XOR2_194 (N747, N93, N715);
xor XOR2_195 (N748, N97, N716);
xor XOR2_196 (N749, N101, N717);
xor XOR2_197 (N750, N105, N718);
xor XOR2_198 (N751, N109, N719);
xor XOR2_199 (N752, N113, N720);
xor XOR2_200 (N753, N117, N721);
xor XOR2_201 (N754, N121, N722);
xor XOR2_202 (N755, N125, N723);

endmodule

module c499_tb;

    // Inputs
    reg N1, N5, N9, N13, N17, N21, N25, N29, N33, N37;
    reg N41, N45, N49, N53, N57, N61, N65, N69, N73, N77;
    reg N81, N85, N89, N93, N97, N101, N105, N109, N113, N117;
    reg N121, N125, N129, N130, N131, N132, N133, N134, N135, N136;
    reg N137;

    // Outputs
    wire N250,N251,N252,N253,N254,N255,N256,N257,N258,N259,
     N260,N261,N262,N263,N264,N265,N266,N267,N268,N269,
     N270,N271,N272,N273,N274,N275,N276,N277,N278,N279,
     N280,N281,N282,N283,N284,N285,N286,N287,N288,N289,
     N290,N293,N296,N299,N302,N305,N308,N311,N314,N315,
     N316,N317,N318,N319,N320,N321,N338,N339,N340,N341,
     N342,N343,N344,N345,N346,N347,N348,N349,N350,N351,
     N352,N353,N354,N367,N380,N393,N406,N419,N432,N445,
     N554,N555,N556,N557,N558,N559,N560,N561,N562,N563,
     N564,N565,N566,N567,N568,N569,N570,N571,N572,N573,
     N574,N575,N576,N577,N578,N579,N580,N581,N582,N583,
     N584,N585,N586,N587,N588,N589,N590,N591,N592,N593,
     N594,N595,N596,N597,N598,N599,N600,N601,N602,N607,
     N620,N625,N630,N635,N640,N645,N650,N655,N692,N693,
     N694,N695,N696,N697,N698,N699,N700,N701,N702,N703,
     N704,N705,N706,N707,N708,N709,N710,N711,N712,N713,
     N714,N715,N716,N717,N718,N719,N720,N721,N722,N723;

    c499 uut (
        .N1(N1), .N5(N5), .N9(N9), .N13(N13), .N17(N17), .N21(N21), 
        .N25(N25), .N29(N29), .N33(N33), .N37(N37), .N41(N41), .N45(N45), 
        .N49(N49), .N53(N53), .N57(N57), .N61(N61), .N65(N65), .N69(N69), 
        .N73(N73), .N77(N77), .N81(N81), .N85(N85), .N89(N89), .N93(N93), 
        .N97(N97), .N101(N101), .N105(N105), .N109(N109), .N113(N113), 
        .N117(N117), .N121(N121), .N125(N125), .N129(N129), .N130(N130), 
        .N131(N131), .N132(N132), .N133(N133), .N134(N134), .N135(N135), 
        .N136(N136), .N137(N137),
        .N724(N724), .N725(N725), .N726(N726), .N727(N727), .N728(N728), 
        .N729(N729), .N730(N730), .N731(N731), .N732(N732), .N733(N733), 
        .N734(N734), .N735(N735), .N736(N736), .N737(N737), .N738(N738), 
        .N739(N739), .N740(N740), .N741(N741), .N742(N742), .N743(N743), 
        .N744(N744), .N745(N745), .N746(N746), .N747(N747), .N748(N748), 
        .N749(N749), .N750(N750), .N751(N751), .N752(N752), .N753(N753), 
        .N754(N754), .N755(N755)
    );

   //Verilog testing - fault free circuit

   reg [40:0] test_vectors[0:7]; 
    integer i;

    initial begin
        //test vectors
        test_vectors[0] = 41'b00000000000000000000000000000000000000000; // All zeros
        test_vectors[1] = 41'b11111111111111111111111111111111111111111; // All ones
        test_vectors[2] = 41'b01010101010101010101010101010101010101010; // Alternating 0s and 1s
        test_vectors[3] = 41'b10101010101010101010101010101010101010101; // Alternating 1s and 0s
        test_vectors[4] = 41'b11110000000011110000000011110000000011110; // Chunked pattern
        test_vectors[5] = 41'b00001111111100001111111100001111111100001; // Reverse chunked pattern
        test_vectors[6] = 41'b10000000000000000000000000000000000000001; // Leading and trailing 1
        test_vectors[7] = 41'b00011110000111100001111000011110000111100; // Midrange active bits

        for (i = 0; i < 8; i = i + 1) begin
            {N1, N5, N9, N13, N17, N21, N25, N29, N33, N37,
             N41, N45, N49, N53, N57, N61, N65, N69, N73, N77,
             N81, N85, N89, N93, N97, N101, N105, N109, N113, N117,
             N121, N125, N129, N130, N131, N132, N133, N134, N135, N136,
             N137} = test_vectors[i];

            #10;

            // Display results
            $display("Test Vector %d: %b", i, test_vectors[i]);
            $display("Outputs: N724=%b, N725=%b, N726=%b, N727=%b, N728=%b, N729=%b, N730=%b",
                     N724, N725, N726, N727, N728, N729, N730);
            $display("         N731=%b, N732=%b, N733=%b, N734=%b, N735=%b, N736=%b, N737=%b",
                     N731, N732, N733, N734, N735, N736, N737);
            $display("         N738=%b, N739=%b, N740=%b, N741=%b, N742=%b, N743=%b, N744=%b",
                     N738, N739, N740, N741, N742, N743, N744);
        end

    end


    reg [127:0] fault_list[0:127]; 
    reg [31:0] fault_free_outputs[0:31];
    reg fault_detected;
    reg [40:0] test_vector;

    initial begin
        //test vector
        test_vector = 41'b01010101010101010101010101010101010111111;

        //fault list
        fault_list[0] = "N740 stuck at 1";
        fault_list[1] = "N655 stuck at 1";
        fault_list[2] = "N635 stuck at 1";
        fault_list[3] = "N727 stuck at 0";
        fault_list[4] = "N701 stuck at 1";
        fault_list[5] = "N645 stuck at 1";
        fault_list[6] = "N692 stuck at 1";
        fault_list[7] = "N693 stuck at 1";
        fault_list[8] = "N89 stuck at 1";
        fault_list[9] = "N702 stuck at 1";
        fault_list[10] = "N738 stuck at 1";
        fault_list[11] = "N712 stuck at 1";
        fault_list[12] = "N599 stuck at 1";
        fault_list[13] = "N713 stuck at 1";
        fault_list[14] = "N753 stuck at 0";
        fault_list[15] = "N41 stuck at 1";
        fault_list[16] = "N737 stuck at 0";
        fault_list[17] = "N53 stuck at 0";
        fault_list[18] = "N745 stuck at 0";
        fault_list[19] = "N708 stuck at 1";
        fault_list[20] = "N723 stuck at 1";
        fault_list[21] = "N725 stuck at 0";
        fault_list[22] = "N707 stuck at 1";
        fault_list[23] = "N734 stuck at 1";
        fault_list[24] = "N748 stuck at 1";
        fault_list[25] = "N717 stuck at 1";
        fault_list[26] = "N630 stuck at 1";
        fault_list[27] = "N600 stuck at 1";
        fault_list[28] = "N695 stuck at 1";
        fault_list[29] = "N85 stuck at 0";
        fault_list[30] = "N697 stuck at 1";
        fault_list[31] = "N699 stuck at 1";
        fault_list[32] = "N57 stuck at 1";
        fault_list[33] = "N750 stuck at 1";
        fault_list[34] = "N121 stuck at 1";
        fault_list[35] = "N752 stuck at 1";
        fault_list[36] = "N730 stuck at 1";
        fault_list[37] = "N1 stuck at 1";
        fault_list[38] = "N77 stuck at 0";
        fault_list[39] = "N726 stuck at 1";
        fault_list[40] = "N598 stuck at 1";
        fault_list[41] = "N13 stuck at 0";
        fault_list[42] = "N706 stuck at 1";
        fault_list[43] = "N113 stuck at 1";
        fault_list[44] = "N720 stuck at 1";
        fault_list[45] = "N640 stuck at 1";
        fault_list[46] = "N732 stuck at 1";
        fault_list[47] = "N25 stuck at 1";
        fault_list[48] = "N733 stuck at 0";
        fault_list[49] = "N703 stuck at 1";
        fault_list[50] = "N735 stuck at 0";
        fault_list[51] = "N696 stuck at 1";
        fault_list[52] = "N731 stuck at 0";
        fault_list[53] = "N741 stuck at 0";
        fault_list[54] = "N37 stuck at 0";
        fault_list[55] = "N93 stuck at 0";
        fault_list[56] = "N650 stuck at 1";
        fault_list[57] = "N69 stuck at 0";
        fault_list[58] = "N117 stuck at 0";
        fault_list[59] = "N755 stuck at 0";
        fault_list[60] = "N728 stuck at 1";
        fault_list[61] = "N49 stuck at 1";
        fault_list[62] = "N21 stuck at 0";
        fault_list[63] = "N709 stuck at 1";
        fault_list[64] = "N620 stuck at 1";
        fault_list[65] = "N705 stuck at 1";
        fault_list[66] = "N714 stuck at 1";
        fault_list[67] = "N718 stuck at 1";
        fault_list[68] = "N721 stuck at 1";
        fault_list[69] = "N742 stuck at 1";
        fault_list[70] = "N73 stuck at 1";
        fault_list[71] = "N719 stuck at 1";
        fault_list[72] = "N125 stuck at 0";
        fault_list[73] = "N81 stuck at 1";
        fault_list[74] = "N17 stuck at 1";
        fault_list[75] = "N747 stuck at 0";
        fault_list[76] = "N715 stuck at 1";
        fault_list[77] = "N711 stuck at 1";
        fault_list[78] = "N97 stuck at 1";
        fault_list[79] = "N65 stuck at 1";
        fault_list[80] = "N45 stuck at 0";
        fault_list[81] = "N724 stuck at 1";
        fault_list[82] = "N61 stuck at 0";
        fault_list[83] = "N9 stuck at 1";
        fault_list[84] = "N710 stuck at 1";
        fault_list[85] = "N5 stuck at 0";
        fault_list[86] = "N607 stuck at 1";
        fault_list[87] = "N729 stuck at 0";
        fault_list[88] = "N700 stuck at 1";
        fault_list[89] = "N736 stuck at 1";
        fault_list[90] = "N29 stuck at 0";
        fault_list[91] = "N694 stuck at 1";
        fault_list[92] = "N625 stuck at 1";
        fault_list[93] = "N109 stuck at 0";
        fault_list[94] = "N33 stuck at 1";
        fault_list[95] = "N754 stuck at 1";
        fault_list[96] = "N601 stuck at 1";
        fault_list[97] = "N749 stuck at 0";
        fault_list[98] = "N698 stuck at 1";
        fault_list[99] = "N722 stuck at 1";
        fault_list[100] = "N739 stuck at 0";
        fault_list[101] = "N744 stuck at 1";
        fault_list[102] = "N105 stuck at 1";
        fault_list[103] = "N101 stuck at 0";
        fault_list[104] = "N751 stuck at 0";
        fault_list[105] = "N704 stuck at 1";
        fault_list[106] = "N746 stuck at 1";
        fault_list[107] = "N716 stuck at 1";
        fault_list[108] = "N743 stuck at 0";

        // Simulate fault-free circuit
        {N1, N5, N9, N13, N17, N21, N25, N29, N33, N37, N41, N45, N49, 
         N53, N57, N61, N65, N69, N73, N77, N81, N85, N89, N93, N97, 
         N101, N105, N109, N113, N117, N121, N125, N129, N130, N131, 
         N132, N133, N134, N135, N136, N137} = test_vector;

        #10; 

        // Capturing fault-free outputs
        fault_free_outputs[0] = N724;
        fault_free_outputs[1] = N725;
        fault_free_outputs[2] = N726;
        fault_free_outputs[3] = N727;
        fault_free_outputs[4] = N728;
        fault_free_outputs[5] = N729;
        fault_free_outputs[6] = N730;
        fault_free_outputs[7] = N731;
        fault_free_outputs[8] = N732;
        fault_free_outputs[9] = N733;
        fault_free_outputs[10] = N734;
        fault_free_outputs[11] = N735;
        fault_free_outputs[12] = N736;
        fault_free_outputs[13] = N737;
        fault_free_outputs[14] = N738;
        fault_free_outputs[15] = N739;
        fault_free_outputs[16] = N740;
        fault_free_outputs[17] = N741;
        fault_free_outputs[18] = N742;
        fault_free_outputs[19] = N743;
        fault_free_outputs[20] = N744;
        fault_free_outputs[21] = N745;
        fault_free_outputs[22] = N746;
        fault_free_outputs[23] = N747;
        fault_free_outputs[24] = N748;
        fault_free_outputs[25] = N749;
        fault_free_outputs[26] = N750;
        fault_free_outputs[27] = N751;
        fault_free_outputs[28] = N752;
        fault_free_outputs[29] = N753;
        fault_free_outputs[30] = N754;
        fault_free_outputs[31] = N755;

        // Iterating through faults
for (i = 0; i < 128; i = i + 1) begin
    $display("Testing fault: %s", fault_list[i]);

    case (fault_list[i])
        "N740 stuck at 1": force uut.N740 = 1;
        "N655 stuck at 1": force uut.N655 = 1;
        "N635 stuck at 1": force uut.N635 = 1;
        "N727 stuck at 0": force uut.N727 = 0;
        "N701 stuck at 1": force uut.N701 = 1;
        "N645 stuck at 1": force uut.N645 = 1;
        "N692 stuck at 1": force uut.N692 = 1;
        "N693 stuck at 1": force uut.N693 = 1;
        "N89 stuck at 1": force uut.N89 = 1;
        "N702 stuck at 1": force uut.N702 = 1;
        "N738 stuck at 1": force uut.N738 = 1;
        "N712 stuck at 1": force uut.N712 = 1;
        "N599 stuck at 1": force uut.N599 = 1;
        "N713 stuck at 1": force uut.N713 = 1;
        "N753 stuck at 0": force uut.N753 = 0;
        "N41 stuck at 1": force uut.N41 = 1;
        "N737 stuck at 0": force uut.N737 = 0;
        "N53 stuck at 0": force uut.N53 = 0;
        "N745 stuck at 0": force uut.N745 = 0;
        "N708 stuck at 1": force uut.N708 = 1;
        "N723 stuck at 1": force uut.N723 = 1;
        "N725 stuck at 0": force uut.N725 = 0;
        "N707 stuck at 1": force uut.N707 = 1;
        "N734 stuck at 1": force uut.N734 = 1;
        "N748 stuck at 1": force uut.N748 = 1;
        "N717 stuck at 1": force uut.N717 = 1;
        "N630 stuck at 1": force uut.N630 = 1;
        "N600 stuck at 1": force uut.N600 = 1;
        "N695 stuck at 1": force uut.N695 = 1;
        "N85 stuck at 0": force uut.N85 = 0;
        "N697 stuck at 1": force uut.N697 = 1;
        "N699 stuck at 1": force uut.N699 = 1;
        "N57 stuck at 1": force uut.N57 = 1;
        "N750 stuck at 1": force uut.N750 = 1;
        "N121 stuck at 1": force uut.N121 = 1;
        "N752 stuck at 1": force uut.N752 = 1;
        "N730 stuck at 1": force uut.N730 = 1;
        "N1 stuck at 1": force uut.N1 = 1;
        "N77 stuck at 0": force uut.N77 = 0;
        "N726 stuck at 1": force uut.N726 = 1;
        "N598 stuck at 1": force uut.N598 = 1;
        "N13 stuck at 0": force uut.N13 = 0;
        "N706 stuck at 1": force uut.N706 = 1;
        "N113 stuck at 1": force uut.N113 = 1;
        "N720 stuck at 1": force uut.N720 = 1;
        "N640 stuck at 1": force uut.N640 = 1;
        "N732 stuck at 1": force uut.N732 = 1;
        "N25 stuck at 1": force uut.N25 = 1;
        "N733 stuck at 0": force uut.N733 = 0;
        "N703 stuck at 1": force uut.N703 = 1;
        "N735 stuck at 0": force uut.N735 = 0;
        "N696 stuck at 1": force uut.N696 = 1;
        "N731 stuck at 0": force uut.N731 = 0;
        "N741 stuck at 0": force uut.N741 = 0;
        "N37 stuck at 0": force uut.N37 = 0;
        "N93 stuck at 0": force uut.N93 = 0;
        "N650 stuck at 1": force uut.N650 = 1;
        "N69 stuck at 0": force uut.N69 = 0;
        "N117 stuck at 0": force uut.N117 = 0;
        "N755 stuck at 0": force uut.N755 = 0;
        "N728 stuck at 1": force uut.N728 = 1;
        "N49 stuck at 1": force uut.N49 = 1;
        "N21 stuck at 0": force uut.N21 = 0;
        "N709 stuck at 1": force uut.N709 = 1;
        "N620 stuck at 1": force uut.N620 = 1;
        "N705 stuck at 1": force uut.N705 = 1;
        "N714 stuck at 1": force uut.N714 = 1;
        "N718 stuck at 1": force uut.N718 = 1;
        "N721 stuck at 1": force uut.N721 = 1;
        "N742 stuck at 1": force uut.N742 = 1;
        "N73 stuck at 1": force uut.N73 = 1;
        "N719 stuck at 1": force uut.N719 = 1;
        "N125 stuck at 0": force uut.N125 = 0;
        "N81 stuck at 1": force uut.N81 = 1;
        "N17 stuck at 1": force uut.N17 = 1;
        "N747 stuck at 0": force uut.N747 = 0;
        "N715 stuck at 1": force uut.N715 = 1;
        "N711 stuck at 1": force uut.N711 = 1;
        "N97 stuck at 1": force uut.N97 = 1;
        "N65 stuck at 1": force uut.N65 = 1;
        "N45 stuck at 0": force uut.N45 = 0;
        "N724 stuck at 1": force uut.N724 = 1;
        "N61 stuck at 0": force uut.N61 = 0;
        "N9 stuck at 1": force uut.N9 = 1;
        "N710 stuck at 1": force uut.N710 = 1;
        "N5 stuck at 0": force uut.N5 = 0;
        "N607 stuck at 1": force uut.N607 = 1;
        "N729 stuck at 0": force uut.N729 = 0;
        "N700 stuck at 1": force uut.N700 = 1;
        "N736 stuck at 1": force uut.N736 = 1;
        "N29 stuck at 0": force uut.N29 = 0;
        "N694 stuck at 1": force uut.N694 = 1;
        "N625 stuck at 1": force uut.N625 = 1;
        "N109 stuck at 0": force uut.N109 = 0;
        "N33 stuck at 1": force uut.N33 = 1;
        "N754 stuck at 1": force uut.N754 = 1;
        "N601 stuck at 1": force uut.N601 = 1;
        "N749 stuck at 0": force uut.N749 = 0;
        "N698 stuck at 1": force uut.N698 = 1;
        "N722 stuck at 1": force uut.N722 = 1;
        "N739 stuck at 0": force uut.N739 = 0;
        "N744 stuck at 1": force uut.N744 = 1;
        "N105 stuck at 1": force uut.N105 = 1;
        "N101 stuck at 0": force uut.N101 = 0;
        "N751 stuck at 0": force uut.N751 = 0;
        "N704 stuck at 1": force uut.N704 = 1;
        "N746 stuck at 1": force uut.N746 = 1;
        "N716 stuck at 1": force uut.N716 = 1;
        "N743 stuck at 0": force uut.N743 = 0;

        default:;
    endcase


            #10; 

            // Compare outputs
            fault_detected = 0;
            if (N724 !== fault_free_outputs[0]) fault_detected = 1;
            if (N725 !== fault_free_outputs[1]) fault_detected = 1;
            if (N726 !== fault_free_outputs[2]) fault_detected = 1;
            if (N727 !== fault_free_outputs[3]) fault_detected = 1;
            if (N728 !== fault_free_outputs[4]) fault_detected = 1;
            if (N729 !== fault_free_outputs[5]) fault_detected = 1;
            if (N730 !== fault_free_outputs[6]) fault_detected = 1;
            if (N731 !== fault_free_outputs[7]) fault_detected = 1;
            if (N732 !== fault_free_outputs[8]) fault_detected = 1;
            if (N733 !== fault_free_outputs[9]) fault_detected = 1;
            if (N734 !== fault_free_outputs[10]) fault_detected = 1;
            if (N735 !== fault_free_outputs[11]) fault_detected = 1;
            if (N736 !== fault_free_outputs[12]) fault_detected = 1;
            if (N737 !== fault_free_outputs[13]) fault_detected = 1;
            if (N738 !== fault_free_outputs[14]) fault_detected = 1;
            if (N739 !== fault_free_outputs[15]) fault_detected = 1;
            if (N740 !== fault_free_outputs[16]) fault_detected = 1;
            if (N741 !== fault_free_outputs[17]) fault_detected = 1;
            if (N742 !== fault_free_outputs[18]) fault_detected = 1;
            if (N743 !== fault_free_outputs[19]) fault_detected = 1;
            if (N744 !== fault_free_outputs[20]) fault_detected = 1;
            if (N745 !== fault_free_outputs[21]) fault_detected = 1;
            if (N746 !== fault_free_outputs[22]) fault_detected = 1;
            if (N747 !== fault_free_outputs[23]) fault_detected = 1;
            if (N748 !== fault_free_outputs[24]) fault_detected = 1;
            if (N749 !== fault_free_outputs[25]) fault_detected = 1;
            if (N750 !== fault_free_outputs[26]) fault_detected = 1;
            if (N751 !== fault_free_outputs[27]) fault_detected = 1;
            if (N752 !== fault_free_outputs[28]) fault_detected = 1;
            if (N753 !== fault_free_outputs[29]) fault_detected = 1;
            if (N754 !== fault_free_outputs[30]) fault_detected = 1;
            if (N755 !== fault_free_outputs[31]) fault_detected = 1;
          

            // Report results
            if (fault_detected)
                $display("Fault %s is DETECTED.", fault_list[i]);
            else
                $display("Fault %s is NOT detected.", fault_list[i]);

                // Release faults
                release uut.N740;
                release uut.N655;
                release uut.N635;
                release uut.N727;
                release uut.N701;
                release uut.N645;
                release uut.N692;
                release uut.N693;
                release uut.N89;
                release uut.N702;
                release uut.N738;
                release uut.N712;
                release uut.N599;
                release uut.N713;
                release uut.N753;
                release uut.N41;
                release uut.N737;
                release uut.N53;
                release uut.N745;
                release uut.N708;
                release uut.N723;
                release uut.N725;
                release uut.N707;
                release uut.N734;
                release uut.N748;
                release uut.N717;
                release uut.N630;
                release uut.N600;
                release uut.N695;
                release uut.N85;
                release uut.N697;
                release uut.N699;
                release uut.N57;
                release uut.N750;
                release uut.N121;
                release uut.N752;
                release uut.N730;
                release uut.N1;
                release uut.N77;
                release uut.N726;
                release uut.N598;
                release uut.N13;
                release uut.N706;
                release uut.N113;
                release uut.N720;
                release uut.N640;
                release uut.N732;
                release uut.N25;
                release uut.N733;
                release uut.N703;
                release uut.N735;
                release uut.N696;
                release uut.N731;
                release uut.N741;
                release uut.N37;
                release uut.N93;
                release uut.N650;
                release uut.N69;
                release uut.N117;
                release uut.N755;
                release uut.N728;
                release uut.N49;
                release uut.N21;
                release uut.N709;
                release uut.N620;
                release uut.N705;
                release uut.N714;
                release uut.N718;
                release uut.N721;
                release uut.N742;
                release uut.N73;
                release uut.N719;
                release uut.N125;
                release uut.N81;
                release uut.N17;
                release uut.N747;
                release uut.N715;
                release uut.N711;
                release uut.N97;
                release uut.N65;
                release uut.N45;
                release uut.N724;
                release uut.N61;
                release uut.N9;
                release uut.N710;
                release uut.N5;
                release uut.N607;
                release uut.N729;
                release uut.N700;
                release uut.N736;
                release uut.N29;
                release uut.N694;
                release uut.N625;
                release uut.N109;
                release uut.N33;
                release uut.N754;
                release uut.N601;
                release uut.N749;
                release uut.N698;
                release uut.N722;
                release uut.N739;
                release uut.N744;
                release uut.N105;
                release uut.N101;
                release uut.N751;
                release uut.N704;
                release uut.N746;
                release uut.N716;
                release uut.N743;

                 end

        $finish;
    end

endmodule