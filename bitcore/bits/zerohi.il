// System.Byte Z0.Bits::zerohi(System.Byte,System.Int32)
// byte zerohi(byte src, int index)
// AggressiveInlining
byte zerohi(byte src, int index)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ZeroHighBits(System.UInt32,System.UInt32)
    IL_0007: conv.u1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.Bits::zerohi(System.UInt16,System.Int32)
// ushort zerohi(ushort src, int index)
// AggressiveInlining
ushort zerohi(ushort src, int index)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ZeroHighBits(System.UInt32,System.UInt32)
    IL_0007: conv.u2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::zerohi(System.UInt32,System.Int32)
// uint zerohi(uint src, int index)
// AggressiveInlining
uint zerohi(uint src, int index)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ZeroHighBits(System.UInt32,System.UInt32)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::zerohi(System.UInt64,System.Int32)
// ulong zerohi(ulong src, int index)
// AggressiveInlining
ulong zerohi(ulong src, int index)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: conv.u8
    IL_0003: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi2/X64::ZeroHighBits(System.UInt64,System.UInt64)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
