// Id := 100663406, Name := System.UInt64 Z0.math::inc(System.UInt64)
// ulong inc(ulong src)
// AggressiveInlining
ulong inc(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: conv.i8
    IL_0003: add
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
