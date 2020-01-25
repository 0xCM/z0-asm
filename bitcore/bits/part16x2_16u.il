// Id := 100663452, Name := System.Void Z0.Bits::part16x2(System.UInt16,System.Byte&)
// void part16x2(ushort src, ref byte dst)
// AggressiveInlining
void part16x2(ushort src, ref byte dst)
{
    IL_0000: ldarg.0
    IL_0001: conv.u1
    IL_0002: ldarg.1
    IL_0003: call System.Void Z0.Bits::part8x2(System.Byte,System.Byte&)
    IL_0008: ldarg.0
    IL_0009: ldc.i4.8
    IL_000A: shr
    IL_000B: conv.u1
    IL_000C: ldarg.1
    IL_000D: ldc.i4.4
    IL_000E: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_0013: call System.Void Z0.Bits::part8x2(System.Byte,System.Byte&)
    IL_0018: ret
}
