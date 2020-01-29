// System.Byte Z0.Bits::select(System.Byte,System.Byte)
// byte select(byte src, byte spec)
// AggressiveInlining
byte select(byte src, byte spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.Bits::gather(System.UInt32,System.UInt32)
    IL_0007: conv.u1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.Bits::select(System.UInt16,System.UInt16)
// ushort select(ushort src, ushort spec)
// AggressiveInlining
ushort select(ushort src, ushort spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.Bits::gather(System.UInt32,System.UInt32)
    IL_0007: conv.u2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::select(System.UInt32,System.UInt32)
// uint select(uint src, uint spec)
// AggressiveInlining
uint select(uint src, uint spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.Bits::gather(System.UInt32,System.UInt32)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::select(System.UInt64,System.UInt64)
// ulong select(ulong src, ulong spec)
// AggressiveInlining
ulong select(ulong src, ulong spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.Bits::gather(System.UInt64,System.UInt64)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
