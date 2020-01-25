// Id := 100663342, Name := System.UInt16 Z0.Bits::clearbyte(System.UInt16,System.Byte)
// ushort clearbyte(ushort src, byte index)
// AggressiveInlining
ushort clearbyte(ushort src, byte index)
{
    IL_0000: ldc.i4.m1
    IL_0001: ldc.i4 255
    IL_0006: ldarg.1
    IL_0007: ldc.i4.s 31
    IL_0009: and
    IL_000A: shl
    IL_000B: xor
    IL_000C: stloc.0
    IL_000D: ldloc.0
    IL_000E: ldarg.0
    IL_000F: and
    IL_0010: conv.u2
    IL_0011: ret
}
