// Id := 100663572, Name := System.UInt64 Z0.Bits::toggle(System.UInt64,System.Int32)
// ulong toggle(ulong src, int pos)
// AggressiveInlining
ulong toggle(ulong src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: conv.i8
    IL_0003: ldarg.1
    IL_0004: ldc.i4.s 63
    IL_0006: and
    IL_0007: shl
    IL_0008: xor
    IL_0009: dup
    IL_000A: starg.s src
    IL_000C: ret
}
