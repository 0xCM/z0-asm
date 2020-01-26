// Id := 100664182, Name := System.Span`1<T> Z0.mathspan::sll<T>(System.ReadOnlySpan`1<T>,System.Byte,System.Span`1<T>)
// Span<byte> sll<byte>(ReadOnlySpan<byte> src, byte count, Span<byte> dst)
// AggressiveInlining
Span<byte> sll<byte>(ReadOnlySpan<byte> src, byte count, Span<byte> dst)
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
    IL_002E: call T Z0.gmath::sll<T>(T,System.Byte)
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
// Id := 100664182, Name := System.Span`1<T> Z0.mathspan::sll<T>(System.ReadOnlySpan`1<T>,System.Byte,System.Span`1<T>)
// Span<sbyte> sll<sbyte>(ReadOnlySpan<sbyte> src, byte count, Span<sbyte> dst)
// AggressiveInlining
Span<sbyte> sll<sbyte>(ReadOnlySpan<sbyte> src, byte count, Span<sbyte> dst)
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
    IL_002E: call T Z0.gmath::sll<T>(T,System.Byte)
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
// Id := 100664182, Name := System.Span`1<T> Z0.mathspan::sll<T>(System.ReadOnlySpan`1<T>,System.Byte,System.Span`1<T>)
// Span<ushort> sll<ushort>(ReadOnlySpan<ushort> src, byte count, Span<ushort> dst)
// AggressiveInlining
Span<ushort> sll<ushort>(ReadOnlySpan<ushort> src, byte count, Span<ushort> dst)
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
    IL_002E: call T Z0.gmath::sll<T>(T,System.Byte)
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
// Id := 100664182, Name := System.Span`1<T> Z0.mathspan::sll<T>(System.ReadOnlySpan`1<T>,System.Byte,System.Span`1<T>)
// Span<short> sll<short>(ReadOnlySpan<short> src, byte count, Span<short> dst)
// AggressiveInlining
Span<short> sll<short>(ReadOnlySpan<short> src, byte count, Span<short> dst)
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
    IL_002E: call T Z0.gmath::sll<T>(T,System.Byte)
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
// Id := 100664182, Name := System.Span`1<T> Z0.mathspan::sll<T>(System.ReadOnlySpan`1<T>,System.Byte,System.Span`1<T>)
// Span<uint> sll<uint>(ReadOnlySpan<uint> src, byte count, Span<uint> dst)
// AggressiveInlining
Span<uint> sll<uint>(ReadOnlySpan<uint> src, byte count, Span<uint> dst)
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
    IL_002E: call T Z0.gmath::sll<T>(T,System.Byte)
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
// Id := 100664182, Name := System.Span`1<T> Z0.mathspan::sll<T>(System.ReadOnlySpan`1<T>,System.Byte,System.Span`1<T>)
// Span<int> sll<int>(ReadOnlySpan<int> src, byte count, Span<int> dst)
// AggressiveInlining
Span<int> sll<int>(ReadOnlySpan<int> src, byte count, Span<int> dst)
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
    IL_002E: call T Z0.gmath::sll<T>(T,System.Byte)
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
// Id := 100664182, Name := System.Span`1<T> Z0.mathspan::sll<T>(System.ReadOnlySpan`1<T>,System.Byte,System.Span`1<T>)
// Span<ulong> sll<ulong>(ReadOnlySpan<ulong> src, byte count, Span<ulong> dst)
// AggressiveInlining
Span<ulong> sll<ulong>(ReadOnlySpan<ulong> src, byte count, Span<ulong> dst)
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
    IL_002E: call T Z0.gmath::sll<T>(T,System.Byte)
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
// Id := 100664182, Name := System.Span`1<T> Z0.mathspan::sll<T>(System.ReadOnlySpan`1<T>,System.Byte,System.Span`1<T>)
// Span<long> sll<long>(ReadOnlySpan<long> src, byte count, Span<long> dst)
// AggressiveInlining
Span<long> sll<long>(ReadOnlySpan<long> src, byte count, Span<long> dst)
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
    IL_002E: call T Z0.gmath::sll<T>(T,System.Byte)
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
