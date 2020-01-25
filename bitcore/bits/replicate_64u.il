// Id := 100663508, Name := System.UInt64 Z0.Bits::replicate(System.UInt64,System.Byte,System.Byte,System.Int32)
// ulong replicate(ulong src, byte from, byte to, int reps)
// AggressiveInlining
ulong replicate(ulong src, byte from, byte to, int reps)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: sub
    IL_0003: ldc.i4.1
    IL_0004: add
    IL_0005: conv.u1
    IL_0006: stloc.0
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: ldloc.0
    IL_000A: call System.UInt64 Z0.Bits::bitslice(System.UInt64,System.Byte,System.Byte)
    IL_000F: stloc.1
    IL_0010: ldloc.1
    IL_0011: stloc.2
    IL_0012: ldc.i4.1
    IL_0013: stloc.3
    IL_0014: br.s IL_0025
    IL_0016: ldloc.2
    IL_0017: ldloc.1
    IL_0018: ldloc.3
    IL_0019: ldloc.0
    IL_001A: mul
    IL_001B: ldc.i4.s 63
    IL_001D: and
    IL_001E: shl
    IL_001F: or
    IL_0020: stloc.2
    IL_0021: ldloc.3
    IL_0022: ldc.i4.1
    IL_0023: add
    IL_0024: stloc.3
    IL_0025: ldloc.3
    IL_0026: ldarg.3
    IL_0027: blt.s IL_0016
    IL_0029: ldloc.2
    IL_002A: ret
}
