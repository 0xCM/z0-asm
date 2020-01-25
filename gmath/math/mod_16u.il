// Id := 100663424, Name := System.UInt16 Z0.math::mod(System.UInt16,System.UInt16)
// ushort mod(ushort a, ushort m)
// AggressiveInlining
ushort mod(ushort a, ushort m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: rem
    IL_0003: conv.u2
    IL_0004: ret
}
