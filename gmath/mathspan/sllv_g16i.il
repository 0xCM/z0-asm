// Id := 100664192, Name := System.Span`1<T> Z0.mathspan::sllv<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>,System.Span`1<T>)
// Span<Int16> sllv<Int16>(ReadOnlySpan<Int16> src, ReadOnlySpan<Int16> counts, Span<Int16> dst)
// AggressiveInlining
Span<Int16> sllv<Int16>(ReadOnlySpan<Int16> src, ReadOnlySpan<Int16> counts, Span<Int16> dst)
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
    IL_0049: call T Z0.gmath::sll<T>(T,System.Byte)
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
