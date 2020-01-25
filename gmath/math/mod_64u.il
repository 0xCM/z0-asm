// Id := 100663428, Name := System.UInt64 Z0.math::mod(System.UInt64,System.UInt64)
// ulong mod(ulong a, ulong m)
// AggressiveInlining
ulong mod(ulong a, ulong m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: rem.un
    IL_0003: ret
}
