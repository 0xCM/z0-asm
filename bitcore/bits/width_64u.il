// Id := 100663588, Name := System.Int32 Z0.Bits::width(System.UInt64)
// int width(ulong src)
// AggressiveInlining
int width(ulong src)
{
    IL_0000: ldc.i4.s 64
    IL_0002: ldarg.0
    IL_0003: call System.Int32 Z0.Bits::nlz(System.UInt64)
    IL_0008: sub
    IL_0009: ret
}
