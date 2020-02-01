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
