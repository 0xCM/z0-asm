// System.Int32 Z0.Bits::nlz(System.Byte)
// int nlz(byte src)
// AggressiveInlining
int nlz(byte src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Lzcnt::LeadingZeroCount(System.UInt32)
    IL_0006: ldc.i4.s 24
    IL_0008: sub
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.Bits::nlz(System.UInt16)
// int nlz(ushort src)
// AggressiveInlining
int nlz(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Lzcnt::LeadingZeroCount(System.UInt32)
    IL_0006: ldc.i4.s 16
    IL_0008: sub
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.Bits::nlz(System.UInt32)
// int nlz(uint src)
// AggressiveInlining
int nlz(uint src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Lzcnt::LeadingZeroCount(System.UInt32)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.Bits::nlz(System.UInt64)
// int nlz(ulong src)
// AggressiveInlining
int nlz(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Lzcnt/X64::LeadingZeroCount(System.UInt64)
    IL_0006: conv.i4
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
