// Id := 100663394, Name := System.UInt64 Z0.math::gcd(System.UInt64,System.UInt64)
// ulong gcd(ulong a, ulong b)
// AggressiveInlining
ulong gcd(ulong a, ulong b)
{
    IL_0000: br.s IL_000C
    IL_0002: ldarg.0
    IL_0003: ldarg.1
    IL_0004: rem.un
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: starg.s a
    IL_0009: ldloc.0
    IL_000A: starg.s b
    IL_000C: ldarg.1
    IL_000D: brtrue.s IL_0002
    IL_000F: ldarg.0
    IL_0010: ret
}
