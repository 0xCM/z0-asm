// Id := 100665164, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsub<T>(T,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<double> vsub<double>(double a, Vector256<double> x)
// AggressiveInlining
Vector256<double> vsub<double>(double a, Vector256<double> x)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vbroadcast<T>(Z0.N256,T)
    IL_000B: ldarg.1
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ret
}
