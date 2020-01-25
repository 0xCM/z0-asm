// Id := 100663610, Name := System.SByte Z0.math::sal(System.SByte,System.Byte)
// sbyte sal(sbyte src, byte offset)
// AggressiveInlining
sbyte sal(sbyte src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: conv.i1
    IL_0007: ret
}
