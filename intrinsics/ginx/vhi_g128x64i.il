// Id := 100665184, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<long> vhi<long>(Vector128<long> src)
// AggressiveInlining
Vector128<long> vhi<long>(Vector128<long> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000B: ldc.i4.1
    IL_000C: call System.UInt64 zfunc::vcell<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.CpuVector::vscalar<System.UInt64>(Z0.N128,System.UInt64)
    IL_0016: stloc.0
    IL_0017: ldloca.s V_0
    IL_0019: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>&)
    IL_001E: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_0023: ret
}
