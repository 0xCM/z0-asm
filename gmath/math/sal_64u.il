// Id := 100663617, Name := System.UInt64 Z0.math::sal(System.UInt64,System.Byte)
// ulong sal(ulong src, byte offset)
// AggressiveInlining
ulong sal(ulong src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 63
    IL_0004: and
    IL_0005: shl
    IL_0006: ret
}
