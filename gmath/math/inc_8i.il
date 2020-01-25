// Id := 100663399, Name := System.SByte Z0.math::inc(System.SByte)
// sbyte inc(sbyte src)
// AggressiveInlining
sbyte inc(sbyte src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: add
    IL_0003: conv.i1
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
