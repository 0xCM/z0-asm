// Id := 100663460, Name := System.Void Z0.Bits::part12x3(System.UInt32,System.Byte&)
// void part12x3(uint src, ref byte dst)
// AggressiveInlining
void part12x3(uint src, ref byte dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Void Z0.Bits::part9x3(System.UInt32,System.Byte&)
    IL_0007: ldarg.1
    IL_0008: ldc.i4.3
    IL_0009: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_000E: ldarg.0
    IL_000F: ldc.i4.s 9
    IL_0011: shr.un
    IL_0012: ldc.i4.7
    IL_0013: and
    IL_0014: conv.u1
    IL_0015: stind.i1
    IL_0016: ret
}
------------------------------------------------------------------------------------------------------------------------
