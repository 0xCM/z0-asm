// Id := 100663737, Name := System.UInt16 Z0.math::min(System.UInt16,System.UInt16)
// ushort min(ushort a, ushort b)
// AggressiveInlining
ushort min(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: blt.s IL_0006
    IL_0004: ldarg.1
    IL_0005: ret
    IL_0006: ldarg.0
    IL_0007: ret
}
