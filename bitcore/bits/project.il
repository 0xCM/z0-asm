// System.Byte Z0.Bits::project(System.Byte,System.Byte)
// byte project(byte src, byte spec)
// AggressiveInlining
byte project(byte src, byte spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.Bits::scatter(System.UInt32,System.UInt32)
    IL_0007: conv.u1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.Bits::project(System.UInt16,System.UInt16)
// ushort project(ushort src, ushort spec)
// AggressiveInlining
ushort project(ushort src, ushort spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.Bits::scatter(System.UInt32,System.UInt32)
    IL_0007: conv.u2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::project(System.UInt32,System.UInt32)
// uint project(uint src, uint spec)
// AggressiveInlining
uint project(uint src, uint spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.Bits::scatter(System.UInt32,System.UInt32)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::project(System.UInt64,System.UInt64)
// ulong project(ulong src, ulong spec)
// AggressiveInlining
ulong project(ulong src, ulong spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
