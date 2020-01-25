// Id := 100663702, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vhi(Vector128<long> src)
// AggressiveInlining
Vector128<long> vhi(Vector128<long> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: ldc.i4.1
    IL_0007: call System.Int64 System.Runtime.Intrinsics.Vector128::GetElement<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Int32)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vscalar(Z0.N128,System.Int64)
    IL_0011: ret
}
