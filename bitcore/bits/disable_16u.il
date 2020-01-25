// Id := 100663388, Name := System.UInt16 Z0.Bits::disable(System.UInt16,System.Int32)
// ushort disable(ushort src, int pos)
// AggressiveInlining
ushort disable(ushort src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: conv.u2
    IL_0008: not
    IL_0009: conv.u2
    IL_000A: and
    IL_000B: conv.u2
    IL_000C: ret
}
