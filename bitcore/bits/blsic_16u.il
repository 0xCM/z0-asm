// Id := 100663354, Name := System.UInt16 Z0.Bits::blsic(System.UInt16)
// ushort blsic(ushort src)
// AggressiveInlining
ushort blsic(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldarg.0
    IL_0003: ldc.i4.1
    IL_0004: sub
    IL_0005: or
    IL_0006: conv.u2
    IL_0007: ret
}
