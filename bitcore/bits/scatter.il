// System.Byte Z0.Bits::scatter(System.Byte,System.Byte)
// byte scatter(byte src, byte mask)
// AggressiveInlining
byte scatter(byte src, byte mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ParallelBitDeposit(System.UInt32,System.UInt32)
    IL_0007: conv.u1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.Bits::scatter(System.UInt16,System.UInt16)
// ushort scatter(ushort src, ushort mask)
// AggressiveInlining
ushort scatter(ushort src, ushort mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ParallelBitDeposit(System.UInt32,System.UInt32)
    IL_0007: conv.u2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::scatter(System.UInt32,System.UInt32)
// uint scatter(uint src, uint mask)
// AggressiveInlining
uint scatter(uint src, uint mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ParallelBitDeposit(System.UInt32,System.UInt32)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
// ulong scatter(ulong src, ulong mask)
// AggressiveInlining
ulong scatter(ulong src, ulong mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi2/X64::ParallelBitDeposit(System.UInt64,System.UInt64)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
