// Id := 100663549, Name := System.UInt16 Z0.math::nor(System.UInt16,System.UInt16)
// ushort nor(ushort a, ushort b)
// AggressiveInlining
ushort nor(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt16 Z0.math::or(System.UInt16,System.UInt16)
    IL_0007: call System.UInt16 Z0.math::not(System.UInt16)
    IL_000C: ret
}
