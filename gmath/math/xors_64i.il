// Id := 100663652, Name := System.Int64 Z0.math::xors(System.Int64,System.Byte)
// long xors(long src, byte offset)
// AggressiveInlining
long xors(long src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 63
    IL_0005: and
    IL_0006: shl
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: ldc.i4.s 63
    IL_000B: and
    IL_000C: shr
    IL_000D: xor
    IL_000E: xor
    IL_000F: ret
}
