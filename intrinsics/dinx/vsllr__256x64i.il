// Id := 100664339, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Int64)
// Vector256<long> vsllr(Vector256<long> src, long count)
// AggressiveInlining
Vector256<long> vsllr(Vector256<long> src, long count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vscalar(Z0.N128,System.Int64)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0011: ret
}
