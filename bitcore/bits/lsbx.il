// Id := 100663415, Name := System.Byte Z0.Bits::lsbx(System.Byte)
// byte lsbx(byte src)
// AggressiveInlining
byte lsbx(byte src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::ExtractLowestSetBit(System.UInt32)
    IL_0006: conv.u1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663416, Name := System.UInt16 Z0.Bits::lsbx(System.UInt16)
// ushort lsbx(ushort src)
// AggressiveInlining
ushort lsbx(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::ExtractLowestSetBit(System.UInt32)
    IL_0006: conv.u2
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663417, Name := System.UInt32 Z0.Bits::lsbx(System.UInt32)
// uint lsbx(uint src)
// AggressiveInlining
uint lsbx(uint src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::ExtractLowestSetBit(System.UInt32)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663418, Name := System.UInt64 Z0.Bits::lsbx(System.UInt64)
// ulong lsbx(ulong src)
// AggressiveInlining
ulong lsbx(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::ExtractLowestSetBit(System.UInt64)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
