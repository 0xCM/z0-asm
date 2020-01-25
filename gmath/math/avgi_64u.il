// Id := 100663322, Name := System.UInt64 Z0.math::avgi(System.UInt64,System.UInt64)
// ulong avgi(ulong a, ulong b)
// AggressiveInlining
ulong avgi(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: ldarg.0
    IL_0004: ldarg.1
    IL_0005: xor
    IL_0006: ldc.i4.1
    IL_0007: shr.un
    IL_0008: sub
    IL_0009: ret
}
