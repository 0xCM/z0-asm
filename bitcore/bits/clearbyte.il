// System.UInt16 Z0.Bits::clearbyte(System.UInt16,System.Byte)
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
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::clearbyte(System.UInt32,System.Byte)
// uint clearbyte(uint src, byte index)
// AggressiveInlining
uint clearbyte(uint src, byte index)
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
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::clearbyte(System.UInt64,System.Byte)
// ulong clearbyte(ulong src, byte index)
// AggressiveInlining
ulong clearbyte(ulong src, byte index)
{
    IL_0000: ldc.i4.m1
    IL_0001: conv.i8
    IL_0002: ldc.i4 255
    IL_0007: conv.i8
    IL_0008: ldarg.1
    IL_0009: ldc.i4.s 63
    IL_000B: and
    IL_000C: shl
    IL_000D: xor
    IL_000E: stloc.0
    IL_000F: ldloc.0
    IL_0010: ldarg.0
    IL_0011: and
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
