// Id := 100663371, Name := System.UInt64 Z0.Bits::concat(System.UInt32&,System.UInt32&)
// ulong concat(in uint x0, in uint x1)
// AggressiveInlining
ulong concat(in uint x0, in uint x1)
{
    IL_0000: ldarg.0
    IL_0001: ldind.u4
    IL_0002: conv.u8
    IL_0003: ldarg.1
    IL_0004: ldind.u4
    IL_0005: conv.u8
    IL_0006: ldc.i4.s 32
    IL_0008: shl
    IL_0009: or
    IL_000A: ret
}
