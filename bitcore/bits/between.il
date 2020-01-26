// Id := 100663309, Name := System.SByte Z0.Bits::between(System.SByte,System.Byte,System.Byte)
// sbyte between(sbyte src, byte k0, byte k1)
// AggressiveInlining
sbyte between(sbyte src, byte k0, byte k1)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.1
    IL_0004: sub
    IL_0005: ldc.i4.1
    IL_0006: add
    IL_0007: conv.u1
    IL_0008: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_000D: conv.i1
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663310, Name := System.Byte Z0.Bits::between(System.Byte,System.Byte,System.Byte)
// byte between(byte src, byte k0, byte k1)
// AggressiveInlining
byte between(byte src, byte k0, byte k1)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.1
    IL_0004: sub
    IL_0005: ldc.i4.1
    IL_0006: add
    IL_0007: conv.u1
    IL_0008: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_000D: conv.u1
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663311, Name := System.Int16 Z0.Bits::between(System.Int16,System.Byte,System.Byte)
// Int16 between(Int16 src, byte k0, byte k1)
// AggressiveInlining
Int16 between(Int16 src, byte k0, byte k1)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.1
    IL_0004: sub
    IL_0005: ldc.i4.1
    IL_0006: add
    IL_0007: conv.u1
    IL_0008: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_000D: conv.i2
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663312, Name := System.UInt16 Z0.Bits::between(System.UInt16,System.Byte,System.Byte)
// ushort between(ushort src, byte k0, byte k1)
// AggressiveInlining
ushort between(ushort src, byte k0, byte k1)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.1
    IL_0004: sub
    IL_0005: ldc.i4.1
    IL_0006: add
    IL_0007: conv.u1
    IL_0008: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_000D: conv.u2
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663313, Name := System.UInt32 Z0.Bits::between(System.UInt32,System.Byte,System.Byte)
// uint between(uint src, byte k0, byte k1)
// AggressiveInlining
uint between(uint src, byte k0, byte k1)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.1
    IL_0004: sub
    IL_0005: ldc.i4.1
    IL_0006: add
    IL_0007: conv.u1
    IL_0008: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663314, Name := System.Int32 Z0.Bits::between(System.Int32,System.Byte,System.Byte)
// int between(int src, byte k0, byte k1)
// AggressiveInlining
int between(int src, byte k0, byte k1)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.1
    IL_0004: sub
    IL_0005: ldc.i4.1
    IL_0006: add
    IL_0007: conv.u1
    IL_0008: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663315, Name := System.UInt64 Z0.Bits::between(System.UInt64,System.Byte,System.Byte)
// ulong between(ulong src, byte k0, byte k1)
// AggressiveInlining
ulong between(ulong src, byte k0, byte k1)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.1
    IL_0004: sub
    IL_0005: ldc.i4.1
    IL_0006: add
    IL_0007: conv.u1
    IL_0008: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::BitFieldExtract(System.UInt64,System.Byte,System.Byte)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663316, Name := System.Int64 Z0.Bits::between(System.Int64,System.Byte,System.Byte)
// long between(long src, byte k0, byte k1)
// AggressiveInlining
long between(long src, byte k0, byte k1)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.1
    IL_0004: sub
    IL_0005: ldc.i4.1
    IL_0006: add
    IL_0007: conv.u1
    IL_0008: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::BitFieldExtract(System.UInt64,System.Byte,System.Byte)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663317, Name := System.Single Z0.Bits::between(System.Single,System.Byte,System.Byte)
// float between(float src, byte k0, byte k1)
// AggressiveInlining
float between(float src, byte k0, byte k1)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.BitConverter::SingleToInt32Bits(System.Single)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call System.Int32 Z0.Bits::between(System.Int32,System.Byte,System.Byte)
    IL_000D: call System.Single System.BitConverter::Int32BitsToSingle(System.Int32)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663318, Name := System.Double Z0.Bits::between(System.Double,System.Byte,System.Byte)
// double between(double src, byte k0, byte k1)
// AggressiveInlining
double between(double src, byte k0, byte k1)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int64 System.BitConverter::DoubleToInt64Bits(System.Double)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call System.Int64 Z0.Bits::between(System.Int64,System.Byte,System.Byte)
    IL_000D: call System.Double System.BitConverter::Int64BitsToDouble(System.Int64)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
