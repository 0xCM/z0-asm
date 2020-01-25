// Id := 100663366, Name := System.UInt16 Z0.Bits::byteswap(System.UInt16)
// ushort byteswap(ushort src)
// AggressiveInlining
ushort byteswap(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.8
    IL_0002: shr
    IL_0003: stloc.0
    IL_0004: ldloc.0
    IL_0005: ldc.i4 255
    IL_000A: ldarg.0
    IL_000B: and
    IL_000C: ldc.i4.8
    IL_000D: shl
    IL_000E: or
    IL_000F: stloc.0
    IL_0010: ldloc.0
    IL_0011: conv.u2
    IL_0012: ret
}
