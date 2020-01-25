// Id := 100663303, Name := System.SByte Z0.math::abs(System.SByte)
// sbyte abs(sbyte a)
// AggressiveInlining
sbyte abs(sbyte a)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.7
    IL_0003: shr
    IL_0004: add
    IL_0005: ldarg.0
    IL_0006: ldc.i4.7
    IL_0007: shr
    IL_0008: xor
    IL_0009: conv.i1
    IL_000A: ret
}
