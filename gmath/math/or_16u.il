// Id := 100663573, Name := System.UInt16 Z0.math::or(System.UInt16,System.UInt16,System.UInt16)
// ushort or(ushort a, ushort b, ushort c)
// AggressiveInlining
ushort or(ushort a, ushort b, ushort c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: ldarg.2
    IL_0004: or
    IL_0005: conv.u2
    IL_0006: ret
}
