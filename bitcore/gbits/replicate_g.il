// Id := 100663662, Name := T Z0.gbits::replicate<T>(System.Byte)
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
// Id := 100663662, Name := T Z0.gbits::replicate<T>(System.Byte)
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
// Id := 100663662, Name := T Z0.gbits::replicate<T>(System.Byte)
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
// Id := 100663662, Name := T Z0.gbits::replicate<T>(System.Byte)
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
