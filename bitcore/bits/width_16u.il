// Id := 100663586, Name := System.Int32 Z0.Bits::width(System.UInt16&)
// int width(in ushort src)
// AggressiveInlining
int width(in ushort src)
{
    IL_0000: ldc.i4.s 16
    IL_0002: ldarg.0
    IL_0003: ldind.u2
    IL_0004: call System.Int32 Z0.Bits::nlz(System.UInt16)
    IL_0009: sub
    IL_000A: ret
}
