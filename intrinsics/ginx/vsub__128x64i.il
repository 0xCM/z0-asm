// Id := 100665162, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsub<T>(T,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<long> vsub<long>(long a, Vector128<long> x)
// AggressiveInlining
Vector128<long> vsub<long>(long a, Vector128<long> x)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vbroadcast<T>(Z0.N128,T)
    IL_000B: ldarg.1
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsub<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0011: ret
}
