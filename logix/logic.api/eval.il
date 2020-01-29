// Z0.bit Z0.Logix.LogicOpApi::eval(Z0.UnaryBitLogicKind,Z0.bit)
// bit eval(UnaryBitLogicKind:byte kind, bit a)
// IL
bit eval(UnaryBitLogicKind:byte kind, bit a)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0018,IL_001E,IL_0025,IL_0027)
    IL_0016: br.s IL_002D
    IL_0018: call Z0.bit zfunc::get_off()
    IL_001D: ret
    IL_001E: ldarg.1
    IL_001F: call Z0.bit Z0.bit::not(Z0.bit)
    IL_0024: ret
    IL_0025: ldarg.1
    IL_0026: ret
    IL_0027: call Z0.bit zfunc::get_on()
    IL_002C: ret
    IL_002D: ldarg.0
    IL_002E: call System.String Z0.Logix.OpHelpers::sig(Z0.UnaryBitLogicKind)
    IL_0033: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0038: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.Logix.LogicOpApi::eval(Z0.BinaryBitLogicKind,Z0.bit,Z0.bit)
// bit eval(BinaryBitLogicKind:byte kind, bit a, bit b)
// IL
bit eval(BinaryBitLogicKind:byte kind, bit a, bit b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_009B,IL_0093,IL_00A3,IL_007B,IL_006B,IL_0073,IL_0083,IL_00B3,IL_008B,IL_00AB,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call Z0.bit Z0.Logix.LogicOps::true(Z0.bit,Z0.bit)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call Z0.bit Z0.Logix.LogicOps::false(Z0.bit,Z0.bit)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call Z0.bit Z0.Logix.LogicOps::nand(Z0.bit,Z0.bit)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call Z0.bit Z0.Logix.LogicOps::or(Z0.bit,Z0.bit)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call Z0.bit Z0.Logix.LogicOps::nor(Z0.bit,Z0.bit)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call Z0.bit Z0.Logix.LogicOps::xor(Z0.bit,Z0.bit)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call Z0.bit Z0.Logix.LogicOps::xnor(Z0.bit,Z0.bit)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call Z0.bit Z0.Logix.LogicOps::impl(Z0.bit,Z0.bit)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call Z0.bit Z0.Logix.LogicOps::nonimpl(Z0.bit,Z0.bit)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call Z0.bit Z0.Logix.LogicOps::left(Z0.bit,Z0.bit)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call Z0.bit Z0.Logix.LogicOps::right(Z0.bit,Z0.bit)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call Z0.bit Z0.Logix.LogicOps::lnot(Z0.bit,Z0.bit)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call Z0.bit Z0.Logix.LogicOps::rnot(Z0.bit,Z0.bit)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call Z0.bit Z0.Logix.LogicOps::cimpl(Z0.bit,Z0.bit)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call Z0.bit Z0.Logix.LogicOps::cnonimpl(Z0.bit,Z0.bit)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.Logix.LogicOpApi::eval(Z0.TernaryBitLogicKind,Z0.bit,Z0.bit,Z0.bit)
// bit eval(TernaryBitLogicKind:byte kind, bit a, bit b, bit c)
// IL
bit eval(TernaryBitLogicKind:byte kind, bit a, bit b, bit c)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_01A1,IL_01AA,IL_01B3,IL_01BC,IL_01C5,IL_01CE,IL_01D7,IL_01E0,IL_01E9,IL_01F2,IL_01FB,IL_0204,IL_020D,IL_0216,IL_021F,IL_0228,IL_0231,IL_023A,IL_0243,IL_024C,IL_0255,IL_025E,IL_0267,IL_0270,IL_0279,IL_0282,IL_028B,IL_0294,IL_029D,IL_02A6,IL_02AF,IL_02B8,IL_02C1,IL_02CA,IL_02D3,IL_02DC,IL_02E5,IL_02EE,IL_02F7,IL_0300,IL_0309,IL_0312,IL_031B,IL_0324,IL_032D,IL_0336,IL_033F,IL_0348,IL_0351,IL_035A,IL_0363,IL_036C,IL_0375,IL_037E,IL_0387,IL_0390,IL_0399,IL_03A2,IL_03AB,IL_03B4,IL_03BD,IL_03C6,IL_03CF,IL_03D8,IL_03E1,IL_03EA,IL_03F3,IL_03FC,IL_0405,IL_040E,IL_0417,IL_0420,IL_0429,IL_0432,IL_043B,IL_0444,IL_044D,IL_0456,IL_045F,IL_0468,IL_0471,IL_047A,IL_0483,IL_048C,IL_0495,IL_049E,IL_04A7,IL_04B0,IL_04B9,IL_04C2,IL_04CB,IL_04D4,IL_04DD,IL_04E6,IL_04EF,IL_04F8)
    IL_0186: ldarg.0
    IL_0187: ldc.i4 202
    IL_018C: beq IL_0501
    IL_0191: ldarg.0
    IL_0192: ldc.i4 255
    IL_0197: beq IL_050A
    IL_019C: br IL_0513
    IL_01A1: ldarg.1
    IL_01A2: ldarg.2
    IL_01A3: ldarg.3
    IL_01A4: call Z0.bit Z0.Logix.LogicOps::false(Z0.bit,Z0.bit,Z0.bit)
    IL_01A9: ret
    IL_01AA: ldarg.1
    IL_01AB: ldarg.2
    IL_01AC: ldarg.3
    IL_01AD: call Z0.bit Z0.Logix.LogicOps::f01(Z0.bit,Z0.bit,Z0.bit)
    IL_01B2: ret
    IL_01B3: ldarg.1
    IL_01B4: ldarg.2
    IL_01B5: ldarg.3
    IL_01B6: call Z0.bit Z0.Logix.LogicOps::f02(Z0.bit,Z0.bit,Z0.bit)
    IL_01BB: ret
    IL_01BC: ldarg.1
    IL_01BD: ldarg.2
    IL_01BE: ldarg.3
    IL_01BF: call Z0.bit Z0.Logix.LogicOps::f03(Z0.bit,Z0.bit,Z0.bit)
    IL_01C4: ret
    IL_01C5: ldarg.1
    IL_01C6: ldarg.2
    IL_01C7: ldarg.3
    IL_01C8: call Z0.bit Z0.Logix.LogicOps::f04(Z0.bit,Z0.bit,Z0.bit)
    IL_01CD: ret
    IL_01CE: ldarg.1
    IL_01CF: ldarg.2
    IL_01D0: ldarg.3
    IL_01D1: call Z0.bit Z0.Logix.LogicOps::f05(Z0.bit,Z0.bit,Z0.bit)
    IL_01D6: ret
    IL_01D7: ldarg.1
    IL_01D8: ldarg.2
    IL_01D9: ldarg.3
    IL_01DA: call Z0.bit Z0.Logix.LogicOps::f06(Z0.bit,Z0.bit,Z0.bit)
    IL_01DF: ret
    IL_01E0: ldarg.1
    IL_01E1: ldarg.2
    IL_01E2: ldarg.3
    IL_01E3: call Z0.bit Z0.Logix.LogicOps::f07(Z0.bit,Z0.bit,Z0.bit)
    IL_01E8: ret
    IL_01E9: ldarg.1
    IL_01EA: ldarg.2
    IL_01EB: ldarg.3
    IL_01EC: call Z0.bit Z0.Logix.LogicOps::f08(Z0.bit,Z0.bit,Z0.bit)
    IL_01F1: ret
    IL_01F2: ldarg.1
    IL_01F3: ldarg.2
    IL_01F4: ldarg.3
    IL_01F5: call Z0.bit Z0.Logix.LogicOps::f09(Z0.bit,Z0.bit,Z0.bit)
    IL_01FA: ret
    IL_01FB: ldarg.1
    IL_01FC: ldarg.2
    IL_01FD: ldarg.3
    IL_01FE: call Z0.bit Z0.Logix.LogicOps::f0a(Z0.bit,Z0.bit,Z0.bit)
    IL_0203: ret
    IL_0204: ldarg.1
    IL_0205: ldarg.2
    IL_0206: ldarg.3
    IL_0207: call Z0.bit Z0.Logix.LogicOps::f0b(Z0.bit,Z0.bit,Z0.bit)
    IL_020C: ret
    IL_020D: ldarg.1
    IL_020E: ldarg.2
    IL_020F: ldarg.3
    IL_0210: call Z0.bit Z0.Logix.LogicOps::f0c(Z0.bit,Z0.bit,Z0.bit)
    IL_0215: ret
    IL_0216: ldarg.1
    IL_0217: ldarg.2
    IL_0218: ldarg.3
    IL_0219: call Z0.bit Z0.Logix.LogicOps::f0d(Z0.bit,Z0.bit,Z0.bit)
    IL_021E: ret
    IL_021F: ldarg.1
    IL_0220: ldarg.2
    IL_0221: ldarg.3
    IL_0222: call Z0.bit Z0.Logix.LogicOps::f0e(Z0.bit,Z0.bit,Z0.bit)
    IL_0227: ret
    IL_0228: ldarg.1
    IL_0229: ldarg.2
    IL_022A: ldarg.3
    IL_022B: call Z0.bit Z0.Logix.LogicOps::f0f(Z0.bit,Z0.bit,Z0.bit)
    IL_0230: ret
    IL_0231: ldarg.1
    IL_0232: ldarg.2
    IL_0233: ldarg.3
    IL_0234: call Z0.bit Z0.Logix.LogicOps::f10(Z0.bit,Z0.bit,Z0.bit)
    IL_0239: ret
    IL_023A: ldarg.1
    IL_023B: ldarg.2
    IL_023C: ldarg.3
    IL_023D: call Z0.bit Z0.Logix.LogicOps::f11(Z0.bit,Z0.bit,Z0.bit)
    IL_0242: ret
    IL_0243: ldarg.1
    IL_0244: ldarg.2
    IL_0245: ldarg.3
    IL_0246: call Z0.bit Z0.Logix.LogicOps::f12(Z0.bit,Z0.bit,Z0.bit)
    IL_024B: ret
    IL_024C: ldarg.1
    IL_024D: ldarg.2
    IL_024E: ldarg.3
    IL_024F: call Z0.bit Z0.Logix.LogicOps::f13(Z0.bit,Z0.bit,Z0.bit)
    IL_0254: ret
    IL_0255: ldarg.1
    IL_0256: ldarg.2
    IL_0257: ldarg.3
    IL_0258: call Z0.bit Z0.Logix.LogicOps::f14(Z0.bit,Z0.bit,Z0.bit)
    IL_025D: ret
    IL_025E: ldarg.1
    IL_025F: ldarg.2
    IL_0260: ldarg.3
    IL_0261: call Z0.bit Z0.Logix.LogicOps::f15(Z0.bit,Z0.bit,Z0.bit)
    IL_0266: ret
    IL_0267: ldarg.1
    IL_0268: ldarg.2
    IL_0269: ldarg.3
    IL_026A: call Z0.bit Z0.Logix.LogicOps::f16(Z0.bit,Z0.bit,Z0.bit)
    IL_026F: ret
    IL_0270: ldarg.1
    IL_0271: ldarg.2
    IL_0272: ldarg.3
    IL_0273: call Z0.bit Z0.Logix.LogicOps::f17(Z0.bit,Z0.bit,Z0.bit)
    IL_0278: ret
    IL_0279: ldarg.1
    IL_027A: ldarg.2
    IL_027B: ldarg.3
    IL_027C: call Z0.bit Z0.Logix.LogicOps::f18(Z0.bit,Z0.bit,Z0.bit)
    IL_0281: ret
    IL_0282: ldarg.1
    IL_0283: ldarg.2
    IL_0284: ldarg.3
    IL_0285: call Z0.bit Z0.Logix.LogicOps::f19(Z0.bit,Z0.bit,Z0.bit)
    IL_028A: ret
    IL_028B: ldarg.1
    IL_028C: ldarg.2
    IL_028D: ldarg.3
    IL_028E: call Z0.bit Z0.Logix.LogicOps::f1a(Z0.bit,Z0.bit,Z0.bit)
    IL_0293: ret
    IL_0294: ldarg.1
    IL_0295: ldarg.2
    IL_0296: ldarg.3
    IL_0297: call Z0.bit Z0.Logix.LogicOps::f1b(Z0.bit,Z0.bit,Z0.bit)
    IL_029C: ret
    IL_029D: ldarg.1
    IL_029E: ldarg.2
    IL_029F: ldarg.3
    IL_02A0: call Z0.bit Z0.Logix.LogicOps::f1c(Z0.bit,Z0.bit,Z0.bit)
    IL_02A5: ret
    IL_02A6: ldarg.1
    IL_02A7: ldarg.2
    IL_02A8: ldarg.3
    IL_02A9: call Z0.bit Z0.Logix.LogicOps::f1d(Z0.bit,Z0.bit,Z0.bit)
    IL_02AE: ret
    IL_02AF: ldarg.1
    IL_02B0: ldarg.2
    IL_02B1: ldarg.3
    IL_02B2: call Z0.bit Z0.Logix.LogicOps::f1e(Z0.bit,Z0.bit,Z0.bit)
    IL_02B7: ret
    IL_02B8: ldarg.1
    IL_02B9: ldarg.2
    IL_02BA: ldarg.3
    IL_02BB: call Z0.bit Z0.Logix.LogicOps::f1f(Z0.bit,Z0.bit,Z0.bit)
    IL_02C0: ret
    IL_02C1: ldarg.1
    IL_02C2: ldarg.2
    IL_02C3: ldarg.3
    IL_02C4: call Z0.bit Z0.Logix.LogicOps::f20(Z0.bit,Z0.bit,Z0.bit)
    IL_02C9: ret
    IL_02CA: ldarg.1
    IL_02CB: ldarg.2
    IL_02CC: ldarg.3
    IL_02CD: call Z0.bit Z0.Logix.LogicOps::f21(Z0.bit,Z0.bit,Z0.bit)
    IL_02D2: ret
    IL_02D3: ldarg.1
    IL_02D4: ldarg.2
    IL_02D5: ldarg.3
    IL_02D6: call Z0.bit Z0.Logix.LogicOps::f22(Z0.bit,Z0.bit,Z0.bit)
    IL_02DB: ret
    IL_02DC: ldarg.1
    IL_02DD: ldarg.2
    IL_02DE: ldarg.3
    IL_02DF: call Z0.bit Z0.Logix.LogicOps::f23(Z0.bit,Z0.bit,Z0.bit)
    IL_02E4: ret
    IL_02E5: ldarg.1
    IL_02E6: ldarg.2
    IL_02E7: ldarg.3
    IL_02E8: call Z0.bit Z0.Logix.LogicOps::f24(Z0.bit,Z0.bit,Z0.bit)
    IL_02ED: ret
    IL_02EE: ldarg.1
    IL_02EF: ldarg.2
    IL_02F0: ldarg.3
    IL_02F1: call Z0.bit Z0.Logix.LogicOps::f25(Z0.bit,Z0.bit,Z0.bit)
    IL_02F6: ret
    IL_02F7: ldarg.1
    IL_02F8: ldarg.2
    IL_02F9: ldarg.3
    IL_02FA: call Z0.bit Z0.Logix.LogicOps::f26(Z0.bit,Z0.bit,Z0.bit)
    IL_02FF: ret
    IL_0300: ldarg.1
    IL_0301: ldarg.2
    IL_0302: ldarg.3
    IL_0303: call Z0.bit Z0.Logix.LogicOps::f27(Z0.bit,Z0.bit,Z0.bit)
    IL_0308: ret
    IL_0309: ldarg.1
    IL_030A: ldarg.2
    IL_030B: ldarg.3
    IL_030C: call Z0.bit Z0.Logix.LogicOps::f28(Z0.bit,Z0.bit,Z0.bit)
    IL_0311: ret
    IL_0312: ldarg.1
    IL_0313: ldarg.2
    IL_0314: ldarg.3
    IL_0315: call Z0.bit Z0.Logix.LogicOps::f29(Z0.bit,Z0.bit,Z0.bit)
    IL_031A: ret
    IL_031B: ldarg.1
    IL_031C: ldarg.2
    IL_031D: ldarg.3
    IL_031E: call Z0.bit Z0.Logix.LogicOps::f2a(Z0.bit,Z0.bit,Z0.bit)
    IL_0323: ret
    IL_0324: ldarg.1
    IL_0325: ldarg.2
    IL_0326: ldarg.3
    IL_0327: call Z0.bit Z0.Logix.LogicOps::f2b(Z0.bit,Z0.bit,Z0.bit)
    IL_032C: ret
    IL_032D: ldarg.1
    IL_032E: ldarg.2
    IL_032F: ldarg.3
    IL_0330: call Z0.bit Z0.Logix.LogicOps::f2c(Z0.bit,Z0.bit,Z0.bit)
    IL_0335: ret
    IL_0336: ldarg.1
    IL_0337: ldarg.2
    IL_0338: ldarg.3
    IL_0339: call Z0.bit Z0.Logix.LogicOps::f2d(Z0.bit,Z0.bit,Z0.bit)
    IL_033E: ret
    IL_033F: ldarg.1
    IL_0340: ldarg.2
    IL_0341: ldarg.3
    IL_0342: call Z0.bit Z0.Logix.LogicOps::f2e(Z0.bit,Z0.bit,Z0.bit)
    IL_0347: ret
    IL_0348: ldarg.1
    IL_0349: ldarg.2
    IL_034A: ldarg.3
    IL_034B: call Z0.bit Z0.Logix.LogicOps::f2f(Z0.bit,Z0.bit,Z0.bit)
    IL_0350: ret
    IL_0351: ldarg.1
    IL_0352: ldarg.2
    IL_0353: ldarg.3
    IL_0354: call Z0.bit Z0.Logix.LogicOps::f30(Z0.bit,Z0.bit,Z0.bit)
    IL_0359: ret
    IL_035A: ldarg.1
    IL_035B: ldarg.2
    IL_035C: ldarg.3
    IL_035D: call Z0.bit Z0.Logix.LogicOps::f31(Z0.bit,Z0.bit,Z0.bit)
    IL_0362: ret
    IL_0363: ldarg.1
    IL_0364: ldarg.2
    IL_0365: ldarg.3
    IL_0366: call Z0.bit Z0.Logix.LogicOps::f32(Z0.bit,Z0.bit,Z0.bit)
    IL_036B: ret
    IL_036C: ldarg.1
    IL_036D: ldarg.2
    IL_036E: ldarg.3
    IL_036F: call Z0.bit Z0.Logix.LogicOps::f33(Z0.bit,Z0.bit,Z0.bit)
    IL_0374: ret
    IL_0375: ldarg.1
    IL_0376: ldarg.2
    IL_0377: ldarg.3
    IL_0378: call Z0.bit Z0.Logix.LogicOps::f34(Z0.bit,Z0.bit,Z0.bit)
    IL_037D: ret
    IL_037E: ldarg.1
    IL_037F: ldarg.2
    IL_0380: ldarg.3
    IL_0381: call Z0.bit Z0.Logix.LogicOps::f35(Z0.bit,Z0.bit,Z0.bit)
    IL_0386: ret
    IL_0387: ldarg.1
    IL_0388: ldarg.2
    IL_0389: ldarg.3
    IL_038A: call Z0.bit Z0.Logix.LogicOps::f36(Z0.bit,Z0.bit,Z0.bit)
    IL_038F: ret
    IL_0390: ldarg.1
    IL_0391: ldarg.2
    IL_0392: ldarg.3
    IL_0393: call Z0.bit Z0.Logix.LogicOps::f37(Z0.bit,Z0.bit,Z0.bit)
    IL_0398: ret
    IL_0399: ldarg.1
    IL_039A: ldarg.2
    IL_039B: ldarg.3
    IL_039C: call Z0.bit Z0.Logix.LogicOps::f38(Z0.bit,Z0.bit,Z0.bit)
    IL_03A1: ret
    IL_03A2: ldarg.1
    IL_03A3: ldarg.2
    IL_03A4: ldarg.3
    IL_03A5: call Z0.bit Z0.Logix.LogicOps::f39(Z0.bit,Z0.bit,Z0.bit)
    IL_03AA: ret
    IL_03AB: ldarg.1
    IL_03AC: ldarg.2
    IL_03AD: ldarg.3
    IL_03AE: call Z0.bit Z0.Logix.LogicOps::f3a(Z0.bit,Z0.bit,Z0.bit)
    IL_03B3: ret
    IL_03B4: ldarg.1
    IL_03B5: ldarg.2
    IL_03B6: ldarg.3
    IL_03B7: call Z0.bit Z0.Logix.LogicOps::f3b(Z0.bit,Z0.bit,Z0.bit)
    IL_03BC: ret
    IL_03BD: ldarg.1
    IL_03BE: ldarg.2
    IL_03BF: ldarg.3
    IL_03C0: call Z0.bit Z0.Logix.LogicOps::f3c(Z0.bit,Z0.bit,Z0.bit)
    IL_03C5: ret
    IL_03C6: ldarg.1
    IL_03C7: ldarg.2
    IL_03C8: ldarg.3
    IL_03C9: call Z0.bit Z0.Logix.LogicOps::f3d(Z0.bit,Z0.bit,Z0.bit)
    IL_03CE: ret
    IL_03CF: ldarg.1
    IL_03D0: ldarg.2
    IL_03D1: ldarg.3
    IL_03D2: call Z0.bit Z0.Logix.LogicOps::f3e(Z0.bit,Z0.bit,Z0.bit)
    IL_03D7: ret
    IL_03D8: ldarg.1
    IL_03D9: ldarg.2
    IL_03DA: ldarg.3
    IL_03DB: call Z0.bit Z0.Logix.LogicOps::f3f(Z0.bit,Z0.bit,Z0.bit)
    IL_03E0: ret
    IL_03E1: ldarg.1
    IL_03E2: ldarg.2
    IL_03E3: ldarg.3
    IL_03E4: call Z0.bit Z0.Logix.LogicOps::f40(Z0.bit,Z0.bit,Z0.bit)
    IL_03E9: ret
    IL_03EA: ldarg.1
    IL_03EB: ldarg.2
    IL_03EC: ldarg.3
    IL_03ED: call Z0.bit Z0.Logix.LogicOps::f41(Z0.bit,Z0.bit,Z0.bit)
    IL_03F2: ret
    IL_03F3: ldarg.1
    IL_03F4: ldarg.2
    IL_03F5: ldarg.3
    IL_03F6: call Z0.bit Z0.Logix.LogicOps::f42(Z0.bit,Z0.bit,Z0.bit)
    IL_03FB: ret
    IL_03FC: ldarg.1
    IL_03FD: ldarg.2
    IL_03FE: ldarg.3
    IL_03FF: call Z0.bit Z0.Logix.LogicOps::f43(Z0.bit,Z0.bit,Z0.bit)
    IL_0404: ret
    IL_0405: ldarg.1
    IL_0406: ldarg.2
    IL_0407: ldarg.3
    IL_0408: call Z0.bit Z0.Logix.LogicOps::f44(Z0.bit,Z0.bit,Z0.bit)
    IL_040D: ret
    IL_040E: ldarg.1
    IL_040F: ldarg.2
    IL_0410: ldarg.3
    IL_0411: call Z0.bit Z0.Logix.LogicOps::f45(Z0.bit,Z0.bit,Z0.bit)
    IL_0416: ret
    IL_0417: ldarg.1
    IL_0418: ldarg.2
    IL_0419: ldarg.3
    IL_041A: call Z0.bit Z0.Logix.LogicOps::f46(Z0.bit,Z0.bit,Z0.bit)
    IL_041F: ret
    IL_0420: ldarg.1
    IL_0421: ldarg.2
    IL_0422: ldarg.3
    IL_0423: call Z0.bit Z0.Logix.LogicOps::f47(Z0.bit,Z0.bit,Z0.bit)
    IL_0428: ret
    IL_0429: ldarg.1
    IL_042A: ldarg.2
    IL_042B: ldarg.3
    IL_042C: call Z0.bit Z0.Logix.LogicOps::f48(Z0.bit,Z0.bit,Z0.bit)
    IL_0431: ret
    IL_0432: ldarg.1
    IL_0433: ldarg.2
    IL_0434: ldarg.3
    IL_0435: call Z0.bit Z0.Logix.LogicOps::f49(Z0.bit,Z0.bit,Z0.bit)
    IL_043A: ret
    IL_043B: ldarg.1
    IL_043C: ldarg.2
    IL_043D: ldarg.3
    IL_043E: call Z0.bit Z0.Logix.LogicOps::f4a(Z0.bit,Z0.bit,Z0.bit)
    IL_0443: ret
    IL_0444: ldarg.1
    IL_0445: ldarg.2
    IL_0446: ldarg.3
    IL_0447: call Z0.bit Z0.Logix.LogicOps::f4b(Z0.bit,Z0.bit,Z0.bit)
    IL_044C: ret
    IL_044D: ldarg.1
    IL_044E: ldarg.2
    IL_044F: ldarg.3
    IL_0450: call Z0.bit Z0.Logix.LogicOps::f4c(Z0.bit,Z0.bit,Z0.bit)
    IL_0455: ret
    IL_0456: ldarg.1
    IL_0457: ldarg.2
    IL_0458: ldarg.3
    IL_0459: call Z0.bit Z0.Logix.LogicOps::f4d(Z0.bit,Z0.bit,Z0.bit)
    IL_045E: ret
    IL_045F: ldarg.1
    IL_0460: ldarg.2
    IL_0461: ldarg.3
    IL_0462: call Z0.bit Z0.Logix.LogicOps::f4e(Z0.bit,Z0.bit,Z0.bit)
    IL_0467: ret
    IL_0468: ldarg.1
    IL_0469: ldarg.2
    IL_046A: ldarg.3
    IL_046B: call Z0.bit Z0.Logix.LogicOps::f4f(Z0.bit,Z0.bit,Z0.bit)
    IL_0470: ret
    IL_0471: ldarg.1
    IL_0472: ldarg.2
    IL_0473: ldarg.3
    IL_0474: call Z0.bit Z0.Logix.LogicOps::f50(Z0.bit,Z0.bit,Z0.bit)
    IL_0479: ret
    IL_047A: ldarg.1
    IL_047B: ldarg.2
    IL_047C: ldarg.3
    IL_047D: call Z0.bit Z0.Logix.LogicOps::f51(Z0.bit,Z0.bit,Z0.bit)
    IL_0482: ret
    IL_0483: ldarg.1
    IL_0484: ldarg.2
    IL_0485: ldarg.3
    IL_0486: call Z0.bit Z0.Logix.LogicOps::f52(Z0.bit,Z0.bit,Z0.bit)
    IL_048B: ret
    IL_048C: ldarg.1
    IL_048D: ldarg.2
    IL_048E: ldarg.3
    IL_048F: call Z0.bit Z0.Logix.LogicOps::f53(Z0.bit,Z0.bit,Z0.bit)
    IL_0494: ret
    IL_0495: ldarg.1
    IL_0496: ldarg.2
    IL_0497: ldarg.3
    IL_0498: call Z0.bit Z0.Logix.LogicOps::f54(Z0.bit,Z0.bit,Z0.bit)
    IL_049D: ret
    IL_049E: ldarg.1
    IL_049F: ldarg.2
    IL_04A0: ldarg.3
    IL_04A1: call Z0.bit Z0.Logix.LogicOps::f55(Z0.bit,Z0.bit,Z0.bit)
    IL_04A6: ret
    IL_04A7: ldarg.1
    IL_04A8: ldarg.2
    IL_04A9: ldarg.3
    IL_04AA: call Z0.bit Z0.Logix.LogicOps::f56(Z0.bit,Z0.bit,Z0.bit)
    IL_04AF: ret
    IL_04B0: ldarg.1
    IL_04B1: ldarg.2
    IL_04B2: ldarg.3
    IL_04B3: call Z0.bit Z0.Logix.LogicOps::f57(Z0.bit,Z0.bit,Z0.bit)
    IL_04B8: ret
    IL_04B9: ldarg.1
    IL_04BA: ldarg.2
    IL_04BB: ldarg.3
    IL_04BC: call Z0.bit Z0.Logix.LogicOps::f58(Z0.bit,Z0.bit,Z0.bit)
    IL_04C1: ret
    IL_04C2: ldarg.1
    IL_04C3: ldarg.2
    IL_04C4: ldarg.3
    IL_04C5: call Z0.bit Z0.Logix.LogicOps::f59(Z0.bit,Z0.bit,Z0.bit)
    IL_04CA: ret
    IL_04CB: ldarg.1
    IL_04CC: ldarg.2
    IL_04CD: ldarg.3
    IL_04CE: call Z0.bit Z0.Logix.LogicOps::f5a(Z0.bit,Z0.bit,Z0.bit)
    IL_04D3: ret
    IL_04D4: ldarg.1
    IL_04D5: ldarg.2
    IL_04D6: ldarg.3
    IL_04D7: call Z0.bit Z0.Logix.LogicOps::f5b(Z0.bit,Z0.bit,Z0.bit)
    IL_04DC: ret
    IL_04DD: ldarg.1
    IL_04DE: ldarg.2
    IL_04DF: ldarg.3
    IL_04E0: call Z0.bit Z0.Logix.LogicOps::f5c(Z0.bit,Z0.bit,Z0.bit)
    IL_04E5: ret
    IL_04E6: ldarg.1
    IL_04E7: ldarg.2
    IL_04E8: ldarg.3
    IL_04E9: call Z0.bit Z0.Logix.LogicOps::f5d(Z0.bit,Z0.bit,Z0.bit)
    IL_04EE: ret
    IL_04EF: ldarg.1
    IL_04F0: ldarg.2
    IL_04F1: ldarg.3
    IL_04F2: call Z0.bit Z0.Logix.LogicOps::f5e(Z0.bit,Z0.bit,Z0.bit)
    IL_04F7: ret
    IL_04F8: ldarg.1
    IL_04F9: ldarg.2
    IL_04FA: ldarg.3
    IL_04FB: call Z0.bit Z0.Logix.LogicOps::f5f(Z0.bit,Z0.bit,Z0.bit)
    IL_0500: ret
    IL_0501: ldarg.1
    IL_0502: ldarg.2
    IL_0503: ldarg.3
    IL_0504: call Z0.bit Z0.Logix.LogicOps::select(Z0.bit,Z0.bit,Z0.bit)
    IL_0509: ret
    IL_050A: ldarg.1
    IL_050B: ldarg.2
    IL_050C: ldarg.3
    IL_050D: call Z0.bit Z0.Logix.LogicOps::f5a(Z0.bit,Z0.bit,Z0.bit)
    IL_0512: ret
    IL_0513: ldarg.0
    IL_0514: call System.String Z0.Logix.OpHelpers::sig(Z0.TernaryBitLogicKind)
    IL_0519: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_051E: throw
}
------------------------------------------------------------------------------------------------------------------------
