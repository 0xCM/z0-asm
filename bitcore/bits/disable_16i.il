// Id := 100663387, Name := System.Int16 Z0.Bits::disable(System.Int16,System.Int32)
// Int16 disable(Int16 src, int pos)
// AggressiveInlining
Int16 disable(Int16 src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: conv.i2
    IL_0008: not
    IL_0009: conv.i2
    IL_000A: and
    IL_000B: conv.i2
    IL_000C: ret
}
