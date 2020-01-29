// System.Void Z0.gmath::decrements<T>(System.Int32,T&)
// void decrements<byte>(int count, ref byte dst)
// AggressiveInlining
void decrements<byte>(int count, ref byte dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0023
    IL_0004: ldarg.1
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldloc.0
    IL_000C: ldloca.s V_1
    IL_000E: initobj T
    IL_0014: ldloc.1
    IL_0015: call T zfunc::convert<T>(System.Int32,T)
    IL_001A: stobj T
    IL_001F: ldloc.0
    IL_0020: ldc.i4.1
    IL_0021: add
    IL_0022: stloc.0
    IL_0023: ldloc.0
    IL_0024: ldarg.0
    IL_0025: blt.s IL_0004
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(System.Int32,T&)
// void decrements<sbyte>(int count, ref sbyte dst)
// AggressiveInlining
void decrements<sbyte>(int count, ref sbyte dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0023
    IL_0004: ldarg.1
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldloc.0
    IL_000C: ldloca.s V_1
    IL_000E: initobj T
    IL_0014: ldloc.1
    IL_0015: call T zfunc::convert<T>(System.Int32,T)
    IL_001A: stobj T
    IL_001F: ldloc.0
    IL_0020: ldc.i4.1
    IL_0021: add
    IL_0022: stloc.0
    IL_0023: ldloc.0
    IL_0024: ldarg.0
    IL_0025: blt.s IL_0004
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(System.Int32,T&)
// void decrements<ushort>(int count, ref ushort dst)
// AggressiveInlining
void decrements<ushort>(int count, ref ushort dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0023
    IL_0004: ldarg.1
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldloc.0
    IL_000C: ldloca.s V_1
    IL_000E: initobj T
    IL_0014: ldloc.1
    IL_0015: call T zfunc::convert<T>(System.Int32,T)
    IL_001A: stobj T
    IL_001F: ldloc.0
    IL_0020: ldc.i4.1
    IL_0021: add
    IL_0022: stloc.0
    IL_0023: ldloc.0
    IL_0024: ldarg.0
    IL_0025: blt.s IL_0004
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(System.Int32,T&)
// void decrements<short>(int count, ref short dst)
// AggressiveInlining
void decrements<short>(int count, ref short dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0023
    IL_0004: ldarg.1
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldloc.0
    IL_000C: ldloca.s V_1
    IL_000E: initobj T
    IL_0014: ldloc.1
    IL_0015: call T zfunc::convert<T>(System.Int32,T)
    IL_001A: stobj T
    IL_001F: ldloc.0
    IL_0020: ldc.i4.1
    IL_0021: add
    IL_0022: stloc.0
    IL_0023: ldloc.0
    IL_0024: ldarg.0
    IL_0025: blt.s IL_0004
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(System.Int32,T&)
// void decrements<uint>(int count, ref uint dst)
// AggressiveInlining
void decrements<uint>(int count, ref uint dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0023
    IL_0004: ldarg.1
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldloc.0
    IL_000C: ldloca.s V_1
    IL_000E: initobj T
    IL_0014: ldloc.1
    IL_0015: call T zfunc::convert<T>(System.Int32,T)
    IL_001A: stobj T
    IL_001F: ldloc.0
    IL_0020: ldc.i4.1
    IL_0021: add
    IL_0022: stloc.0
    IL_0023: ldloc.0
    IL_0024: ldarg.0
    IL_0025: blt.s IL_0004
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(System.Int32,T&)
// void decrements<int>(int count, ref int dst)
// AggressiveInlining
void decrements<int>(int count, ref int dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0023
    IL_0004: ldarg.1
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldloc.0
    IL_000C: ldloca.s V_1
    IL_000E: initobj T
    IL_0014: ldloc.1
    IL_0015: call T zfunc::convert<T>(System.Int32,T)
    IL_001A: stobj T
    IL_001F: ldloc.0
    IL_0020: ldc.i4.1
    IL_0021: add
    IL_0022: stloc.0
    IL_0023: ldloc.0
    IL_0024: ldarg.0
    IL_0025: blt.s IL_0004
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(System.Int32,T&)
// void decrements<ulong>(int count, ref ulong dst)
// AggressiveInlining
void decrements<ulong>(int count, ref ulong dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0023
    IL_0004: ldarg.1
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldloc.0
    IL_000C: ldloca.s V_1
    IL_000E: initobj T
    IL_0014: ldloc.1
    IL_0015: call T zfunc::convert<T>(System.Int32,T)
    IL_001A: stobj T
    IL_001F: ldloc.0
    IL_0020: ldc.i4.1
    IL_0021: add
    IL_0022: stloc.0
    IL_0023: ldloc.0
    IL_0024: ldarg.0
    IL_0025: blt.s IL_0004
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(System.Int32,T&)
// void decrements<long>(int count, ref long dst)
// AggressiveInlining
void decrements<long>(int count, ref long dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0023
    IL_0004: ldarg.1
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldloc.0
    IL_000C: ldloca.s V_1
    IL_000E: initobj T
    IL_0014: ldloc.1
    IL_0015: call T zfunc::convert<T>(System.Int32,T)
    IL_001A: stobj T
    IL_001F: ldloc.0
    IL_0020: ldc.i4.1
    IL_0021: add
    IL_0022: stloc.0
    IL_0023: ldloc.0
    IL_0024: ldarg.0
    IL_0025: blt.s IL_0004
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(T,System.Int32,T&)
// void decrements<byte>(byte first, int count, ref byte dst)
// AggressiveInlining
void decrements<byte>(byte first, int count, ref byte dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0029
    IL_0004: ldarg.2
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: call T Z0.gmath::sub<T>(T,T)
    IL_0020: stobj T
    IL_0025: ldloc.0
    IL_0026: ldc.i4.1
    IL_0027: add
    IL_0028: stloc.0
    IL_0029: ldloc.0
    IL_002A: ldarg.1
    IL_002B: blt.s IL_0004
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(T,System.Int32,T&)
// void decrements<sbyte>(sbyte first, int count, ref sbyte dst)
// AggressiveInlining
void decrements<sbyte>(sbyte first, int count, ref sbyte dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0029
    IL_0004: ldarg.2
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: call T Z0.gmath::sub<T>(T,T)
    IL_0020: stobj T
    IL_0025: ldloc.0
    IL_0026: ldc.i4.1
    IL_0027: add
    IL_0028: stloc.0
    IL_0029: ldloc.0
    IL_002A: ldarg.1
    IL_002B: blt.s IL_0004
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(T,System.Int32,T&)
// void decrements<ushort>(ushort first, int count, ref ushort dst)
// AggressiveInlining
void decrements<ushort>(ushort first, int count, ref ushort dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0029
    IL_0004: ldarg.2
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: call T Z0.gmath::sub<T>(T,T)
    IL_0020: stobj T
    IL_0025: ldloc.0
    IL_0026: ldc.i4.1
    IL_0027: add
    IL_0028: stloc.0
    IL_0029: ldloc.0
    IL_002A: ldarg.1
    IL_002B: blt.s IL_0004
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(T,System.Int32,T&)
// void decrements<short>(short first, int count, ref short dst)
// AggressiveInlining
void decrements<short>(short first, int count, ref short dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0029
    IL_0004: ldarg.2
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: call T Z0.gmath::sub<T>(T,T)
    IL_0020: stobj T
    IL_0025: ldloc.0
    IL_0026: ldc.i4.1
    IL_0027: add
    IL_0028: stloc.0
    IL_0029: ldloc.0
    IL_002A: ldarg.1
    IL_002B: blt.s IL_0004
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(T,System.Int32,T&)
// void decrements<uint>(uint first, int count, ref uint dst)
// AggressiveInlining
void decrements<uint>(uint first, int count, ref uint dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0029
    IL_0004: ldarg.2
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: call T Z0.gmath::sub<T>(T,T)
    IL_0020: stobj T
    IL_0025: ldloc.0
    IL_0026: ldc.i4.1
    IL_0027: add
    IL_0028: stloc.0
    IL_0029: ldloc.0
    IL_002A: ldarg.1
    IL_002B: blt.s IL_0004
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(T,System.Int32,T&)
// void decrements<int>(int first, int count, ref int dst)
// AggressiveInlining
void decrements<int>(int first, int count, ref int dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0029
    IL_0004: ldarg.2
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: call T Z0.gmath::sub<T>(T,T)
    IL_0020: stobj T
    IL_0025: ldloc.0
    IL_0026: ldc.i4.1
    IL_0027: add
    IL_0028: stloc.0
    IL_0029: ldloc.0
    IL_002A: ldarg.1
    IL_002B: blt.s IL_0004
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(T,System.Int32,T&)
// void decrements<ulong>(ulong first, int count, ref ulong dst)
// AggressiveInlining
void decrements<ulong>(ulong first, int count, ref ulong dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0029
    IL_0004: ldarg.2
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: call T Z0.gmath::sub<T>(T,T)
    IL_0020: stobj T
    IL_0025: ldloc.0
    IL_0026: ldc.i4.1
    IL_0027: add
    IL_0028: stloc.0
    IL_0029: ldloc.0
    IL_002A: ldarg.1
    IL_002B: blt.s IL_0004
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::decrements<T>(T,System.Int32,T&)
// void decrements<long>(long first, int count, ref long dst)
// AggressiveInlining
void decrements<long>(long first, int count, ref long dst)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0029
    IL_0004: ldarg.2
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: ldloca.s V_1
    IL_000F: initobj T
    IL_0015: ldloc.1
    IL_0016: call T zfunc::convert<T>(System.Int32,T)
    IL_001B: call T Z0.gmath::sub<T>(T,T)
    IL_0020: stobj T
    IL_0025: ldloc.0
    IL_0026: ldc.i4.1
    IL_0027: add
    IL_0028: stloc.0
    IL_0029: ldloc.0
    IL_002A: ldarg.1
    IL_002B: blt.s IL_0004
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
