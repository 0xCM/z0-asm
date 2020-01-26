// Id := 100664181, Name := System.Span`1<T> Z0.mathspan::srlv<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<byte> srlv<byte>(ReadOnlySpan<byte> src, ReadOnlySpan<byte> counts, Span<byte> dst)
// AggressiveInlining
Span<byte> srlv<byte>(ReadOnlySpan<byte> src, ReadOnlySpan<byte> counts, Span<byte> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.1
    IL_0010: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0015: stloc.2
    IL_0016: ldarg.2
    IL_0017: call T& zfunc::head<T>(System.Span`1<T>)
    IL_001C: stloc.3
    IL_001D: ldc.i4.0
    IL_001E: stloc.s V_4
    IL_0020: br.s IL_0059
    IL_0022: ldloc.3
    IL_0023: ldloc.s V_4
    IL_0025: call T& zfunc::seek<T>(T&,System.Int32)
    IL_002A: ldloc.1
    IL_002B: ldloc.s V_4
    IL_002D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0032: ldobj T
    IL_0037: ldloc.2
    IL_0038: ldloc.s V_4
    IL_003A: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_003F: ldobj T
    IL_0044: call System.Byte zfunc::convert<T,System.Byte>(T)
    IL_0049: call T Z0.gmath::srl<T>(T,System.Byte)
    IL_004E: stobj T
    IL_0053: ldloc.s V_4
    IL_0055: ldc.i4.1
    IL_0056: add
    IL_0057: stloc.s V_4
    IL_0059: ldloc.s V_4
    IL_005B: ldloc.0
    IL_005C: blt.s IL_0022
    IL_005E: ldarg.2
    IL_005F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664181, Name := System.Span`1<T> Z0.mathspan::srlv<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<sbyte> srlv<sbyte>(ReadOnlySpan<sbyte> src, ReadOnlySpan<sbyte> counts, Span<sbyte> dst)
// AggressiveInlining
Span<sbyte> srlv<sbyte>(ReadOnlySpan<sbyte> src, ReadOnlySpan<sbyte> counts, Span<sbyte> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.1
    IL_0010: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0015: stloc.2
    IL_0016: ldarg.2
    IL_0017: call T& zfunc::head<T>(System.Span`1<T>)
    IL_001C: stloc.3
    IL_001D: ldc.i4.0
    IL_001E: stloc.s V_4
    IL_0020: br.s IL_0059
    IL_0022: ldloc.3
    IL_0023: ldloc.s V_4
    IL_0025: call T& zfunc::seek<T>(T&,System.Int32)
    IL_002A: ldloc.1
    IL_002B: ldloc.s V_4
    IL_002D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0032: ldobj T
    IL_0037: ldloc.2
    IL_0038: ldloc.s V_4
    IL_003A: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_003F: ldobj T
    IL_0044: call System.Byte zfunc::convert<T,System.Byte>(T)
    IL_0049: call T Z0.gmath::srl<T>(T,System.Byte)
    IL_004E: stobj T
    IL_0053: ldloc.s V_4
    IL_0055: ldc.i4.1
    IL_0056: add
    IL_0057: stloc.s V_4
    IL_0059: ldloc.s V_4
    IL_005B: ldloc.0
    IL_005C: blt.s IL_0022
    IL_005E: ldarg.2
    IL_005F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664181, Name := System.Span`1<T> Z0.mathspan::srlv<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<ushort> srlv<ushort>(ReadOnlySpan<ushort> src, ReadOnlySpan<ushort> counts, Span<ushort> dst)
// AggressiveInlining
Span<ushort> srlv<ushort>(ReadOnlySpan<ushort> src, ReadOnlySpan<ushort> counts, Span<ushort> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.1
    IL_0010: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0015: stloc.2
    IL_0016: ldarg.2
    IL_0017: call T& zfunc::head<T>(System.Span`1<T>)
    IL_001C: stloc.3
    IL_001D: ldc.i4.0
    IL_001E: stloc.s V_4
    IL_0020: br.s IL_0059
    IL_0022: ldloc.3
    IL_0023: ldloc.s V_4
    IL_0025: call T& zfunc::seek<T>(T&,System.Int32)
    IL_002A: ldloc.1
    IL_002B: ldloc.s V_4
    IL_002D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0032: ldobj T
    IL_0037: ldloc.2
    IL_0038: ldloc.s V_4
    IL_003A: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_003F: ldobj T
    IL_0044: call System.Byte zfunc::convert<T,System.Byte>(T)
    IL_0049: call T Z0.gmath::srl<T>(T,System.Byte)
    IL_004E: stobj T
    IL_0053: ldloc.s V_4
    IL_0055: ldc.i4.1
    IL_0056: add
    IL_0057: stloc.s V_4
    IL_0059: ldloc.s V_4
    IL_005B: ldloc.0
    IL_005C: blt.s IL_0022
    IL_005E: ldarg.2
    IL_005F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664181, Name := System.Span`1<T> Z0.mathspan::srlv<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<short> srlv<short>(ReadOnlySpan<short> src, ReadOnlySpan<short> counts, Span<short> dst)
// AggressiveInlining
Span<short> srlv<short>(ReadOnlySpan<short> src, ReadOnlySpan<short> counts, Span<short> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.1
    IL_0010: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0015: stloc.2
    IL_0016: ldarg.2
    IL_0017: call T& zfunc::head<T>(System.Span`1<T>)
    IL_001C: stloc.3
    IL_001D: ldc.i4.0
    IL_001E: stloc.s V_4
    IL_0020: br.s IL_0059
    IL_0022: ldloc.3
    IL_0023: ldloc.s V_4
    IL_0025: call T& zfunc::seek<T>(T&,System.Int32)
    IL_002A: ldloc.1
    IL_002B: ldloc.s V_4
    IL_002D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0032: ldobj T
    IL_0037: ldloc.2
    IL_0038: ldloc.s V_4
    IL_003A: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_003F: ldobj T
    IL_0044: call System.Byte zfunc::convert<T,System.Byte>(T)
    IL_0049: call T Z0.gmath::srl<T>(T,System.Byte)
    IL_004E: stobj T
    IL_0053: ldloc.s V_4
    IL_0055: ldc.i4.1
    IL_0056: add
    IL_0057: stloc.s V_4
    IL_0059: ldloc.s V_4
    IL_005B: ldloc.0
    IL_005C: blt.s IL_0022
    IL_005E: ldarg.2
    IL_005F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664181, Name := System.Span`1<T> Z0.mathspan::srlv<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<uint> srlv<uint>(ReadOnlySpan<uint> src, ReadOnlySpan<uint> counts, Span<uint> dst)
// AggressiveInlining
Span<uint> srlv<uint>(ReadOnlySpan<uint> src, ReadOnlySpan<uint> counts, Span<uint> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.1
    IL_0010: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0015: stloc.2
    IL_0016: ldarg.2
    IL_0017: call T& zfunc::head<T>(System.Span`1<T>)
    IL_001C: stloc.3
    IL_001D: ldc.i4.0
    IL_001E: stloc.s V_4
    IL_0020: br.s IL_0059
    IL_0022: ldloc.3
    IL_0023: ldloc.s V_4
    IL_0025: call T& zfunc::seek<T>(T&,System.Int32)
    IL_002A: ldloc.1
    IL_002B: ldloc.s V_4
    IL_002D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0032: ldobj T
    IL_0037: ldloc.2
    IL_0038: ldloc.s V_4
    IL_003A: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_003F: ldobj T
    IL_0044: call System.Byte zfunc::convert<T,System.Byte>(T)
    IL_0049: call T Z0.gmath::srl<T>(T,System.Byte)
    IL_004E: stobj T
    IL_0053: ldloc.s V_4
    IL_0055: ldc.i4.1
    IL_0056: add
    IL_0057: stloc.s V_4
    IL_0059: ldloc.s V_4
    IL_005B: ldloc.0
    IL_005C: blt.s IL_0022
    IL_005E: ldarg.2
    IL_005F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664181, Name := System.Span`1<T> Z0.mathspan::srlv<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<int> srlv<int>(ReadOnlySpan<int> src, ReadOnlySpan<int> counts, Span<int> dst)
// AggressiveInlining
Span<int> srlv<int>(ReadOnlySpan<int> src, ReadOnlySpan<int> counts, Span<int> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.1
    IL_0010: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0015: stloc.2
    IL_0016: ldarg.2
    IL_0017: call T& zfunc::head<T>(System.Span`1<T>)
    IL_001C: stloc.3
    IL_001D: ldc.i4.0
    IL_001E: stloc.s V_4
    IL_0020: br.s IL_0059
    IL_0022: ldloc.3
    IL_0023: ldloc.s V_4
    IL_0025: call T& zfunc::seek<T>(T&,System.Int32)
    IL_002A: ldloc.1
    IL_002B: ldloc.s V_4
    IL_002D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0032: ldobj T
    IL_0037: ldloc.2
    IL_0038: ldloc.s V_4
    IL_003A: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_003F: ldobj T
    IL_0044: call System.Byte zfunc::convert<T,System.Byte>(T)
    IL_0049: call T Z0.gmath::srl<T>(T,System.Byte)
    IL_004E: stobj T
    IL_0053: ldloc.s V_4
    IL_0055: ldc.i4.1
    IL_0056: add
    IL_0057: stloc.s V_4
    IL_0059: ldloc.s V_4
    IL_005B: ldloc.0
    IL_005C: blt.s IL_0022
    IL_005E: ldarg.2
    IL_005F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664181, Name := System.Span`1<T> Z0.mathspan::srlv<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<ulong> srlv<ulong>(ReadOnlySpan<ulong> src, ReadOnlySpan<ulong> counts, Span<ulong> dst)
// AggressiveInlining
Span<ulong> srlv<ulong>(ReadOnlySpan<ulong> src, ReadOnlySpan<ulong> counts, Span<ulong> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.1
    IL_0010: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0015: stloc.2
    IL_0016: ldarg.2
    IL_0017: call T& zfunc::head<T>(System.Span`1<T>)
    IL_001C: stloc.3
    IL_001D: ldc.i4.0
    IL_001E: stloc.s V_4
    IL_0020: br.s IL_0059
    IL_0022: ldloc.3
    IL_0023: ldloc.s V_4
    IL_0025: call T& zfunc::seek<T>(T&,System.Int32)
    IL_002A: ldloc.1
    IL_002B: ldloc.s V_4
    IL_002D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0032: ldobj T
    IL_0037: ldloc.2
    IL_0038: ldloc.s V_4
    IL_003A: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_003F: ldobj T
    IL_0044: call System.Byte zfunc::convert<T,System.Byte>(T)
    IL_0049: call T Z0.gmath::srl<T>(T,System.Byte)
    IL_004E: stobj T
    IL_0053: ldloc.s V_4
    IL_0055: ldc.i4.1
    IL_0056: add
    IL_0057: stloc.s V_4
    IL_0059: ldloc.s V_4
    IL_005B: ldloc.0
    IL_005C: blt.s IL_0022
    IL_005E: ldarg.2
    IL_005F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664181, Name := System.Span`1<T> Z0.mathspan::srlv<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<long> srlv<long>(ReadOnlySpan<long> src, ReadOnlySpan<long> counts, Span<long> dst)
// AggressiveInlining
Span<long> srlv<long>(ReadOnlySpan<long> src, ReadOnlySpan<long> counts, Span<long> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: call System.Int32 System.Span`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.1
    IL_0010: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0015: stloc.2
    IL_0016: ldarg.2
    IL_0017: call T& zfunc::head<T>(System.Span`1<T>)
    IL_001C: stloc.3
    IL_001D: ldc.i4.0
    IL_001E: stloc.s V_4
    IL_0020: br.s IL_0059
    IL_0022: ldloc.3
    IL_0023: ldloc.s V_4
    IL_0025: call T& zfunc::seek<T>(T&,System.Int32)
    IL_002A: ldloc.1
    IL_002B: ldloc.s V_4
    IL_002D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0032: ldobj T
    IL_0037: ldloc.2
    IL_0038: ldloc.s V_4
    IL_003A: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_003F: ldobj T
    IL_0044: call System.Byte zfunc::convert<T,System.Byte>(T)
    IL_0049: call T Z0.gmath::srl<T>(T,System.Byte)
    IL_004E: stobj T
    IL_0053: ldloc.s V_4
    IL_0055: ldc.i4.1
    IL_0056: add
    IL_0057: stloc.s V_4
    IL_0059: ldloc.s V_4
    IL_005B: ldloc.0
    IL_005C: blt.s IL_0022
    IL_005E: ldarg.2
    IL_005F: ret
}
------------------------------------------------------------------------------------------------------------------------
