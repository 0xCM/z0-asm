// System.Int32 Z0.Bits::msbpos(System.Byte)
// int msbpos(byte src)
// AggressiveInlining
int msbpos(byte src)
{
    IL_0000: call System.Int32 zfunc::bitsize<System.Byte>()
    IL_0005: ldc.i4.1
    IL_0006: sub
    IL_0007: ldarg.0
    IL_0008: call System.Int32 Z0.Bits::nlz(System.Byte)
    IL_000D: sub
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.Bits::msbpos(System.UInt16)
// int msbpos(ushort src)
// AggressiveInlining
int msbpos(ushort src)
{
    IL_0000: call System.Int32 zfunc::bitsize<System.UInt16>()
    IL_0005: ldc.i4.1
    IL_0006: sub
    IL_0007: ldarg.0
    IL_0008: call System.Int32 Z0.Bits::nlz(System.UInt16)
    IL_000D: sub
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.Bits::msbpos(System.UInt32)
// int msbpos(uint src)
// AggressiveInlining
int msbpos(uint src)
{
    IL_0000: call System.Int32 zfunc::bitsize<System.UInt32>()
    IL_0005: ldc.i4.1
    IL_0006: sub
    IL_0007: ldarg.0
    IL_0008: call System.Int32 Z0.Bits::nlz(System.UInt32)
    IL_000D: sub
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.Bits::msbpos(System.UInt64)
// int msbpos(ulong src)
// AggressiveInlining
int msbpos(ulong src)
{
    IL_0000: call System.Int32 zfunc::bitsize<System.UInt64>()
    IL_0005: ldc.i4.1
    IL_0006: sub
    IL_0007: ldarg.0
    IL_0008: call System.Int32 Z0.Bits::nlz(System.UInt64)
    IL_000D: sub
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
