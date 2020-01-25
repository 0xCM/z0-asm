// Id := 100664193, Name := T Z0.mathspan::dot<T>(System.ReadOnlySpan`1<T>,System.ReadOnlySpan`1<T>)
// Int16 dot<Int16>(ReadOnlySpan<Int16> lhs, ReadOnlySpan<Int16> rhs)
// AggressiveInlining
Int16 dot<Int16>(ReadOnlySpan<Int16> lhs, ReadOnlySpan<Int16> rhs)
{
    IL_0000: ldarga.s lhs
    IL_0002: call System.Int32 System.ReadOnlySpan`1<T>::get_Length()
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000E: stloc.1
    IL_000F: ldarg.1
    IL_0010: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_0015: stloc.2
    IL_0016: ldloca.s V_3
    IL_0018: initobj T
    IL_001E: ldc.i4.0
    IL_001F: stloc.s V_4
    IL_0021: br.s IL_004A
    IL_0023: ldloc.1
    IL_0024: ldloc.s V_4
    IL_0026: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_002B: ldobj T
    IL_0030: ldloc.2
    IL_0031: ldloc.s V_4
    IL_0033: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0038: ldobj T
    IL_003D: ldloc.3
    IL_003E: call T Z0.gmath::fma<T>(T,T,T)
    IL_0043: stloc.3
    IL_0044: ldloc.s V_4
    IL_0046: ldc.i4.1
    IL_0047: add
    IL_0048: stloc.s V_4
    IL_004A: ldloc.s V_4
    IL_004C: ldloc.0
    IL_004D: blt.s IL_0023
    IL_004F: ldloc.3
    IL_0050: ret
}
