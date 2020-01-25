// Id := 100663442, Name := System.UInt16 Z0.math::mul(System.UInt16,System.UInt16)
// ushort mul(ushort a, ushort b)
// AggressiveInlining
ushort mul(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: conv.u2
    IL_0004: ret
}
