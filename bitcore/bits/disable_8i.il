// Id := 100663385, Name := System.SByte Z0.Bits::disable(System.SByte,System.Int32)
// sbyte disable(sbyte src, int pos)
// AggressiveInlining
sbyte disable(sbyte src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: conv.i1
    IL_0008: not
    IL_0009: conv.u1
    IL_000A: and
    IL_000B: conv.i1
    IL_000C: ret
}
