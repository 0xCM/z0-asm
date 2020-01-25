// Id := 100663537, Name := System.UInt64 Z0.math::nand(System.UInt64,System.UInt64)
// ulong nand(ulong a, ulong b)
// AggressiveInlining
ulong nand(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: and
    IL_0003: not
    IL_0004: ret
}
