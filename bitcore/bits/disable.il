// Id := 100663385, Name := System.SByte Z0.Bits::disable(System.SByte,System.Int32)
// sbyte disable(sbyte src, int pos)
// AggressiveInlining
sbyte disable(sbyte src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: conv.i1
    IL_0008: not
    IL_0009: conv.u1
    IL_000A: and
    IL_000B: conv.i1
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663386, Name := System.Byte Z0.Bits::disable(System.Byte,System.Int32)
// byte disable(byte src, int pos)
// AggressiveInlining
byte disable(byte src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: conv.u1
    IL_0008: not
    IL_0009: conv.u1
    IL_000A: and
    IL_000B: conv.u1
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663387, Name := System.Int16 Z0.Bits::disable(System.Int16,System.Int32)
// Int16 disable(Int16 src, int pos)
// AggressiveInlining
Int16 disable(Int16 src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: conv.i2
    IL_0008: not
    IL_0009: conv.i2
    IL_000A: and
    IL_000B: conv.i2
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663388, Name := System.UInt16 Z0.Bits::disable(System.UInt16,System.Int32)
// ushort disable(ushort src, int pos)
// AggressiveInlining
ushort disable(ushort src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: conv.u2
    IL_0008: not
    IL_0009: conv.u2
    IL_000A: and
    IL_000B: conv.u2
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663389, Name := System.Int32 Z0.Bits::disable(System.Int32,System.Int32)
// int disable(int src, int pos)
// AggressiveInlining
int disable(int src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: not
    IL_0008: and
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663390, Name := System.UInt32 Z0.Bits::disable(System.UInt32,System.Int32)
// uint disable(uint src, int pos)
// AggressiveInlining
uint disable(uint src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: not
    IL_0008: and
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663391, Name := System.Int64 Z0.Bits::disable(System.Int64,System.Int32)
// long disable(long src, int pos)
// AggressiveInlining
long disable(long src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: conv.i8
    IL_0003: ldarg.1
    IL_0004: ldc.i4.s 63
    IL_0006: and
    IL_0007: shl
    IL_0008: not
    IL_0009: and
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663392, Name := System.UInt64 Z0.Bits::disable(System.UInt64,System.Int32)
// ulong disable(ulong src, int pos)
// AggressiveInlining
ulong disable(ulong src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: conv.i8
    IL_0003: ldarg.1
    IL_0004: ldc.i4.s 63
    IL_0006: and
    IL_0007: shl
    IL_0008: not
    IL_0009: and
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663393, Name := System.Single Z0.Bits::disable(System.Single,System.Int32)
// float disable(float src, int pos)
// AggressiveInlining
float disable(float src, int pos)
{
    IL_0000: ldarga.s src
    IL_0002: call System.Int32& System.Runtime.CompilerServices.Unsafe::As<System.Single,System.Int32>(System.Single&)
    IL_0007: stloc.0
    IL_0008: ldc.i4.1
    IL_0009: ldarg.1
    IL_000A: ldc.i4.s 31
    IL_000C: and
    IL_000D: shl
    IL_000E: stloc.1
    IL_000F: ldloc.0
    IL_0010: ldloc.0
    IL_0011: ldind.i4
    IL_0012: ldloc.1
    IL_0013: not
    IL_0014: and
    IL_0015: stind.i4
    IL_0016: ldarg.0
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663394, Name := System.Double Z0.Bits::disable(System.Double,System.Int32)
// double disable(double src, int pos)
// AggressiveInlining
double disable(double src, int pos)
{
    IL_0000: ldarga.s src
    IL_0002: call System.Int64& System.Runtime.CompilerServices.Unsafe::As<System.Double,System.Int64>(System.Double&)
    IL_0007: stloc.0
    IL_0008: ldc.i4.1
    IL_0009: conv.i8
    IL_000A: ldarg.1
    IL_000B: ldc.i4.s 63
    IL_000D: and
    IL_000E: shl
    IL_000F: stloc.1
    IL_0010: ldloc.0
    IL_0011: ldloc.0
    IL_0012: ldind.i8
    IL_0013: ldloc.1
    IL_0014: not
    IL_0015: and
    IL_0016: stind.i8
    IL_0017: ldarg.0
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
