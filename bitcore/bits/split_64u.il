// Id := 100663558, Name := System.Void Z0.Bits::split(System.UInt64,System.UInt16&,System.UInt16&,System.UInt16&,System.UInt16&)
// void split(ulong src, out ushort x0, out ushort x1, out ushort x2, out ushort x3)
// AggressiveInlining
void split(ulong src, out ushort x0, out ushort x1, out ushort x2, out ushort x3)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: conv.u2
    IL_0003: stind.i2
    IL_0004: ldarg.2
    IL_0005: ldarg.0
    IL_0006: ldc.i4.s 16
    IL_0008: shr.un
    IL_0009: conv.u2
    IL_000A: stind.i2
    IL_000B: ldarg.3
    IL_000C: ldarg.0
    IL_000D: ldc.i4.s 32
    IL_000F: shr.un
    IL_0010: conv.u2
    IL_0011: stind.i2
    IL_0012: ldarg.s x3
    IL_0014: ldarg.0
    IL_0015: ldc.i4.s 48
    IL_0017: shr.un
    IL_0018: conv.u2
    IL_0019: stind.i2
    IL_001A: ret
}
