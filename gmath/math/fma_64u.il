// Id := 100663386, Name := System.UInt64 Z0.math::fma(System.UInt64,System.UInt64,System.UInt64)
// ulong fma(ulong x, ulong y, ulong z)
// AggressiveInlining
ulong fma(ulong x, ulong y, ulong z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: add
    IL_0005: ret
}
