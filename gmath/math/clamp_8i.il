// Id := 100663339, Name := System.SByte Z0.math::clamp(System.SByte,System.SByte)
// sbyte clamp(sbyte src, sbyte max)
// AggressiveInlining
sbyte clamp(sbyte src, sbyte max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
