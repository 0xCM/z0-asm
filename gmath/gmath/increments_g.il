// System.Span`1<T> Z0.gmath::increments<T>(System.Span`1<T>)
// Span<byte> increments<byte>(Span<byte> dst)
// AggressiveInlining
Span<byte> increments<byte>(Span<byte> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldc.i4.0
    IL_0009: stloc.1
    IL_000A: br.s IL_002B
    IL_000C: ldarg.0
    IL_000D: ldloc.1
    IL_000E: call T& zfunc::seek<T>(System.Span`1<T>,System.Int32)
    IL_0013: ldloc.1
    IL_0014: ldloca.s V_2
    IL_0016: initobj T
    IL_001C: ldloc.2
    IL_001D: call T zfunc::convert<T>(System.Int32,T)
    IL_0022: stobj T
    IL_0027: ldloc.1
    IL_0028: ldc.i4.1
    IL_0029: add
    IL_002A: stloc.1
    IL_002B: ldloc.1
    IL_002C: ldloc.0
    IL_002D: blt.s IL_000C
    IL_002F: ldarg.0
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.gmath::increments<T>(System.Span`1<T>)
// Span<sbyte> increments<sbyte>(Span<sbyte> dst)
// AggressiveInlining
Span<sbyte> increments<sbyte>(Span<sbyte> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldc.i4.0
    IL_0009: stloc.1
    IL_000A: br.s IL_002B
    IL_000C: ldarg.0
    IL_000D: ldloc.1
    IL_000E: call T& zfunc::seek<T>(System.Span`1<T>,System.Int32)
    IL_0013: ldloc.1
    IL_0014: ldloca.s V_2
    IL_0016: initobj T
    IL_001C: ldloc.2
    IL_001D: call T zfunc::convert<T>(System.Int32,T)
    IL_0022: stobj T
    IL_0027: ldloc.1
    IL_0028: ldc.i4.1
    IL_0029: add
    IL_002A: stloc.1
    IL_002B: ldloc.1
    IL_002C: ldloc.0
    IL_002D: blt.s IL_000C
    IL_002F: ldarg.0
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.gmath::increments<T>(System.Span`1<T>)
// Span<ushort> increments<ushort>(Span<ushort> dst)
// AggressiveInlining
Span<ushort> increments<ushort>(Span<ushort> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldc.i4.0
    IL_0009: stloc.1
    IL_000A: br.s IL_002B
    IL_000C: ldarg.0
    IL_000D: ldloc.1
    IL_000E: call T& zfunc::seek<T>(System.Span`1<T>,System.Int32)
    IL_0013: ldloc.1
    IL_0014: ldloca.s V_2
    IL_0016: initobj T
    IL_001C: ldloc.2
    IL_001D: call T zfunc::convert<T>(System.Int32,T)
    IL_0022: stobj T
    IL_0027: ldloc.1
    IL_0028: ldc.i4.1
    IL_0029: add
    IL_002A: stloc.1
    IL_002B: ldloc.1
    IL_002C: ldloc.0
    IL_002D: blt.s IL_000C
    IL_002F: ldarg.0
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.gmath::increments<T>(System.Span`1<T>)
// Span<short> increments<short>(Span<short> dst)
// AggressiveInlining
Span<short> increments<short>(Span<short> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldc.i4.0
    IL_0009: stloc.1
    IL_000A: br.s IL_002B
    IL_000C: ldarg.0
    IL_000D: ldloc.1
    IL_000E: call T& zfunc::seek<T>(System.Span`1<T>,System.Int32)
    IL_0013: ldloc.1
    IL_0014: ldloca.s V_2
    IL_0016: initobj T
    IL_001C: ldloc.2
    IL_001D: call T zfunc::convert<T>(System.Int32,T)
    IL_0022: stobj T
    IL_0027: ldloc.1
    IL_0028: ldc.i4.1
    IL_0029: add
    IL_002A: stloc.1
    IL_002B: ldloc.1
    IL_002C: ldloc.0
    IL_002D: blt.s IL_000C
    IL_002F: ldarg.0
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.gmath::increments<T>(System.Span`1<T>)
// Span<uint> increments<uint>(Span<uint> dst)
// AggressiveInlining
Span<uint> increments<uint>(Span<uint> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldc.i4.0
    IL_0009: stloc.1
    IL_000A: br.s IL_002B
    IL_000C: ldarg.0
    IL_000D: ldloc.1
    IL_000E: call T& zfunc::seek<T>(System.Span`1<T>,System.Int32)
    IL_0013: ldloc.1
    IL_0014: ldloca.s V_2
    IL_0016: initobj T
    IL_001C: ldloc.2
    IL_001D: call T zfunc::convert<T>(System.Int32,T)
    IL_0022: stobj T
    IL_0027: ldloc.1
    IL_0028: ldc.i4.1
    IL_0029: add
    IL_002A: stloc.1
    IL_002B: ldloc.1
    IL_002C: ldloc.0
    IL_002D: blt.s IL_000C
    IL_002F: ldarg.0
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.gmath::increments<T>(System.Span`1<T>)
// Span<int> increments<int>(Span<int> dst)
// AggressiveInlining
Span<int> increments<int>(Span<int> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldc.i4.0
    IL_0009: stloc.1
    IL_000A: br.s IL_002B
    IL_000C: ldarg.0
    IL_000D: ldloc.1
    IL_000E: call T& zfunc::seek<T>(System.Span`1<T>,System.Int32)
    IL_0013: ldloc.1
    IL_0014: ldloca.s V_2
    IL_0016: initobj T
    IL_001C: ldloc.2
    IL_001D: call T zfunc::convert<T>(System.Int32,T)
    IL_0022: stobj T
    IL_0027: ldloc.1
    IL_0028: ldc.i4.1
    IL_0029: add
    IL_002A: stloc.1
    IL_002B: ldloc.1
    IL_002C: ldloc.0
    IL_002D: blt.s IL_000C
    IL_002F: ldarg.0
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.gmath::increments<T>(System.Span`1<T>)
// Span<ulong> increments<ulong>(Span<ulong> dst)
// AggressiveInlining
Span<ulong> increments<ulong>(Span<ulong> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldc.i4.0
    IL_0009: stloc.1
    IL_000A: br.s IL_002B
    IL_000C: ldarg.0
    IL_000D: ldloc.1
    IL_000E: call T& zfunc::seek<T>(System.Span`1<T>,System.Int32)
    IL_0013: ldloc.1
    IL_0014: ldloca.s V_2
    IL_0016: initobj T
    IL_001C: ldloc.2
    IL_001D: call T zfunc::convert<T>(System.Int32,T)
    IL_0022: stobj T
    IL_0027: ldloc.1
    IL_0028: ldc.i4.1
    IL_0029: add
    IL_002A: stloc.1
    IL_002B: ldloc.1
    IL_002C: ldloc.0
    IL_002D: blt.s IL_000C
    IL_002F: ldarg.0
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.gmath::increments<T>(System.Span`1<T>)
// Span<long> increments<long>(Span<long> dst)
// AggressiveInlining
Span<long> increments<long>(Span<long> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldc.i4.0
    IL_0009: stloc.1
    IL_000A: br.s IL_002B
    IL_000C: ldarg.0
    IL_000D: ldloc.1
    IL_000E: call T& zfunc::seek<T>(System.Span`1<T>,System.Int32)
    IL_0013: ldloc.1
    IL_0014: ldloca.s V_2
    IL_0016: initobj T
    IL_001C: ldloc.2
    IL_001D: call T zfunc::convert<T>(System.Int32,T)
    IL_0022: stobj T
    IL_0027: ldloc.1
    IL_0028: ldc.i4.1
    IL_0029: add
    IL_002A: stloc.1
    IL_002B: ldloc.1
    IL_002C: ldloc.0
    IL_002D: blt.s IL_000C
    IL_002F: ldarg.0
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gmath::increments<T>(System.Int32,T&)
// void increments<byte>(int count, ref byte dst)
// AggressiveInlining
void increments<byte>(int count, ref byte dst)
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
// System.Void Z0.gmath::increments<T>(System.Int32,T&)
// void increments<sbyte>(int count, ref sbyte dst)
// AggressiveInlining
void increments<sbyte>(int count, ref sbyte dst)
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
// System.Void Z0.gmath::increments<T>(System.Int32,T&)
// void increments<ushort>(int count, ref ushort dst)
// AggressiveInlining
void increments<ushort>(int count, ref ushort dst)
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
// System.Void Z0.gmath::increments<T>(System.Int32,T&)
// void increments<short>(int count, ref short dst)
// AggressiveInlining
void increments<short>(int count, ref short dst)
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
// System.Void Z0.gmath::increments<T>(System.Int32,T&)
// void increments<uint>(int count, ref uint dst)
// AggressiveInlining
void increments<uint>(int count, ref uint dst)
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
// System.Void Z0.gmath::increments<T>(System.Int32,T&)
// void increments<int>(int count, ref int dst)
// AggressiveInlining
void increments<int>(int count, ref int dst)
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
// System.Void Z0.gmath::increments<T>(System.Int32,T&)
// void increments<ulong>(int count, ref ulong dst)
// AggressiveInlining
void increments<ulong>(int count, ref ulong dst)
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
// System.Void Z0.gmath::increments<T>(System.Int32,T&)
// void increments<long>(int count, ref long dst)
// AggressiveInlining
void increments<long>(int count, ref long dst)
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
