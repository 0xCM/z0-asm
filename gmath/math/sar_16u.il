// Id := 100663621, Name := System.UInt16 Z0.math::sar(System.UInt16,System.Byte)
// ushort sar(ushort src, byte offset)
// AggressiveInlining
ushort sar(ushort src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr
    IL_0006: conv.u2
    IL_0007: ret
}
