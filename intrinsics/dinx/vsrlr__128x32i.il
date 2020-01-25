// Id := 100664405, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Int32)
// Vector128<int> vsrlr(Vector128<int> src, int count)
// AggressiveInlining
Vector128<int> vsrlr(Vector128<int> src, int count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vscalar(Z0.N128,System.Int32)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0011: ret
}
