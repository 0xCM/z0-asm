// Id := 100663342, Name := System.UInt16 Z0.math::clamp(System.UInt16,System.UInt16)
// ushort clamp(ushort src, ushort max)
// AggressiveInlining
ushort clamp(ushort src, ushort max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
