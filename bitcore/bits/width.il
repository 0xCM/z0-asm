// Id := 100663585, Name := System.Int32 Z0.Bits::width(System.Byte)
// int width(byte src)
// AggressiveInlining
int width(byte src)
{
    IL_0000: ldc.i4.8
    IL_0001: ldarg.0
    IL_0002: call System.Int32 Z0.Bits::nlz(System.Byte)
    IL_0007: sub
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663586, Name := System.Int32 Z0.Bits::width(System.UInt16)
// int width(ushort src)
// AggressiveInlining
int width(ushort src)
{
    IL_0000: ldc.i4.s 16
    IL_0002: ldarg.0
    IL_0003: call System.Int32 Z0.Bits::nlz(System.UInt16)
    IL_0008: sub
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663587, Name := System.Int32 Z0.Bits::width(System.UInt32)
// int width(uint src)
// AggressiveInlining
int width(uint src)
{
    IL_0000: ldc.i4.s 32
    IL_0002: ldarg.0
    IL_0003: call System.Int32 Z0.Bits::nlz(System.UInt32)
    IL_0008: sub
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663588, Name := System.Int32 Z0.Bits::width(System.UInt64)
// int width(ulong src)
// AggressiveInlining
int width(ulong src)
{
    IL_0000: ldc.i4.s 64
    IL_0002: ldarg.0
    IL_0003: call System.Int32 Z0.Bits::nlz(System.UInt64)
    IL_0008: sub
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
