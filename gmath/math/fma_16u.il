// Id := 100663382, Name := System.UInt16 Z0.math::fma(System.UInt16,System.UInt16,System.UInt16)
// ushort fma(ushort x, ushort y, ushort z)
// AggressiveInlining
ushort fma(ushort x, ushort y, ushort z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: add
    IL_0005: conv.u2
    IL_0006: ret
}
