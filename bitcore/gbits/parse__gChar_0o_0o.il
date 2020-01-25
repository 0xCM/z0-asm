// Id := 100663652, Name := T& Z0.gbits::parse<T>(System.ReadOnlySpan`1<System.Char>,System.Int32,T&)
// ref double parse<double>(ReadOnlySpan<Char> src, int offset, out double dst)
// AggressiveInlining
ref double parse<double>(ReadOnlySpan<Char> src, int offset, out double dst)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: ldarga.s src
    IL_0007: call System.Int32 System.ReadOnlySpan`1<System.Char>::get_Length()
    IL_000C: call System.Int32 Z0.math::min(System.Int32,System.Int32)
    IL_0011: ldc.i4.1
    IL_0012: sub
    IL_0013: stloc.0
    IL_0014: ldarg.0
    IL_0015: call System.Char& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<System.Char>(System.ReadOnlySpan`1<System.Char>)
    IL_001A: stloc.1
    IL_001B: ldarg.2
    IL_001C: initobj T
    IL_0022: ldarg.1
    IL_0023: stloc.2
    IL_0024: ldc.i4.0
    IL_0025: stloc.3
    IL_0026: br.s IL_004E
    IL_0028: ldloc.1
    IL_0029: ldloc.2
    IL_002A: call System.Char& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<System.Char>(System.Char&,System.Int32)
    IL_002F: ldind.u2
    IL_0030: ldc.i4.s 49
    IL_0032: bne.un.s IL_0046
    IL_0034: ldarg.2
    IL_0035: ldarg.2
    IL_0036: ldobj T
    IL_003B: ldloc.3
    IL_003C: call T Z0.gbits::enable<T>(T,System.Int32)
    IL_0041: stobj T
    IL_0046: ldloc.2
    IL_0047: ldc.i4.1
    IL_0048: add
    IL_0049: stloc.2
    IL_004A: ldloc.3
    IL_004B: ldc.i4.1
    IL_004C: add
    IL_004D: stloc.3
    IL_004E: ldloc.2
    IL_004F: ldloc.0
    IL_0050: ble.s IL_0028
    IL_0052: ldarg.2
    IL_0053: ret
}
