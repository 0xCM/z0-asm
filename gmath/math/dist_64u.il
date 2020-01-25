// Id := 100663362, Name := System.UInt64 Z0.math::dist(System.UInt64,System.UInt64)
// ulong dist(ulong a, ulong b)
// AggressiveInlining
ulong dist(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bge.un.s IL_0008
    IL_0004: ldarg.1
    IL_0005: ldarg.0
    IL_0006: sub
    IL_0007: ret
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: sub
    IL_000B: ret
}
