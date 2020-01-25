// Id := 100663726, Name := System.SByte Z0.math::max(System.SByte,System.SByte)
// sbyte max(sbyte a, sbyte b)
// AggressiveInlining
sbyte max(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.1
    IL_0005: ret
    IL_0006: ldarg.0
    IL_0007: ret
}
