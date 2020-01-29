// System.SByte Z0.Bits::bitslice(System.SByte,System.Byte,System.Byte)
// sbyte bitslice(sbyte src, byte start, byte length)
// AggressiveInlining
sbyte bitslice(sbyte src, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_0008: conv.i1
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Byte Z0.Bits::bitslice(System.Byte,System.Byte,System.Byte)
// byte bitslice(byte src, byte start, byte length)
// AggressiveInlining
byte bitslice(byte src, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_0008: conv.u1
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int16 Z0.Bits::bitslice(System.Int16,System.Byte,System.Byte)
// short bitslice(short src, byte start, byte length)
// AggressiveInlining
short bitslice(short src, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_0008: conv.i2
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.Bits::bitslice(System.UInt16,System.Byte,System.Byte)
// ushort bitslice(ushort src, byte start, byte length)
// AggressiveInlining
ushort bitslice(ushort src, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_0008: conv.u2
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.Bits::bitslice(System.Int32,System.Byte,System.Byte)
// int bitslice(int src, byte start, byte length)
// AggressiveInlining
int bitslice(int src, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::bitslice(System.UInt32,System.Byte,System.Byte)
// uint bitslice(uint src, byte start, byte length)
// AggressiveInlining
uint bitslice(uint src, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int64 Z0.Bits::bitslice(System.Int64,System.Byte,System.Byte)
// long bitslice(long src, byte start, byte length)
// AggressiveInlining
long bitslice(long src, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::BitFieldExtract(System.UInt64,System.Byte,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::bitslice(System.UInt64,System.Byte,System.Byte)
// ulong bitslice(ulong src, byte start, byte length)
// AggressiveInlining
ulong bitslice(ulong src, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::BitFieldExtract(System.UInt64,System.Byte,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
