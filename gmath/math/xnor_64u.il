// Id := 100663601, Name := System.UInt64 Z0.math::xnor(System.UInt64,System.UInt64)
// ulong xnor(ulong a, ulong b)
// AggressiveInlining
ulong xnor(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: xor
    IL_0003: not
    IL_0004: ret
}
