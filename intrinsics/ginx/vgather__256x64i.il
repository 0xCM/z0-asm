// Id := 100665551, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgather<T>(System.ReadOnlySpan`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<long> vgather<long>(ReadOnlySpan<long> src, Vector256<long> vidx)
// AggressiveInlining
Vector256<long> vgather<long>(ReadOnlySpan<long> src, Vector256<long> vidx)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldarg.0
    IL_0006: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::head<T>(System.ReadOnlySpan`1<T>)
    IL_000B: ldarg.1
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vgather_u<T>(Z0.N256,T&,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ret
}
