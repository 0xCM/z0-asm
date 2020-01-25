// Id := 100663472, Name := System.UInt64 Z0.math::pow2(System.Int32)
// ulong pow2(int exp)
// AggressiveInlining
ulong pow2(int exp)
{
    IL_0000: ldc.i4.1
    IL_0001: conv.i8
    IL_0002: ldarg.0
    IL_0003: ldc.i4.s 63
    IL_0005: and
    IL_0006: shl
    IL_0007: ret
}
