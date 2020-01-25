// Id := 100663605, Name := System.UInt16 Z0.math::xor(System.UInt16,System.UInt16)
// ushort xor(ushort a, ushort b)
// AggressiveInlining
ushort xor(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: xor
    IL_0003: conv.u2
    IL_0004: ret
}
