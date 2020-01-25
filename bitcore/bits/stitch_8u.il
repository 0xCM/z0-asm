// Id := 100663561, Name := System.Byte Z0.Bits::stitch(System.Byte,System.Int32,System.Byte,System.Int32)
// byte stitch(byte left, int ldx, byte right, int rdx)
// AggressiveInlining
byte stitch(byte left, int ldx, byte right, int rdx)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: stloc.0
    IL_0007: ldarg.2
    IL_0008: ldarg.3
    IL_0009: ldc.i4.s 31
    IL_000B: and
    IL_000C: shr.un
    IL_000D: stloc.1
    IL_000E: ldloc.0
    IL_000F: ldloc.1
    IL_0010: or
    IL_0011: ldarg.3
    IL_0012: ldc.i4.s 31
    IL_0014: and
    IL_0015: shr.un
    IL_0016: conv.u1
    IL_0017: ret
}
