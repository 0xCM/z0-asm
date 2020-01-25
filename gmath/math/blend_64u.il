// Id := 100663593, Name := System.UInt64 Z0.math::blend(System.UInt64,System.UInt64,System.UInt64)
// ulong blend(ulong a, ulong b, ulong mask)
// AggressiveInlining
ulong blend(ulong a, ulong b, ulong mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.UInt64 Z0.math::xor(System.UInt64,System.UInt64)
    IL_0008: ldarg.2
    IL_0009: call System.UInt64 Z0.math::and(System.UInt64,System.UInt64)
    IL_000E: call System.UInt64 Z0.math::xor(System.UInt64,System.UInt64)
    IL_0013: ret
}
