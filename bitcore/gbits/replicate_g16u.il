// Id := 100663661, Name := T Z0.gbits::replicate<T>(T)
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
