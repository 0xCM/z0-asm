// Id := 100663316, Name := System.UInt16 Z0.math::avgz(System.UInt16,System.UInt16)
// ushort avgz(ushort a, ushort b)
// AggressiveInlining
ushort avgz(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: and
    IL_0003: ldarg.0
    IL_0004: ldarg.1
    IL_0005: xor
    IL_0006: ldc.i4.1
    IL_0007: shr
    IL_0008: add
    IL_0009: conv.u2
    IL_000A: ret
}
