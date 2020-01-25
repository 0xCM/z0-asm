// Id := 100663436, Name := System.UInt64 Z0.math::modmul(System.UInt64,System.UInt64,System.UInt64)
// ulong modmul(ulong a, ulong b, ulong m)
// AggressiveInlining
ulong modmul(ulong a, ulong b, ulong m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: rem.un
    IL_0005: ret
}
