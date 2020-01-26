// Id := 100663464, Name := System.SByte Z0.math::pow(System.SByte,System.UInt32)
// sbyte pow(sbyte b, uint exp)
// AggressiveInlining
sbyte pow(sbyte b, uint exp)
{
    IL_0000: ldarg.1
    IL_0001: brtrue.s IL_0005
    IL_0003: ldc.i4.1
    IL_0004: ret
    IL_0005: ldc.i4.1
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: ldc.i4.1
    IL_0009: and
    IL_000A: brfalse.s IL_0011
    IL_000C: ldloc.0
    IL_000D: ldarg.0
    IL_000E: mul
    IL_000F: conv.i1
    IL_0010: stloc.0
    IL_0011: ldarg.1
    IL_0012: ldc.i4.1
    IL_0013: shr.un
    IL_0014: starg.s exp
    IL_0016: ldarg.1
    IL_0017: brfalse.s IL_0021
    IL_0019: ldarg.0
    IL_001A: ldarg.0
    IL_001B: mul
    IL_001C: conv.i1
    IL_001D: starg.s b
    IL_001F: br.s IL_0007
    IL_0021: ldloc.0
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663465, Name := System.Byte Z0.math::pow(System.Byte,System.UInt32)
// byte pow(byte b, uint exp)
// AggressiveInlining
byte pow(byte b, uint exp)
{
    IL_0000: ldarg.1
    IL_0001: brtrue.s IL_0005
    IL_0003: ldc.i4.1
    IL_0004: ret
    IL_0005: ldc.i4.1
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: ldc.i4.1
    IL_0009: and
    IL_000A: brfalse.s IL_0011
    IL_000C: ldloc.0
    IL_000D: ldarg.0
    IL_000E: mul
    IL_000F: conv.u1
    IL_0010: stloc.0
    IL_0011: ldarg.1
    IL_0012: ldc.i4.1
    IL_0013: shr.un
    IL_0014: starg.s exp
    IL_0016: ldarg.1
    IL_0017: brfalse.s IL_0021
    IL_0019: ldarg.0
    IL_001A: ldarg.0
    IL_001B: mul
    IL_001C: conv.u1
    IL_001D: starg.s b
    IL_001F: br.s IL_0007
    IL_0021: ldloc.0
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663466, Name := System.Int16 Z0.math::pow(System.Int16,System.UInt32)
// Int16 pow(Int16 b, uint exp)
// AggressiveInlining
Int16 pow(Int16 b, uint exp)
{
    IL_0000: ldarg.1
    IL_0001: brtrue.s IL_0005
    IL_0003: ldc.i4.1
    IL_0004: ret
    IL_0005: ldc.i4.1
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: ldc.i4.1
    IL_0009: and
    IL_000A: brfalse.s IL_0011
    IL_000C: ldloc.0
    IL_000D: ldarg.0
    IL_000E: mul
    IL_000F: conv.i2
    IL_0010: stloc.0
    IL_0011: ldarg.1
    IL_0012: ldc.i4.1
    IL_0013: shr.un
    IL_0014: starg.s exp
    IL_0016: ldarg.1
    IL_0017: brfalse.s IL_0021
    IL_0019: ldarg.0
    IL_001A: ldarg.0
    IL_001B: mul
    IL_001C: conv.i2
    IL_001D: starg.s b
    IL_001F: br.s IL_0007
    IL_0021: ldloc.0
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663467, Name := System.UInt16 Z0.math::pow(System.UInt16,System.UInt32)
// ushort pow(ushort b, uint exp)
// AggressiveInlining
ushort pow(ushort b, uint exp)
{
    IL_0000: ldarg.1
    IL_0001: brtrue.s IL_0005
    IL_0003: ldc.i4.1
    IL_0004: ret
    IL_0005: ldc.i4.1
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: ldc.i4.1
    IL_0009: and
    IL_000A: brfalse.s IL_0011
    IL_000C: ldloc.0
    IL_000D: ldarg.0
    IL_000E: mul
    IL_000F: conv.u2
    IL_0010: stloc.0
    IL_0011: ldarg.1
    IL_0012: ldc.i4.1
    IL_0013: shr.un
    IL_0014: starg.s exp
    IL_0016: ldarg.1
    IL_0017: brfalse.s IL_0021
    IL_0019: ldarg.0
    IL_001A: ldarg.0
    IL_001B: mul
    IL_001C: conv.u2
    IL_001D: starg.s b
    IL_001F: br.s IL_0007
    IL_0021: ldloc.0
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663468, Name := System.Int32 Z0.math::pow(System.Int32,System.UInt32)
// int pow(int b, uint exp)
// AggressiveInlining
int pow(int b, uint exp)
{
    IL_0000: ldarg.1
    IL_0001: brtrue.s IL_0005
    IL_0003: ldc.i4.1
    IL_0004: ret
    IL_0005: ldc.i4.1
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: ldc.i4.1
    IL_0009: and
    IL_000A: brfalse.s IL_0010
    IL_000C: ldloc.0
    IL_000D: ldarg.0
    IL_000E: mul
    IL_000F: stloc.0
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: shr.un
    IL_0013: starg.s exp
    IL_0015: ldarg.1
    IL_0016: brfalse.s IL_001F
    IL_0018: ldarg.0
    IL_0019: ldarg.0
    IL_001A: mul
    IL_001B: starg.s b
    IL_001D: br.s IL_0007
    IL_001F: ldloc.0
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663469, Name := System.UInt32 Z0.math::pow(System.UInt32,System.UInt32)
// uint pow(uint b, uint exp)
// AggressiveInlining
uint pow(uint b, uint exp)
{
    IL_0000: ldarg.1
    IL_0001: brtrue.s IL_0005
    IL_0003: ldc.i4.1
    IL_0004: ret
    IL_0005: ldc.i4.1
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: ldc.i4.1
    IL_0009: and
    IL_000A: brfalse.s IL_0010
    IL_000C: ldloc.0
    IL_000D: ldarg.0
    IL_000E: mul
    IL_000F: stloc.0
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: shr.un
    IL_0013: starg.s exp
    IL_0015: ldarg.1
    IL_0016: brfalse.s IL_001F
    IL_0018: ldarg.0
    IL_0019: ldarg.0
    IL_001A: mul
    IL_001B: starg.s b
    IL_001D: br.s IL_0007
    IL_001F: ldloc.0
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663470, Name := System.Int64 Z0.math::pow(System.Int64,System.UInt32)
// long pow(long b, uint exp)
// AggressiveInlining
long pow(long b, uint exp)
{
    IL_0000: ldarg.1
    IL_0001: brtrue.s IL_0006
    IL_0003: ldc.i4.1
    IL_0004: conv.i8
    IL_0005: ret
    IL_0006: ldc.i4.1
    IL_0007: conv.i8
    IL_0008: stloc.0
    IL_0009: ldarg.1
    IL_000A: ldc.i4.1
    IL_000B: and
    IL_000C: brfalse.s IL_0012
    IL_000E: ldloc.0
    IL_000F: ldarg.0
    IL_0010: mul
    IL_0011: stloc.0
    IL_0012: ldarg.1
    IL_0013: ldc.i4.1
    IL_0014: shr.un
    IL_0015: starg.s exp
    IL_0017: ldarg.1
    IL_0018: brfalse.s IL_0021
    IL_001A: ldarg.0
    IL_001B: ldarg.0
    IL_001C: mul
    IL_001D: starg.s b
    IL_001F: br.s IL_0009
    IL_0021: ldloc.0
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663471, Name := System.UInt64 Z0.math::pow(System.UInt64,System.UInt32)
// ulong pow(ulong b, uint exp)
// AggressiveInlining
ulong pow(ulong b, uint exp)
{
    IL_0000: ldarg.1
    IL_0001: brtrue.s IL_0006
    IL_0003: ldc.i4.1
    IL_0004: conv.i8
    IL_0005: ret
    IL_0006: ldc.i4.1
    IL_0007: conv.i8
    IL_0008: stloc.0
    IL_0009: ldarg.1
    IL_000A: ldc.i4.1
    IL_000B: and
    IL_000C: brfalse.s IL_0012
    IL_000E: ldloc.0
    IL_000F: ldarg.0
    IL_0010: mul
    IL_0011: stloc.0
    IL_0012: ldarg.1
    IL_0013: ldc.i4.1
    IL_0014: shr.un
    IL_0015: starg.s exp
    IL_0017: ldarg.1
    IL_0018: brfalse.s IL_0021
    IL_001A: ldarg.0
    IL_001B: ldarg.0
    IL_001C: mul
    IL_001D: starg.s b
    IL_001F: br.s IL_0009
    IL_0021: ldloc.0
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
