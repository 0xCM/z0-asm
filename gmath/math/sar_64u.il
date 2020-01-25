// Id := 100663625, Name := System.UInt64 Z0.math::sar(System.UInt64,System.Byte)
// ulong sar(ulong src, byte offset)
// AggressiveInlining
ulong sar(ulong src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 63
    IL_0004: and
    IL_0005: shr.un
    IL_0006: ret
}
