// Id := 100663553, Name := System.UInt64 Z0.math::nor(System.UInt64,System.UInt64)
// ulong nor(ulong a, ulong b)
// AggressiveInlining
ulong nor(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: not
    IL_0004: ret
}
