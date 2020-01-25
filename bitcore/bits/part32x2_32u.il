// Id := 100663454, Name := System.Void Z0.Bits::part32x2(System.UInt32,System.Byte&)
// void part32x2(uint src, ref byte dst)
// AggressiveInlining
void part32x2(uint src, ref byte dst)
{
    IL_0000: ldarg.0
    IL_0001: conv.u2
    IL_0002: ldarg.1
    IL_0003: call System.Void Z0.Bits::part16x2(System.UInt16,System.Byte&)
    IL_0008: ldarg.0
    IL_0009: ldc.i4.s 16
    IL_000B: shr.un
    IL_000C: conv.u2
    IL_000D: ldarg.1
    IL_000E: ldc.i4.8
    IL_000F: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_0014: call System.Void Z0.Bits::part16x2(System.UInt16,System.Byte&)
    IL_0019: ret
}
