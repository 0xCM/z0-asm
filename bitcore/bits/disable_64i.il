// Id := 100663391, Name := System.Int64 Z0.Bits::disable(System.Int64,System.Int32)
// long disable(long src, int pos)
// AggressiveInlining
long disable(long src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: conv.i8
    IL_0003: ldarg.1
    IL_0004: ldc.i4.s 63
    IL_0006: and
    IL_0007: shl
    IL_0008: not
    IL_0009: and
    IL_000A: ret
}
