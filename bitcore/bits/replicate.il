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
------------------------------------------------------------------------------------------------------------------------
// Id := 100663506, Name := System.UInt16 Z0.Bits::replicate(System.UInt16,System.Byte,System.Byte,System.Int32)
// ushort replicate(ushort src, byte from, byte to, int reps)
// AggressiveInlining
ushort replicate(ushort src, byte from, byte to, int reps)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: sub
    IL_0003: stloc.0
    IL_0004: ldarg.0
    IL_0005: ldarg.1
    IL_0006: ldarg.2
    IL_0007: call System.UInt16 Z0.Bits::bitslice(System.UInt16,System.Byte,System.Byte)
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
    IL_001C: conv.u2
    IL_001D: or
    IL_001E: conv.u2
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100663507, Name := System.UInt32 Z0.Bits::replicate(System.UInt32,System.Byte,System.Byte,System.Int32)
// uint replicate(uint src, byte from, byte to, int reps)
// AggressiveInlining
uint replicate(uint src, byte from, byte to, int reps)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: sub
    IL_0003: stloc.0
    IL_0004: ldarg.0
    IL_0005: ldarg.1
    IL_0006: ldarg.2
    IL_0007: call System.UInt32 Z0.Bits::bitslice(System.UInt32,System.Byte,System.Byte)
    IL_000C: stloc.1
    IL_000D: ldc.i4.0
    IL_000E: stloc.2
    IL_000F: ldc.i4.0
    IL_0010: stloc.3
    IL_0011: br.s IL_0022
    IL_0013: ldloc.2
    IL_0014: ldloc.1
    IL_0015: ldloc.3
    IL_0016: ldloc.0
    IL_0017: mul
    IL_0018: ldc.i4.s 31
    IL_001A: and
    IL_001B: shl
    IL_001C: or
    IL_001D: stloc.2
    IL_001E: ldloc.3
    IL_001F: ldc.i4.1
    IL_0020: add
    IL_0021: stloc.3
    IL_0022: ldloc.3
    IL_0023: ldarg.3
    IL_0024: blt.s IL_0013
    IL_0026: ldloc.2
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
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
------------------------------------------------------------------------------------------------------------------------
