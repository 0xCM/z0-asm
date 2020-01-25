// Id := 100663350, Name := System.UInt16 Z0.math::dec(System.UInt16)
// ushort dec(ushort src)
// AggressiveInlining
ushort dec(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: conv.u2
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
