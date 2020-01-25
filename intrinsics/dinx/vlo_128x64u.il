// Id := 100663742, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vlo(Vector128<ulong> src)
// AggressiveInlining
Vector128<ulong> vlo(Vector128<ulong> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: ldc.i4.0
    IL_0007: call System.UInt64 System.Runtime.Intrinsics.Vector128::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_0011: ret
}
