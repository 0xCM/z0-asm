// Id := 100663378, Name := System.UInt16 Z0.Bits::enable(System.UInt16,System.Int32)
// ushort enable(ushort src, int pos)
// AggressiveInlining
ushort enable(ushort src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: conv.u2
    IL_0008: or
    IL_0009: conv.u2
    IL_000A: dup
    IL_000B: starg.s src
    IL_000D: ret
}
