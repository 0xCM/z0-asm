// Id := 100663505, Name := System.Byte Z0.Bits::replicate(System.Byte,System.Byte,System.Byte,System.Int32)
// byte replicate(byte src, byte from, byte to, int reps)
// AggressiveInlining
byte replicate(byte src, byte from, byte to, int reps)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: sub
    IL_0003: stloc.0
    IL_0004: ldarg.0
    IL_0005: ldarg.1
    IL_0006: ldarg.2
    IL_0007: call System.Byte Z0.Bits::bitslice(System.Byte,System.Byte,System.Byte)
    IL_000C: stloc.1
    IL_000D: ldc.i4.0
    IL_000E: stloc.2
    IL_000F: ldc.i4.0
    IL_0010: stloc.3
    IL_0011: br.s IL_0024
    IL_0013: ldloc.2
    IL_0014: ldloc.1
    IL_0015: ldloc.3
    IL_0016: ldloc.0
    IL_0017: mul
    IL_0018: ldc.i4.s 31
    IL_001A: and
    IL_001B: shl
    IL_001C: conv.u1
    IL_001D: or
    IL_001E: conv.u1
    IL_001F: stloc.2
    IL_0020: ldloc.3
    IL_0021: ldc.i4.1
    IL_0022: add
    IL_0023: stloc.3
    IL_0024: ldloc.3
    IL_0025: ldarg.3
    IL_0026: blt.s IL_0013
    IL_0028: ldloc.2
    IL_0029: ret
}
