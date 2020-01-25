// Id := 100663540, Name := System.UInt64 Z0.Bits::setif(System.UInt64,System.Int32,System.UInt64,System.Int32)
// ulong setif(ulong src, int srcpos, ulong dst, int dstpos)
// AggressiveInlining
ulong setif(ulong src, int srcpos, ulong dst, int dstpos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.bit::test(System.UInt64,System.Int32)
    IL_0007: call System.Boolean Z0.bit::op_Implicit(Z0.bit)
    IL_000C: brfalse.s IL_0016
    IL_000E: ldarg.2
    IL_000F: ldarg.3
    IL_0010: call System.UInt64 Z0.Bits::enable(System.UInt64,System.Int32)
    IL_0015: ret
    IL_0016: ldarg.2
    IL_0017: ret
}
