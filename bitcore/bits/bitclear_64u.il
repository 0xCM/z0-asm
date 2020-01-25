// Id := 100663340, Name := System.UInt64 Z0.Bits::bitclear(System.UInt64,System.Byte,System.Byte)
// ulong bitclear(ulong src, byte index, byte count)
// AggressiveInlining
ulong bitclear(ulong src, byte index, byte count)
{
    IL_0000: ldc.i4.m1
    IL_0001: conv.i8
    IL_0002: ldarg.2
    IL_0003: ldc.i4.1
    IL_0004: sub
    IL_0005: call System.UInt64 Z0.BitMask::lo64(System.Int32)
    IL_000A: ldarg.1
    IL_000B: ldc.i4.s 63
    IL_000D: and
    IL_000E: shl
    IL_000F: xor
    IL_0010: stloc.0
    IL_0011: ldloc.0
    IL_0012: ldarg.0
    IL_0013: and
    IL_0014: ret
}
