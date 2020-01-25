// Id := 100663533, Name := System.UInt16 Z0.math::nand(System.UInt16,System.UInt16)
// ushort nand(ushort a, ushort b)
// AggressiveInlining
ushort nand(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt16 Z0.math::and(System.UInt16,System.UInt16)
    IL_0007: call System.UInt16 Z0.math::not(System.UInt16)
    IL_000C: ret
}
