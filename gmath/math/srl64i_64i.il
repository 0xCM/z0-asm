// Id := 100663644, Name := System.Int64 Z0.math::srl64i(System.Int64,System.Byte)
// long srl64i(long src, byte offset)
// AggressiveInlining
long srl64i(long src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 63
    IL_0004: and
    IL_0005: shr.un
    IL_0006: ret
}
