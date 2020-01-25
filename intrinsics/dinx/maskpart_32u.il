// Id := 100663669, Name := System.UInt64 Z0.dinx::maskpart(System.UInt32,System.Int32,System.UInt64)
// ulong maskpart(uint src, int offset, ulong mask)
// AggressiveInlining
ulong maskpart(uint src, int offset, ulong mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr.un
    IL_0006: conv.u1
    IL_0007: conv.u8
    IL_0008: ldarg.2
    IL_0009: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_000E: ret
}
