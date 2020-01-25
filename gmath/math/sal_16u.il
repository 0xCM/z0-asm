// Id := 100663613, Name := System.UInt16 Z0.math::sal(System.UInt16,System.Byte)
// ushort sal(ushort src, byte offset)
// AggressiveInlining
ushort sal(ushort src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: conv.u2
    IL_0007: ret
}
