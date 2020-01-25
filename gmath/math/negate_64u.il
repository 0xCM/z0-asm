// Id := 100663461, Name := System.UInt64 Z0.math::negate(System.UInt64)
// ulong negate(ulong src)
// AggressiveInlining
ulong negate(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldc.i4.1
    IL_0003: conv.i8
    IL_0004: add
    IL_0005: ret
}
