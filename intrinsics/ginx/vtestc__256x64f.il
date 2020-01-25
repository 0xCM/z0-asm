// Id := 100665523, Name := Z0.bit Z0.ginx::vtestc<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// bit vtestc<double>(Vector256<double> src)
// AggressiveInlining
bit vtestc<double>(Vector256<double> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldloca.s V_0
    IL_0008: initobj T
    IL_000E: ldloc.0
    IL_000F: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::vones<T>(Z0.N256,T)
    IL_0014: call Z0.bit Z0.ginx::vtestc<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0019: ret
}
