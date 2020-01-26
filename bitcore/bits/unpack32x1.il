// Id := 100663578, Name := System.Void Z0.Bits::unpack32x1(System.UInt32,System.Span`1<System.Byte>)
// void unpack32x1(uint src, Span<byte> dst)
// AggressiveInlining
void unpack32x1(uint src, Span<byte> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64& zfunc::head64<System.Byte>(System.Span`1<System.Byte>)
    IL_0007: call System.Void Z0.Bits::unpack32x1(System.UInt32,System.UInt64&)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663581, Name := System.Void Z0.Bits::unpack32x1(System.UInt32,Z0.Block256`1<System.Byte>&)
// void unpack32x1(uint src, in Block256<byte> dst)
// AggressiveInlining
void unpack32x1(uint src, in Block256<byte> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Span`1<System.Byte> Z0.Block256`1<System.Byte>::get_Data()
    IL_0007: call System.Void Z0.Bits::unpack32x1(System.UInt32,System.Span`1<System.Byte>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663583, Name := System.Void Z0.Bits::unpack32x1(System.UInt32,System.UInt64&)
// void unpack32x1(uint src, ref ulong dst)
// AggressiveInlining
void unpack32x1(uint src, ref ulong dst)
{
    IL_0000: ldarg.0
    IL_0001: conv.u2
    IL_0002: ldarg.1
    IL_0003: call System.Void Z0.Bits::unpack16x1(System.UInt16,System.UInt64&)
    IL_0008: ldarg.0
    IL_0009: ldc.i4.s 16
    IL_000B: shr.un
    IL_000C: conv.u2
    IL_000D: ldarg.1
    IL_000E: ldc.i4.s 16
    IL_0010: conv.i8
    IL_0011: call System.UInt64& zfunc::seekb<System.UInt64>(System.UInt64&,System.Int64)
    IL_0016: call System.Void Z0.Bits::unpack16x1(System.UInt16,System.UInt64&)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
