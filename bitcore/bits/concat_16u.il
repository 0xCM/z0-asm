// Id := 100663373, Name := System.UInt64 Z0.Bits::concat(System.UInt16,System.UInt16,System.UInt16,System.UInt16)
// ulong concat(ushort x0, ushort x1, ushort x2, ushort x3)
// AggressiveInlining
ulong concat(ushort x0, ushort x1, ushort x2, ushort x3)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 16
    IL_0004: shl
    IL_0005: or
    IL_0006: ldarg.2
    IL_0007: or
    IL_0008: ldarg.3
    IL_0009: ldc.i4.s 16
    IL_000B: shl
    IL_000C: or
    IL_000D: conv.u8
    IL_000E: ret
}
