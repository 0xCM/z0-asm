// Id := 100663402, Name := System.UInt16 Z0.math::inc(System.UInt16)
// ushort inc(ushort src)
// AggressiveInlining
ushort inc(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: add
    IL_0003: conv.u2
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
