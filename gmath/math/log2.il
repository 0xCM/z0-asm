// Id := 100663416, Name := System.UInt64 Z0.math::log2(System.UInt64)
// ulong log2(ulong src)
// AggressiveInlining
ulong log2(ulong src)
{
    IL_0000: ldc.i4.0
    IL_0001: conv.i8
    IL_0002: stloc.0
    IL_0003: ldarg.0
    IL_0004: stloc.1
    IL_0005: ldloca.s V_0
    IL_0007: ldloca.s V_1
    IL_0009: ldc.i4.s 32
    IL_000B: conv.i8
    IL_000C: call System.UInt64& Z0.math::log2(System.UInt64&,System.UInt64&,System.UInt64)
    IL_0011: pop
    IL_0012: ldloca.s V_0
    IL_0014: ldloca.s V_1
    IL_0016: ldc.i4.s 16
    IL_0018: conv.i8
    IL_0019: call System.UInt64& Z0.math::log2(System.UInt64&,System.UInt64&,System.UInt64)
    IL_001E: pop
    IL_001F: ldloca.s V_0
    IL_0021: ldloca.s V_1
    IL_0023: ldc.i4.8
    IL_0024: conv.i8
    IL_0025: call System.UInt64& Z0.math::log2(System.UInt64&,System.UInt64&,System.UInt64)
    IL_002A: pop
    IL_002B: ldloca.s V_0
    IL_002D: ldloca.s V_1
    IL_002F: ldc.i4.4
    IL_0030: conv.i8
    IL_0031: call System.UInt64& Z0.math::log2(System.UInt64&,System.UInt64&,System.UInt64)
    IL_0036: pop
    IL_0037: ldloca.s V_0
    IL_0039: ldloca.s V_1
    IL_003B: ldc.i4.2
    IL_003C: conv.i8
    IL_003D: call System.UInt64& Z0.math::log2(System.UInt64&,System.UInt64&,System.UInt64)
    IL_0042: pop
    IL_0043: ldloc.1
    IL_0044: ldc.i4.2
    IL_0045: conv.i8
    IL_0046: blt.un.s IL_004D
    IL_0048: ldloc.0
    IL_0049: ldc.i4.1
    IL_004A: conv.i8
    IL_004B: or
    IL_004C: stloc.0
    IL_004D: ldloc.0
    IL_004E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663417, Name := System.UInt64 Z0.math::log2(System.Int32)
// ulong log2(int src)
// AggressiveInlining
ulong log2(int src)
{
    IL_0000: ldarg.0
    IL_0001: conv.i8
    IL_0002: call System.UInt64 Z0.math::log2(System.UInt64)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663418, Name := System.UInt32 Z0.math::log2(System.UInt32)
// uint log2(uint src)
// AggressiveInlining
uint log2(uint src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: call System.UInt64 Z0.math::log2(System.UInt64)
    IL_0007: conv.u4
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663419, Name := System.Byte Z0.math::log2(System.Byte)
// byte log2(byte src)
// AggressiveInlining
byte log2(byte src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: call System.UInt64 Z0.math::log2(System.UInt64)
    IL_0007: conv.u1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663420, Name := System.UInt16 Z0.math::log2(System.UInt16)
// ushort log2(ushort src)
// AggressiveInlining
ushort log2(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: call System.UInt64 Z0.math::log2(System.UInt64)
    IL_0007: conv.u2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
