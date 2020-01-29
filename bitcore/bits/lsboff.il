// System.Byte Z0.Bits::lsboff(System.Byte)
// byte lsboff(byte src)
// AggressiveInlining
byte lsboff(byte src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::ResetLowestSetBit(System.UInt32)
    IL_0006: conv.u1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.Bits::lsboff(System.UInt16)
// ushort lsboff(ushort src)
// AggressiveInlining
ushort lsboff(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::ResetLowestSetBit(System.UInt32)
    IL_0006: conv.u2
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::lsboff(System.UInt32)
// uint lsboff(uint src)
// AggressiveInlining
uint lsboff(uint src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::ResetLowestSetBit(System.UInt32)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::lsboff(System.UInt64)
// ulong lsboff(ulong src)
// AggressiveInlining
ulong lsboff(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::ResetLowestSetBit(System.UInt64)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
