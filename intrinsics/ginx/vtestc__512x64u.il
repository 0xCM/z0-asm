// Id := 100665524, Name := Z0.bit Z0.ginx::vtestc<T>(Z0.Vector512`1<T>)
// bit vtestc<ulong>(Vector512<ulong> src)
// AggressiveInlining
bit vtestc<ulong>(Vector512<ulong> src)
{
    IL_0000: ldarga.s src
    IL_0002: call Z0.N512 zfunc::get_n512()
    IL_0007: ldloca.s V_0
    IL_0009: initobj T
    IL_000F: ldloc.0
    IL_0010: call Z0.Vector512`1<T> Z0.VPattern::vones<T>(Z0.N512,T)
    IL_0015: stloc.1
    IL_0016: ldloca.s V_1
    IL_0018: call Z0.bit Z0.ginx::vtestc<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
    IL_001D: ret
}
