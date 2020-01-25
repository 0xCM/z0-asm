// Id := 100663417, Name := System.UInt64 Z0.math::log2(System.Int32)
// ulong log2(int src)
// AggressiveInlining
ulong log2(int src)
{
    IL_0000: ldarg.0
    IL_0001: conv.i8
    IL_0002: call System.UInt64 Z0.math::log2(System.UInt64)
    IL_0007: ret
}
