// Id := 100663618, Name := System.SByte Z0.math::sar(System.SByte,System.Byte)
// sbyte sar(sbyte src, byte offset)
// AggressiveInlining
sbyte sar(sbyte src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr
    IL_0006: conv.i1
    IL_0007: ret
}
