// Id := 100663347, Name := System.SByte Z0.math::dec(System.SByte)
// sbyte dec(sbyte src)
// AggressiveInlining
sbyte dec(sbyte src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: conv.i1
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
