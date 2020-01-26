// Id := 100663375, Name := System.SByte Z0.Bits::enable(System.SByte,System.Int32)
// sbyte enable(sbyte src, int pos)
// AggressiveInlining
sbyte enable(sbyte src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: conv.i1
    IL_0008: or
    IL_0009: conv.i1
    IL_000A: dup
    IL_000B: starg.s src
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663376, Name := System.Byte Z0.Bits::enable(System.Byte,System.Int32)
// byte enable(byte src, int pos)
// AggressiveInlining
byte enable(byte src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: conv.u1
    IL_0008: or
    IL_0009: conv.u1
    IL_000A: dup
    IL_000B: starg.s src
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663377, Name := System.Int16 Z0.Bits::enable(System.Int16,System.Int32)
// short enable(short src, int pos)
// AggressiveInlining
short enable(short src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: conv.i2
    IL_0008: or
    IL_0009: conv.i2
    IL_000A: dup
    IL_000B: starg.s src
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663378, Name := System.UInt16 Z0.Bits::enable(System.UInt16,System.Int32)
// ushort enable(ushort src, int pos)
// AggressiveInlining
ushort enable(ushort src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: conv.u2
    IL_0008: or
    IL_0009: conv.u2
    IL_000A: dup
    IL_000B: starg.s src
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663379, Name := System.Int32 Z0.Bits::enable(System.Int32,System.Int32)
// int enable(int src, int pos)
// AggressiveInlining
int enable(int src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: or
    IL_0008: dup
    IL_0009: starg.s src
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663380, Name := System.UInt32 Z0.Bits::enable(System.UInt32,System.Int32)
// uint enable(uint src, int pos)
// AggressiveInlining
uint enable(uint src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: or
    IL_0008: dup
    IL_0009: starg.s src
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663381, Name := System.Int64 Z0.Bits::enable(System.Int64,System.Int32)
// long enable(long src, int pos)
// AggressiveInlining
long enable(long src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: conv.i8
    IL_0003: ldarg.1
    IL_0004: ldc.i4.s 63
    IL_0006: and
    IL_0007: shl
    IL_0008: or
    IL_0009: dup
    IL_000A: starg.s src
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663382, Name := System.UInt64 Z0.Bits::enable(System.UInt64,System.Int32)
// ulong enable(ulong src, int pos)
// AggressiveInlining
ulong enable(ulong src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: conv.i8
    IL_0003: ldarg.1
    IL_0004: ldc.i4.s 63
    IL_0006: and
    IL_0007: shl
    IL_0008: or
    IL_0009: dup
    IL_000A: starg.s src
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663383, Name := System.Single Z0.Bits::enable(System.Single,System.Int32)
// float enable(float src, int pos)
// AggressiveInlining
float enable(float src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.BitConverter::SingleToInt32Bits(System.Single)
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: ldc.i4.1
    IL_0009: ldarg.1
    IL_000A: ldc.i4.s 31
    IL_000C: and
    IL_000D: shl
    IL_000E: or
    IL_000F: stloc.0
    IL_0010: ldloc.0
    IL_0011: call System.Single System.BitConverter::Int32BitsToSingle(System.Int32)
    IL_0016: starg.s src
    IL_0018: ldarg.0
    IL_0019: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663384, Name := System.Double Z0.Bits::enable(System.Double,System.Int32)
// double enable(double src, int pos)
// AggressiveInlining
double enable(double src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int64 System.BitConverter::DoubleToInt64Bits(System.Double)
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: ldc.i4.1
    IL_0009: conv.i8
    IL_000A: ldarg.1
    IL_000B: ldc.i4.s 63
    IL_000D: and
    IL_000E: shl
    IL_000F: or
    IL_0010: stloc.0
    IL_0011: ldloc.0
    IL_0012: call System.Double System.BitConverter::Int64BitsToDouble(System.Int64)
    IL_0017: starg.s src
    IL_0019: ldarg.0
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
