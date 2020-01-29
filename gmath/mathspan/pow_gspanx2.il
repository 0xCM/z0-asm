// System.Span`1<T> Z0.mathspan::pow<T>(System.ReadOnlySpan`1<T>,System.UInt32,System.Span`1<T>)
// Span<byte> pow<byte>(ReadOnlySpan<byte> src, uint exp, Span<byte> dst)
// AggressiveInlining
Span<byte> pow<byte>(ReadOnlySpan<byte> src, uint exp, Span<byte> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.2
    IL_0010: call T& zfunc::head<T>(System.Span`1<T>)
    IL_0015: stloc.2
    IL_0016: ldc.i4.0
    IL_0017: stloc.3
    IL_0018: br.s IL_003C
    IL_001A: ldloc.2
    IL_001B: ldloc.3
    IL_001C: call T& zfunc::seek<T>(T&,System.Int32)
    IL_0021: ldloc.1
    IL_0022: ldloc.3
    IL_0023: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0028: ldobj T
    IL_002D: ldarg.1
    IL_002E: call T Z0.gmath::pow<T>(T,System.UInt32)
    IL_0033: stobj T
    IL_0038: ldloc.3
    IL_0039: ldc.i4.1
    IL_003A: add
    IL_003B: stloc.3
    IL_003C: ldloc.3
    IL_003D: ldloc.0
    IL_003E: blt.s IL_001A
    IL_0040: ldarg.2
    IL_0041: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.mathspan::pow<T>(System.ReadOnlySpan`1<T>,System.UInt32,System.Span`1<T>)
// Span<sbyte> pow<sbyte>(ReadOnlySpan<sbyte> src, uint exp, Span<sbyte> dst)
// AggressiveInlining
Span<sbyte> pow<sbyte>(ReadOnlySpan<sbyte> src, uint exp, Span<sbyte> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.2
    IL_0010: call T& zfunc::head<T>(System.Span`1<T>)
    IL_0015: stloc.2
    IL_0016: ldc.i4.0
    IL_0017: stloc.3
    IL_0018: br.s IL_003C
    IL_001A: ldloc.2
    IL_001B: ldloc.3
    IL_001C: call T& zfunc::seek<T>(T&,System.Int32)
    IL_0021: ldloc.1
    IL_0022: ldloc.3
    IL_0023: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0028: ldobj T
    IL_002D: ldarg.1
    IL_002E: call T Z0.gmath::pow<T>(T,System.UInt32)
    IL_0033: stobj T
    IL_0038: ldloc.3
    IL_0039: ldc.i4.1
    IL_003A: add
    IL_003B: stloc.3
    IL_003C: ldloc.3
    IL_003D: ldloc.0
    IL_003E: blt.s IL_001A
    IL_0040: ldarg.2
    IL_0041: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.mathspan::pow<T>(System.ReadOnlySpan`1<T>,System.UInt32,System.Span`1<T>)
// Span<ushort> pow<ushort>(ReadOnlySpan<ushort> src, uint exp, Span<ushort> dst)
// AggressiveInlining
Span<ushort> pow<ushort>(ReadOnlySpan<ushort> src, uint exp, Span<ushort> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.2
    IL_0010: call T& zfunc::head<T>(System.Span`1<T>)
    IL_0015: stloc.2
    IL_0016: ldc.i4.0
    IL_0017: stloc.3
    IL_0018: br.s IL_003C
    IL_001A: ldloc.2
    IL_001B: ldloc.3
    IL_001C: call T& zfunc::seek<T>(T&,System.Int32)
    IL_0021: ldloc.1
    IL_0022: ldloc.3
    IL_0023: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0028: ldobj T
    IL_002D: ldarg.1
    IL_002E: call T Z0.gmath::pow<T>(T,System.UInt32)
    IL_0033: stobj T
    IL_0038: ldloc.3
    IL_0039: ldc.i4.1
    IL_003A: add
    IL_003B: stloc.3
    IL_003C: ldloc.3
    IL_003D: ldloc.0
    IL_003E: blt.s IL_001A
    IL_0040: ldarg.2
    IL_0041: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.mathspan::pow<T>(System.ReadOnlySpan`1<T>,System.UInt32,System.Span`1<T>)
// Span<short> pow<short>(ReadOnlySpan<short> src, uint exp, Span<short> dst)
// AggressiveInlining
Span<short> pow<short>(ReadOnlySpan<short> src, uint exp, Span<short> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.2
    IL_0010: call T& zfunc::head<T>(System.Span`1<T>)
    IL_0015: stloc.2
    IL_0016: ldc.i4.0
    IL_0017: stloc.3
    IL_0018: br.s IL_003C
    IL_001A: ldloc.2
    IL_001B: ldloc.3
    IL_001C: call T& zfunc::seek<T>(T&,System.Int32)
    IL_0021: ldloc.1
    IL_0022: ldloc.3
    IL_0023: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0028: ldobj T
    IL_002D: ldarg.1
    IL_002E: call T Z0.gmath::pow<T>(T,System.UInt32)
    IL_0033: stobj T
    IL_0038: ldloc.3
    IL_0039: ldc.i4.1
    IL_003A: add
    IL_003B: stloc.3
    IL_003C: ldloc.3
    IL_003D: ldloc.0
    IL_003E: blt.s IL_001A
    IL_0040: ldarg.2
    IL_0041: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.mathspan::pow<T>(System.ReadOnlySpan`1<T>,System.UInt32,System.Span`1<T>)
// Span<uint> pow<uint>(ReadOnlySpan<uint> src, uint exp, Span<uint> dst)
// AggressiveInlining
Span<uint> pow<uint>(ReadOnlySpan<uint> src, uint exp, Span<uint> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.2
    IL_0010: call T& zfunc::head<T>(System.Span`1<T>)
    IL_0015: stloc.2
    IL_0016: ldc.i4.0
    IL_0017: stloc.3
    IL_0018: br.s IL_003C
    IL_001A: ldloc.2
    IL_001B: ldloc.3
    IL_001C: call T& zfunc::seek<T>(T&,System.Int32)
    IL_0021: ldloc.1
    IL_0022: ldloc.3
    IL_0023: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0028: ldobj T
    IL_002D: ldarg.1
    IL_002E: call T Z0.gmath::pow<T>(T,System.UInt32)
    IL_0033: stobj T
    IL_0038: ldloc.3
    IL_0039: ldc.i4.1
    IL_003A: add
    IL_003B: stloc.3
    IL_003C: ldloc.3
    IL_003D: ldloc.0
    IL_003E: blt.s IL_001A
    IL_0040: ldarg.2
    IL_0041: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.mathspan::pow<T>(System.ReadOnlySpan`1<T>,System.UInt32,System.Span`1<T>)
// Span<int> pow<int>(ReadOnlySpan<int> src, uint exp, Span<int> dst)
// AggressiveInlining
Span<int> pow<int>(ReadOnlySpan<int> src, uint exp, Span<int> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.2
    IL_0010: call T& zfunc::head<T>(System.Span`1<T>)
    IL_0015: stloc.2
    IL_0016: ldc.i4.0
    IL_0017: stloc.3
    IL_0018: br.s IL_003C
    IL_001A: ldloc.2
    IL_001B: ldloc.3
    IL_001C: call T& zfunc::seek<T>(T&,System.Int32)
    IL_0021: ldloc.1
    IL_0022: ldloc.3
    IL_0023: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0028: ldobj T
    IL_002D: ldarg.1
    IL_002E: call T Z0.gmath::pow<T>(T,System.UInt32)
    IL_0033: stobj T
    IL_0038: ldloc.3
    IL_0039: ldc.i4.1
    IL_003A: add
    IL_003B: stloc.3
    IL_003C: ldloc.3
    IL_003D: ldloc.0
    IL_003E: blt.s IL_001A
    IL_0040: ldarg.2
    IL_0041: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.mathspan::pow<T>(System.ReadOnlySpan`1<T>,System.UInt32,System.Span`1<T>)
// Span<ulong> pow<ulong>(ReadOnlySpan<ulong> src, uint exp, Span<ulong> dst)
// AggressiveInlining
Span<ulong> pow<ulong>(ReadOnlySpan<ulong> src, uint exp, Span<ulong> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.2
    IL_0010: call T& zfunc::head<T>(System.Span`1<T>)
    IL_0015: stloc.2
    IL_0016: ldc.i4.0
    IL_0017: stloc.3
    IL_0018: br.s IL_003C
    IL_001A: ldloc.2
    IL_001B: ldloc.3
    IL_001C: call T& zfunc::seek<T>(T&,System.Int32)
    IL_0021: ldloc.1
    IL_0022: ldloc.3
    IL_0023: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0028: ldobj T
    IL_002D: ldarg.1
    IL_002E: call T Z0.gmath::pow<T>(T,System.UInt32)
    IL_0033: stobj T
    IL_0038: ldloc.3
    IL_0039: ldc.i4.1
    IL_003A: add
    IL_003B: stloc.3
    IL_003C: ldloc.3
    IL_003D: ldloc.0
    IL_003E: blt.s IL_001A
    IL_0040: ldarg.2
    IL_0041: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.mathspan::pow<T>(System.ReadOnlySpan`1<T>,System.UInt32,System.Span`1<T>)
// Span<long> pow<long>(ReadOnlySpan<long> src, uint exp, Span<long> dst)
// AggressiveInlining
Span<long> pow<long>(ReadOnlySpan<long> src, uint exp, Span<long> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.2
    IL_0010: call T& zfunc::head<T>(System.Span`1<T>)
    IL_0015: stloc.2
    IL_0016: ldc.i4.0
    IL_0017: stloc.3
    IL_0018: br.s IL_003C
    IL_001A: ldloc.2
    IL_001B: ldloc.3
    IL_001C: call T& zfunc::seek<T>(T&,System.Int32)
    IL_0021: ldloc.1
    IL_0022: ldloc.3
    IL_0023: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0028: ldobj T
    IL_002D: ldarg.1
    IL_002E: call T Z0.gmath::pow<T>(T,System.UInt32)
    IL_0033: stobj T
    IL_0038: ldloc.3
    IL_0039: ldc.i4.1
    IL_003A: add
    IL_003B: stloc.3
    IL_003C: ldloc.3
    IL_003D: ldloc.0
    IL_003E: blt.s IL_001A
    IL_0040: ldarg.2
    IL_0041: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.mathspan::pow<T>(System.ReadOnlySpan`1<T>,System.UInt32,System.Span`1<T>)
// Span<float> pow<float>(ReadOnlySpan<float> src, uint exp, Span<float> dst)
// AggressiveInlining
Span<float> pow<float>(ReadOnlySpan<float> src, uint exp, Span<float> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.2
    IL_0010: call T& zfunc::head<T>(System.Span`1<T>)
    IL_0015: stloc.2
    IL_0016: ldc.i4.0
    IL_0017: stloc.3
    IL_0018: br.s IL_003C
    IL_001A: ldloc.2
    IL_001B: ldloc.3
    IL_001C: call T& zfunc::seek<T>(T&,System.Int32)
    IL_0021: ldloc.1
    IL_0022: ldloc.3
    IL_0023: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0028: ldobj T
    IL_002D: ldarg.1
    IL_002E: call T Z0.gmath::pow<T>(T,System.UInt32)
    IL_0033: stobj T
    IL_0038: ldloc.3
    IL_0039: ldc.i4.1
    IL_003A: add
    IL_003B: stloc.3
    IL_003C: ldloc.3
    IL_003D: ldloc.0
    IL_003E: blt.s IL_001A
    IL_0040: ldarg.2
    IL_0041: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<T> Z0.mathspan::pow<T>(System.ReadOnlySpan`1<T>,System.UInt32,System.Span`1<T>)
// Span<double> pow<double>(ReadOnlySpan<double> src, uint exp, Span<double> dst)
// AggressiveInlining
Span<double> pow<double>(ReadOnlySpan<double> src, uint exp, Span<double> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.2
    IL_0010: call T& zfunc::head<T>(System.Span`1<T>)
    IL_0015: stloc.2
    IL_0016: ldc.i4.0
    IL_0017: stloc.3
    IL_0018: br.s IL_003C
    IL_001A: ldloc.2
    IL_001B: ldloc.3
    IL_001C: call T& zfunc::seek<T>(T&,System.Int32)
    IL_0021: ldloc.1
    IL_0022: ldloc.3
    IL_0023: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0028: ldobj T
    IL_002D: ldarg.1
    IL_002E: call T Z0.gmath::pow<T>(T,System.UInt32)
    IL_0033: stobj T
    IL_0038: ldloc.3
    IL_0039: ldc.i4.1
    IL_003A: add
    IL_003B: stloc.3
    IL_003C: ldloc.3
    IL_003D: ldloc.0
    IL_003E: blt.s IL_001A
    IL_0040: ldarg.2
    IL_0041: ret
}
------------------------------------------------------------------------------------------------------------------------
