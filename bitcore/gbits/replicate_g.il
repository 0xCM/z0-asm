// T Z0.gbits::replicate<T>(T,System.Byte,System.Byte,System.Int32)
// byte replicate<byte>(byte src, byte i0, byte i1, int reps)
// AggressiveInlining
byte replicate<byte>(byte src, byte i0, byte i1, int reps)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: ldarg.3
    IL_0009: call System.UInt64 Z0.Bits::replicate(System.UInt64,System.Byte,System.Byte,System.Int32)
    IL_000E: ldloca.s V_0
    IL_0010: initobj T
    IL_0016: ldloc.0
    IL_0017: call T zfunc::convert<T>(System.UInt64,T)
    IL_001C: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::replicate<T>(T,System.Byte,System.Byte,System.Int32)
// ushort replicate<ushort>(ushort src, byte i0, byte i1, int reps)
// AggressiveInlining
ushort replicate<ushort>(ushort src, byte i0, byte i1, int reps)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: ldarg.3
    IL_0009: call System.UInt64 Z0.Bits::replicate(System.UInt64,System.Byte,System.Byte,System.Int32)
    IL_000E: ldloca.s V_0
    IL_0010: initobj T
    IL_0016: ldloc.0
    IL_0017: call T zfunc::convert<T>(System.UInt64,T)
    IL_001C: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::replicate<T>(T,System.Byte,System.Byte,System.Int32)
// uint replicate<uint>(uint src, byte i0, byte i1, int reps)
// AggressiveInlining
uint replicate<uint>(uint src, byte i0, byte i1, int reps)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: ldarg.3
    IL_0009: call System.UInt64 Z0.Bits::replicate(System.UInt64,System.Byte,System.Byte,System.Int32)
    IL_000E: ldloca.s V_0
    IL_0010: initobj T
    IL_0016: ldloc.0
    IL_0017: call T zfunc::convert<T>(System.UInt64,T)
    IL_001C: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::replicate<T>(T,System.Byte,System.Byte,System.Int32)
// ulong replicate<ulong>(ulong src, byte i0, byte i1, int reps)
// AggressiveInlining
ulong replicate<ulong>(ulong src, byte i0, byte i1, int reps)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: ldarg.3
    IL_0009: call System.UInt64 Z0.Bits::replicate(System.UInt64,System.Byte,System.Byte,System.Int32)
    IL_000E: ldloca.s V_0
    IL_0010: initobj T
    IL_0016: ldloc.0
    IL_0017: call T zfunc::convert<T>(System.UInt64,T)
    IL_001C: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::replicate<T>(T)
