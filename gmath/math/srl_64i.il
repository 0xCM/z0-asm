// Id := 100663640, Name := System.Int64 Z0.math::srl(System.Int64,System.Byte)
// long srl(long src, byte offset)
// AggressiveInlining
long srl(long src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int64 Z0.math::srl64i(System.Int64,System.Byte)
    IL_0007: ret
}
