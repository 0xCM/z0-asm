// Id := 100663395, Name := System.Byte Z0.Bits::gather(System.Byte,System.Byte)
// byte gather(byte src, byte mask)
// AggressiveInlining
byte gather(byte src, byte mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ParallelBitExtract(System.UInt32,System.UInt32)
    IL_0007: conv.u1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663396, Name := System.UInt16 Z0.Bits::gather(System.UInt16,System.UInt16)
// ushort gather(ushort src, ushort mask)
// AggressiveInlining
ushort gather(ushort src, ushort mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ParallelBitExtract(System.UInt32,System.UInt32)
    IL_0007: conv.u2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663397, Name := System.UInt32 Z0.Bits::gather(System.UInt32,System.UInt32)
// uint gather(uint src, uint mask)
// AggressiveInlining
uint gather(uint src, uint mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ParallelBitExtract(System.UInt32,System.UInt32)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663398, Name := System.UInt64 Z0.Bits::gather(System.UInt64,System.UInt64)
// ulong gather(ulong src, ulong mask)
// AggressiveInlining
ulong gather(ulong src, ulong mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi2/X64::ParallelBitExtract(System.UInt64,System.UInt64)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
