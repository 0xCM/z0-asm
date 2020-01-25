// Id := 100664137, Name := System.Span`1<T> Z0.gmath::increments<T>(System.Span`1<T>)
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
