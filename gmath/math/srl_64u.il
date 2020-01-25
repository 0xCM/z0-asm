// Id := 100663641, Name := System.UInt64 Z0.math::srl(System.UInt64,System.Byte)
// ulong srl(ulong src, byte offset)
// AggressiveInlining
ulong srl(ulong src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.math::srl64u(System.UInt64,System.Byte)
    IL_0007: ret
}
