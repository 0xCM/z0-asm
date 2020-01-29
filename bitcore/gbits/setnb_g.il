// T Z0.gbits::setnb<T>(T,System.Byte,Z0.bit)
// byte setnb<byte>(byte src, byte pos, bit value)
// AggressiveInlining
byte setnb<byte>(byte src, byte pos, bit value)
{
    IL_0000: ldloca.s V_3
    IL_0002: initobj T
    IL_0008: ldloc.3
    IL_0009: call T Z0.gmath::one<T>(T)
    IL_000E: ldarg.1
    IL_000F: call T Z0.gmath::sll<T>(T,System.Byte)
    IL_0014: call T Z0.gmath::negate<T>(T)
    IL_0019: stloc.0
    IL_001A: ldarg.2
    IL_001B: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0020: ldarg.1
    IL_0021: ldc.i4.s 31
    IL_0023: and
    IL_0024: shl
    IL_0025: call T zfunc::convert<System.UInt32,T>(System.UInt32)
    IL_002A: stloc.1
    IL_002B: ldarg.0
    IL_002C: ldloc.0
    IL_002D: call T Z0.gmath::and<T>(T,T)
    IL_0032: stloc.2
    IL_0033: ldloc.2
    IL_0034: ldloc.1
    IL_0035: call T Z0.gmath::and<T>(T,T)
    IL_003A: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::setnb<T>(T,System.Byte,Z0.bit)
// sbyte setnb<sbyte>(sbyte src, byte pos, bit value)
// AggressiveInlining
sbyte setnb<sbyte>(sbyte src, byte pos, bit value)
{
    IL_0000: ldloca.s V_3
    IL_0002: initobj T
    IL_0008: ldloc.3
    IL_0009: call T Z0.gmath::one<T>(T)
    IL_000E: ldarg.1
    IL_000F: call T Z0.gmath::sll<T>(T,System.Byte)
    IL_0014: call T Z0.gmath::negate<T>(T)
    IL_0019: stloc.0
    IL_001A: ldarg.2
    IL_001B: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0020: ldarg.1
    IL_0021: ldc.i4.s 31
    IL_0023: and
    IL_0024: shl
    IL_0025: call T zfunc::convert<System.UInt32,T>(System.UInt32)
    IL_002A: stloc.1
    IL_002B: ldarg.0
    IL_002C: ldloc.0
    IL_002D: call T Z0.gmath::and<T>(T,T)
    IL_0032: stloc.2
    IL_0033: ldloc.2
    IL_0034: ldloc.1
    IL_0035: call T Z0.gmath::and<T>(T,T)
    IL_003A: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::setnb<T>(T,System.Byte,Z0.bit)
// ushort setnb<ushort>(ushort src, byte pos, bit value)
// AggressiveInlining
ushort setnb<ushort>(ushort src, byte pos, bit value)
{
    IL_0000: ldloca.s V_3
    IL_0002: initobj T
    IL_0008: ldloc.3
    IL_0009: call T Z0.gmath::one<T>(T)
    IL_000E: ldarg.1
    IL_000F: call T Z0.gmath::sll<T>(T,System.Byte)
    IL_0014: call T Z0.gmath::negate<T>(T)
    IL_0019: stloc.0
    IL_001A: ldarg.2
    IL_001B: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0020: ldarg.1
    IL_0021: ldc.i4.s 31
    IL_0023: and
    IL_0024: shl
    IL_0025: call T zfunc::convert<System.UInt32,T>(System.UInt32)
    IL_002A: stloc.1
    IL_002B: ldarg.0
    IL_002C: ldloc.0
    IL_002D: call T Z0.gmath::and<T>(T,T)
    IL_0032: stloc.2
    IL_0033: ldloc.2
    IL_0034: ldloc.1
    IL_0035: call T Z0.gmath::and<T>(T,T)
    IL_003A: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::setnb<T>(T,System.Byte,Z0.bit)
// short setnb<short>(short src, byte pos, bit value)
// AggressiveInlining
short setnb<short>(short src, byte pos, bit value)
{
    IL_0000: ldloca.s V_3
    IL_0002: initobj T
    IL_0008: ldloc.3
    IL_0009: call T Z0.gmath::one<T>(T)
    IL_000E: ldarg.1
    IL_000F: call T Z0.gmath::sll<T>(T,System.Byte)
    IL_0014: call T Z0.gmath::negate<T>(T)
    IL_0019: stloc.0
    IL_001A: ldarg.2
    IL_001B: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0020: ldarg.1
    IL_0021: ldc.i4.s 31
    IL_0023: and
    IL_0024: shl
    IL_0025: call T zfunc::convert<System.UInt32,T>(System.UInt32)
    IL_002A: stloc.1
    IL_002B: ldarg.0
    IL_002C: ldloc.0
    IL_002D: call T Z0.gmath::and<T>(T,T)
    IL_0032: stloc.2
    IL_0033: ldloc.2
    IL_0034: ldloc.1
    IL_0035: call T Z0.gmath::and<T>(T,T)
    IL_003A: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::setnb<T>(T,System.Byte,Z0.bit)
// uint setnb<uint>(uint src, byte pos, bit value)
// AggressiveInlining
uint setnb<uint>(uint src, byte pos, bit value)
{
    IL_0000: ldloca.s V_3
    IL_0002: initobj T
    IL_0008: ldloc.3
    IL_0009: call T Z0.gmath::one<T>(T)
    IL_000E: ldarg.1
    IL_000F: call T Z0.gmath::sll<T>(T,System.Byte)
    IL_0014: call T Z0.gmath::negate<T>(T)
    IL_0019: stloc.0
    IL_001A: ldarg.2
    IL_001B: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0020: ldarg.1
    IL_0021: ldc.i4.s 31
    IL_0023: and
    IL_0024: shl
    IL_0025: call T zfunc::convert<System.UInt32,T>(System.UInt32)
    IL_002A: stloc.1
    IL_002B: ldarg.0
    IL_002C: ldloc.0
    IL_002D: call T Z0.gmath::and<T>(T,T)
    IL_0032: stloc.2
    IL_0033: ldloc.2
    IL_0034: ldloc.1
    IL_0035: call T Z0.gmath::and<T>(T,T)
    IL_003A: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::setnb<T>(T,System.Byte,Z0.bit)
// int setnb<int>(int src, byte pos, bit value)
// AggressiveInlining
int setnb<int>(int src, byte pos, bit value)
{
    IL_0000: ldloca.s V_3
    IL_0002: initobj T
    IL_0008: ldloc.3
    IL_0009: call T Z0.gmath::one<T>(T)
    IL_000E: ldarg.1
    IL_000F: call T Z0.gmath::sll<T>(T,System.Byte)
    IL_0014: call T Z0.gmath::negate<T>(T)
    IL_0019: stloc.0
    IL_001A: ldarg.2
    IL_001B: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0020: ldarg.1
    IL_0021: ldc.i4.s 31
    IL_0023: and
    IL_0024: shl
    IL_0025: call T zfunc::convert<System.UInt32,T>(System.UInt32)
    IL_002A: stloc.1
    IL_002B: ldarg.0
    IL_002C: ldloc.0
    IL_002D: call T Z0.gmath::and<T>(T,T)
    IL_0032: stloc.2
    IL_0033: ldloc.2
    IL_0034: ldloc.1
    IL_0035: call T Z0.gmath::and<T>(T,T)
    IL_003A: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::setnb<T>(T,System.Byte,Z0.bit)
// ulong setnb<ulong>(ulong src, byte pos, bit value)
// AggressiveInlining
ulong setnb<ulong>(ulong src, byte pos, bit value)
{
    IL_0000: ldloca.s V_3
    IL_0002: initobj T
    IL_0008: ldloc.3
    IL_0009: call T Z0.gmath::one<T>(T)
    IL_000E: ldarg.1
    IL_000F: call T Z0.gmath::sll<T>(T,System.Byte)
    IL_0014: call T Z0.gmath::negate<T>(T)
    IL_0019: stloc.0
    IL_001A: ldarg.2
    IL_001B: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0020: ldarg.1
    IL_0021: ldc.i4.s 31
    IL_0023: and
    IL_0024: shl
    IL_0025: call T zfunc::convert<System.UInt32,T>(System.UInt32)
    IL_002A: stloc.1
    IL_002B: ldarg.0
    IL_002C: ldloc.0
    IL_002D: call T Z0.gmath::and<T>(T,T)
    IL_0032: stloc.2
    IL_0033: ldloc.2
    IL_0034: ldloc.1
    IL_0035: call T Z0.gmath::and<T>(T,T)
    IL_003A: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::setnb<T>(T,System.Byte,Z0.bit)
// long setnb<long>(long src, byte pos, bit value)
// AggressiveInlining
long setnb<long>(long src, byte pos, bit value)
{
    IL_0000: ldloca.s V_3
    IL_0002: initobj T
    IL_0008: ldloc.3
    IL_0009: call T Z0.gmath::one<T>(T)
    IL_000E: ldarg.1
    IL_000F: call T Z0.gmath::sll<T>(T,System.Byte)
    IL_0014: call T Z0.gmath::negate<T>(T)
    IL_0019: stloc.0
    IL_001A: ldarg.2
    IL_001B: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0020: ldarg.1
    IL_0021: ldc.i4.s 31
    IL_0023: and
    IL_0024: shl
    IL_0025: call T zfunc::convert<System.UInt32,T>(System.UInt32)
    IL_002A: stloc.1
    IL_002B: ldarg.0
    IL_002C: ldloc.0
    IL_002D: call T Z0.gmath::and<T>(T,T)
    IL_0032: stloc.2
    IL_0033: ldloc.2
    IL_0034: ldloc.1
    IL_0035: call T Z0.gmath::and<T>(T,T)
    IL_003A: ret
}
------------------------------------------------------------------------------------------------------------------------
