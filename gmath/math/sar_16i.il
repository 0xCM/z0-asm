// Id := 100663620, Name := System.Int16 Z0.math::sar(System.Int16,System.Byte)
// Int16 sar(Int16 src, byte offset)
// AggressiveInlining
Int16 sar(Int16 src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr
    IL_0006: conv.i2
    IL_0007: ret
}
