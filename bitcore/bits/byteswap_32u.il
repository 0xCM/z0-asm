// Id := 100663367, Name := System.UInt32 Z0.Bits::byteswap(System.UInt32)
// uint byteswap(uint src)
// AggressiveInlining
uint byteswap(uint src)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: ldloc.0
    IL_0003: ldarg.0
    IL_0004: ldc.i4.s 24
    IL_0006: shr.un
    IL_0007: conv.u1
    IL_0008: or
    IL_0009: stloc.0
    IL_000A: ldloc.0
    IL_000B: ldarg.0
    IL_000C: ldc.i4.s 16
    IL_000E: shr.un
    IL_000F: conv.u1
    IL_0010: ldc.i4.8
    IL_0011: shl
    IL_0012: or
    IL_0013: stloc.0
    IL_0014: ldloc.0
    IL_0015: ldarg.0
    IL_0016: ldc.i4.8
    IL_0017: shr.un
    IL_0018: conv.u1
    IL_0019: ldc.i4.s 16
    IL_001B: shl
    IL_001C: or
    IL_001D: stloc.0
    IL_001E: ldloc.0
    IL_001F: ldarg.0
    IL_0020: conv.u1
    IL_0021: ldc.i4.s 24
    IL_0023: shl
    IL_0024: or
    IL_0025: stloc.0
    IL_0026: ldloc.0
    IL_0027: ret
}
