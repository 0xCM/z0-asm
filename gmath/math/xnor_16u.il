// Id := 100663597, Name := System.UInt16 Z0.math::xnor(System.UInt16,System.UInt16)
// ushort xnor(ushort a, ushort b)
// AggressiveInlining
ushort xnor(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt16 Z0.math::xor(System.UInt16,System.UInt16)
    IL_0007: call System.UInt16 Z0.math::not(System.UInt16)
    IL_000C: ret
}