// byte replicate<byte>(byte src)
// AggressiveInlining
byte replicate<byte>(byte src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 Z0.gbits::msbpos<T>(T)
    IL_0006: conv.u1
    IL_0007: stloc.0
    IL_0008: call System.Int32 zfunc::bitsize<T>()
    IL_000D: ldloc.0
    IL_000E: ldc.i4.1
    IL_000F: add
    IL_0010: div
    IL_0011: ldc.i4.1
    IL_0012: add
    IL_0013: stloc.1
    IL_0014: ldarg.0
    IL_0015: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_001A: ldc.i4.0
    IL_001B: ldloc.0
    IL_001C: ldloc.1
    IL_001D: call System.UInt64 Z0.Bits::replicate(System.UInt64,System.Byte,System.Byte,System.Int32)
    IL_0022: stloc.2
    IL_0023: ldloc.2
    IL_0024: ldloca.s V_3
    IL_0026: initobj T
    IL_002C: ldloc.3
    IL_002D: call T zfunc::convert<T>(System.UInt64,T)
    IL_0032: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::replicate<T>(T)
// ushort replicate<ushort>(ushort src)
// AggressiveInlining
ushort replicate<ushort>(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 Z0.gbits::msbpos<T>(T)
    IL_0006: conv.u1
    IL_0007: stloc.0
    IL_0008: call System.Int32 zfunc::bitsize<T>()
    IL_000D: ldloc.0
    IL_000E: ldc.i4.1
    IL_000F: add
    IL_0010: div
    IL_0011: ldc.i4.1
    IL_0012: add
    IL_0013: stloc.1
    IL_0014: ldarg.0
    IL_0015: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_001A: ldc.i4.0
    IL_001B: ldloc.0
    IL_001C: ldloc.1
    IL_001D: call System.UInt64 Z0.Bits::replicate(System.UInt64,System.Byte,System.Byte,System.Int32)
    IL_0022: stloc.2
    IL_0023: ldloc.2
    IL_0024: ldloca.s V_3
    IL_0026: initobj T
    IL_002C: ldloc.3
    IL_002D: call T zfunc::convert<T>(System.UInt64,T)
    IL_0032: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::replicate<T>(T)
// uint replicate<uint>(uint src)
// AggressiveInlining
uint replicate<uint>(uint src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 Z0.gbits::msbpos<T>(T)
    IL_0006: conv.u1
    IL_0007: stloc.0
    IL_0008: call System.Int32 zfunc::bitsize<T>()
    IL_000D: ldloc.0
    IL_000E: ldc.i4.1
    IL_000F: add
    IL_0010: div
    IL_0011: ldc.i4.1
    IL_0012: add
    IL_0013: stloc.1
    IL_0014: ldarg.0
    IL_0015: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_001A: ldc.i4.0
    IL_001B: ldloc.0
    IL_001C: ldloc.1
    IL_001D: call System.UInt64 Z0.Bits::replicate(System.UInt64,System.Byte,System.Byte,System.Int32)
    IL_0022: stloc.2
    IL_0023: ldloc.2
    IL_0024: ldloca.s V_3
    IL_0026: initobj T
    IL_002C: ldloc.3
    IL_002D: call T zfunc::convert<T>(System.UInt64,T)
    IL_0032: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::replicate<T>(T)
// ulong replicate<ulong>(ulong src)
// AggressiveInlining
ulong replicate<ulong>(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 Z0.gbits::msbpos<T>(T)
    IL_0006: conv.u1
    IL_0007: stloc.0
    IL_0008: call System.Int32 zfunc::bitsize<T>()
    IL_000D: ldloc.0
    IL_000E: ldc.i4.1
    IL_000F: add
    IL_0010: div
    IL_0011: ldc.i4.1
    IL_0012: add
    IL_0013: stloc.1
    IL_0014: ldarg.0
    IL_0015: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_001A: ldc.i4.0
    IL_001B: ldloc.0
    IL_001C: ldloc.1
    IL_001D: call System.UInt64 Z0.Bits::replicate(System.UInt64,System.Byte,System.Byte,System.Int32)
    IL_0022: stloc.2
    IL_0023: ldloc.2
    IL_0024: ldloca.s V_3
    IL_0026: initobj T
    IL_002C: ldloc.3
    IL_002D: call T zfunc::convert<T>(System.UInt64,T)
    IL_0032: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::replicate<T>(System.Byte)
// byte replicate<byte>(byte src)
// AggressiveInlining
byte replicate<byte>(byte src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: ldc.i4.0
    IL_0003: ldc.i4.7
    IL_0004: call System.Int32 zfunc::bitsize<T>()
    IL_0009: ldc.i4.8
    IL_000A: div
    IL_000B: call System.UInt64 Z0.Bits::replicate(System.UInt64,System.Byte,System.Byte,System.Int32)
    IL_0010: ldloca.s V_0
    IL_0012: initobj T
    IL_0018: ldloc.0
    IL_0019: call T zfunc::convert<T>(System.UInt64,T)
    IL_001E: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::replicate<T>(System.Byte)
// ushort replicate<ushort>(byte src)
// AggressiveInlining
ushort replicate<ushort>(byte src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: ldc.i4.0
    IL_0003: ldc.i4.7
    IL_0004: call System.Int32 zfunc::bitsize<T>()
    IL_0009: ldc.i4.8
    IL_000A: div
    IL_000B: call System.UInt64 Z0.Bits::replicate(System.UInt64,System.Byte,System.Byte,System.Int32)
    IL_0010: ldloca.s V_0
    IL_0012: initobj T
    IL_0018: ldloc.0
    IL_0019: call T zfunc::convert<T>(System.UInt64,T)
    IL_001E: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::replicate<T>(System.Byte)
// uint replicate<uint>(byte src)
// AggressiveInlining
uint replicate<uint>(byte src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: ldc.i4.0
    IL_0003: ldc.i4.7
    IL_0004: call System.Int32 zfunc::bitsize<T>()
    IL_0009: ldc.i4.8
    IL_000A: div
    IL_000B: call System.UInt64 Z0.Bits::replicate(System.UInt64,System.Byte,System.Byte,System.Int32)
    IL_0010: ldloca.s V_0
    IL_0012: initobj T
    IL_0018: ldloc.0
    IL_0019: call T zfunc::convert<T>(System.UInt64,T)
    IL_001E: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::replicate<T>(System.Byte)
// ulong replicate<ulong>(byte src)
// AggressiveInlining
ulong replicate<ulong>(byte src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: ldc.i4.0
    IL_0003: ldc.i4.7
    IL_0004: call System.Int32 zfunc::bitsize<T>()
    IL_0009: ldc.i4.8
    IL_000A: div
    IL_000B: call System.UInt64 Z0.Bits::replicate(System.UInt64,System.Byte,System.Byte,System.Int32)
    IL_0010: ldloca.s V_0
    IL_0012: initobj T
    IL_0018: ldloc.0
    IL_0019: call T zfunc::convert<T>(System.UInt64,T)
    IL_001E: ret
}
------------------------------------------------------------------------------------------------------------------------
