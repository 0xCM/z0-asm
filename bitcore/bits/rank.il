// Id := 100663501, Name := System.UInt32 Z0.Bits::rank(System.Byte,System.Int32)
// uint rank(byte src, int pos)
// AggressiveInlining
uint rank(byte src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: ldarg.1
    IL_0003: conv.u1
    IL_0004: call System.Byte Z0.Bits::between(System.Byte,System.Byte,System.Byte)
    IL_0009: call System.UInt32 Z0.Bits::pop(System.Byte)
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663502, Name := System.UInt32 Z0.Bits::rank(System.UInt16,System.Int32)
// uint rank(ushort src, int pos)
// AggressiveInlining
uint rank(ushort src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: ldarg.1
    IL_0003: conv.u1
    IL_0004: call System.UInt16 Z0.Bits::between(System.UInt16,System.Byte,System.Byte)
    IL_0009: call System.UInt32 Z0.Bits::pop(System.UInt16)
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663503, Name := System.UInt32 Z0.Bits::rank(System.UInt32,System.Int32)
// uint rank(uint src, int pos)
// AggressiveInlining
uint rank(uint src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: ldarg.1
    IL_0003: conv.u1
    IL_0004: call System.UInt32 Z0.Bits::between(System.UInt32,System.Byte,System.Byte)
    IL_0009: call System.UInt32 Z0.Bits::pop(System.UInt32)
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663504, Name := System.UInt32 Z0.Bits::rank(System.UInt64,System.Int32)
// uint rank(ulong src, int pos)
// AggressiveInlining
uint rank(ulong src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: ldarg.1
    IL_0003: conv.u1
    IL_0004: call System.UInt64 Z0.Bits::between(System.UInt64,System.Byte,System.Byte)
    IL_0009: call System.UInt32 Z0.Bits::pop(System.UInt64)
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
