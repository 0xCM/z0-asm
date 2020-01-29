// System.Byte Z0.Bits::setif(System.Byte,System.Int32,System.Byte,System.Int32)
// byte setif(byte src, int srcpos, byte dst, int dstpos)
// AggressiveInlining
byte setif(byte src, int srcpos, byte dst, int dstpos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.bit::test(System.Byte,System.Int32)
    IL_0007: call System.Boolean Z0.bit::op_Implicit(Z0.bit)
    IL_000C: brfalse.s IL_0016
    IL_000E: ldarg.2
    IL_000F: ldarg.1
    IL_0010: call System.Byte Z0.Bits::enable(System.Byte,System.Int32)
    IL_0015: ret
    IL_0016: ldarg.2
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.Bits::setif(System.UInt16,System.Int32,System.UInt16,System.Int32)
// ushort setif(ushort src, int srcpos, ushort dst, int dstpos)
// AggressiveInlining
ushort setif(ushort src, int srcpos, ushort dst, int dstpos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.bit::test(System.UInt16,System.Int32)
    IL_0007: call System.Boolean Z0.bit::op_Implicit(Z0.bit)
    IL_000C: brfalse.s IL_0016
    IL_000E: ldarg.2
    IL_000F: ldarg.3
    IL_0010: call System.UInt16 Z0.Bits::enable(System.UInt16,System.Int32)
    IL_0015: ret
    IL_0016: ldarg.2
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::setif(System.UInt32,System.Int32,System.UInt32,System.Int32)
// uint setif(uint src, int srcpos, uint dst, int dstpos)
// AggressiveInlining
uint setif(uint src, int srcpos, uint dst, int dstpos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.bit::test(System.UInt32,System.Int32)
    IL_0007: call System.Boolean Z0.bit::op_Implicit(Z0.bit)
    IL_000C: brfalse.s IL_0016
    IL_000E: ldarg.2
    IL_000F: ldarg.3
    IL_0010: call System.UInt32 Z0.Bits::enable(System.UInt32,System.Int32)
    IL_0015: ret
    IL_0016: ldarg.2
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::setif(System.UInt64,System.Int32,System.UInt64,System.Int32)
// ulong setif(ulong src, int srcpos, ulong dst, int dstpos)
// AggressiveInlining
ulong setif(ulong src, int srcpos, ulong dst, int dstpos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.bit::test(System.UInt64,System.Int32)
    IL_0007: call System.Boolean Z0.bit::op_Implicit(Z0.bit)
    IL_000C: brfalse.s IL_0016
    IL_000E: ldarg.2
    IL_000F: ldarg.3
    IL_0010: call System.UInt64 Z0.Bits::enable(System.UInt64,System.Int32)
    IL_0015: ret
    IL_0016: ldarg.2
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
