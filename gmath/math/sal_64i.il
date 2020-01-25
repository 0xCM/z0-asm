// Id := 100663616, Name := System.Int64 Z0.math::sal(System.Int64,System.Byte)
// long sal(long src, byte offset)
// AggressiveInlining
long sal(long src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 63
    IL_0004: and
    IL_0005: shl
    IL_0006: ret
}
