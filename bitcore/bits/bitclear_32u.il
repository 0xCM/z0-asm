// Id := 100663338, Name := System.UInt32 Z0.Bits::bitclear(System.UInt32,System.Byte,System.Byte)
// uint bitclear(uint src, byte index, byte count)
// AggressiveInlining
uint bitclear(uint src, byte index, byte count)
{
    IL_0000: ldc.i4.m1
    IL_0001: ldarg.2
    IL_0002: ldc.i4.1
    IL_0003: sub
    IL_0004: call System.UInt64 Z0.BitMask::lo64(System.Int32)
    IL_0009: conv.u4
    IL_000A: ldarg.1
    IL_000B: ldc.i4.s 31
    IL_000D: and
    IL_000E: shl
    IL_000F: xor
    IL_0010: stloc.0
    IL_0011: ldloc.0
    IL_0012: ldarg.0
    IL_0013: and
    IL_0014: ret
}
