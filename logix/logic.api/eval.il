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
