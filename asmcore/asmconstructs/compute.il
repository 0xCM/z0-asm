// System.UInt32 Z0.AsmSpecs.AsmConstructs::compute_32u(Z0.BinaryBitLogicKind,System.UInt32,System.UInt32)
// uint compute_32u(BinaryBitLogicKind:byte op, uint a, uint b)
// NoInlining
uint compute_32u(BinaryBitLogicKind:byte op, uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_00D5,IL_004B,IL_00A8,IL_00C4,IL_0094,IL_00C8,IL_0062,IL_0058,IL_0076,IL_0080,IL_00BB,IL_008A,IL_00B2,IL_009E,IL_006C,IL_00CC)
    IL_0046: br IL_00DE
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call System.UInt32 Z0.math::and(System.UInt32,System.UInt32)
    IL_0052: stloc.0
    IL_0053: br IL_00E0
    IL_0058: ldarg.1
    IL_0059: ldarg.2
    IL_005A: call System.UInt32 Z0.math::or(System.UInt32,System.UInt32)
    IL_005F: stloc.0
    IL_0060: br.s IL_00E0
    IL_0062: ldarg.1
    IL_0063: ldarg.2
    IL_0064: call System.UInt32 Z0.math::xor(System.UInt32,System.UInt32)
    IL_0069: stloc.0
    IL_006A: br.s IL_00E0
    IL_006C: ldarg.1
    IL_006D: ldarg.2
    IL_006E: call System.UInt32 Z0.math::nand(System.UInt32,System.UInt32)
    IL_0073: stloc.0
    IL_0074: br.s IL_00E0
    IL_0076: ldarg.1
    IL_0077: ldarg.2
    IL_0078: call System.UInt32 Z0.math::nor(System.UInt32,System.UInt32)
    IL_007D: stloc.0
    IL_007E: br.s IL_00E0
    IL_0080: ldarg.1
    IL_0081: ldarg.2
    IL_0082: call System.UInt32 Z0.math::xnor(System.UInt32,System.UInt32)
    IL_0087: stloc.0
    IL_0088: br.s IL_00E0
    IL_008A: ldarg.1
    IL_008B: ldarg.2
    IL_008C: call System.UInt32 Z0.math::impl(System.UInt32,System.UInt32)
    IL_0091: stloc.0
    IL_0092: br.s IL_00E0
    IL_0094: ldarg.1
    IL_0095: ldarg.2
    IL_0096: call System.UInt32 Z0.math::nonimpl(System.UInt32,System.UInt32)
    IL_009B: stloc.0
    IL_009C: br.s IL_00E0
    IL_009E: ldarg.1
    IL_009F: ldarg.2
    IL_00A0: call System.UInt32 Z0.math::cimpl(System.UInt32,System.UInt32)
    IL_00A5: stloc.0
    IL_00A6: br.s IL_00E0
    IL_00A8: ldarg.1
    IL_00A9: ldarg.2
    IL_00AA: call System.UInt32 Z0.math::cnonimpl(System.UInt32,System.UInt32)
    IL_00AF: stloc.0
    IL_00B0: br.s IL_00E0
    IL_00B2: ldarg.1
    IL_00B3: call System.UInt32 Z0.math::not(System.UInt32)
    IL_00B8: stloc.0
    IL_00B9: br.s IL_00E0
    IL_00BB: ldarg.2
    IL_00BC: call System.UInt32 Z0.math::not(System.UInt32)
    IL_00C1: stloc.0
    IL_00C2: br.s IL_00E0
    IL_00C4: ldarg.1
    IL_00C5: stloc.0
    IL_00C6: br.s IL_00E0
    IL_00C8: ldarg.2
    IL_00C9: stloc.0
    IL_00CA: br.s IL_00E0
    IL_00CC: ldc.i4.0
    IL_00CD: call System.UInt32 Z0.gmath::ones<System.UInt32>(System.UInt32)
    IL_00D2: stloc.0
    IL_00D3: br.s IL_00E0
    IL_00D5: ldc.i4.0
    IL_00D6: call System.UInt32 Z0.gmath::zero<System.UInt32>(System.UInt32)
    IL_00DB: stloc.0
    IL_00DC: br.s IL_00E0
    IL_00DE: ldc.i4.0
    IL_00DF: stloc.0
    IL_00E0: ldloc.0
    IL_00E1: ret
}
------------------------------------------------------------------------------------------------------------------------
