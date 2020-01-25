// Id := 100664340, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.UInt64)
// Vector256<ulong> vsllr(Vector256<ulong> src, ulong count)
// AggressiveInlining
Vector256<ulong> vsllr(Vector256<ulong> src, ulong count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0011: ret
}
