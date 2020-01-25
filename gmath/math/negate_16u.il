// Id := 100663457, Name := System.UInt16 Z0.math::negate(System.UInt16)
// ushort negate(ushort src)
// AggressiveInlining
ushort negate(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldc.i4.1
    IL_0003: add
    IL_0004: conv.u2
    IL_0005: ret
}
