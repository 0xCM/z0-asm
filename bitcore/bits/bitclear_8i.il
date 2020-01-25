// Id := 100663335, Name := System.SByte Z0.Bits::bitclear(System.SByte,System.Byte,System.Byte)
// sbyte bitclear(sbyte src, byte index, byte count)
// AggressiveInlining
sbyte bitclear(sbyte src, byte index, byte count)
{
    IL_0000: ldc.i4 65535
    IL_0005: ldarg.2
    IL_0006: ldc.i4.1
    IL_0007: sub
    IL_0008: call System.UInt64 Z0.BitMask::lo64(System.Int32)
    IL_000D: conv.i4
    IL_000E: ldarg.1
    IL_000F: ldc.i4.s 31
    IL_0011: and
    IL_0012: shl
    IL_0013: xor
    IL_0014: stloc.0
    IL_0015: ldloc.0
    IL_0016: ldarg.0
    IL_0017: and
    IL_0018: conv.i1
    IL_0019: ret
}
