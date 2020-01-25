// Id := 100663585, Name := System.UInt64 Z0.math::select(System.UInt64,System.UInt64,System.UInt64)
// ulong select(ulong a, ulong b, ulong c)
// AggressiveInlining
ulong select(ulong a, ulong b, ulong c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.math::and(System.UInt64,System.UInt64)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.UInt64 Z0.math::nonimpl(System.UInt64,System.UInt64)
    IL_000E: call System.UInt64 Z0.math::or(System.UInt64,System.UInt64)
    IL_0013: ret
}
