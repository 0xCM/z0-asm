// Id := 100664411, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Int16)
// Vector256<Int16> vsrlr(Vector256<Int16> src, Int16 count)
// AggressiveInlining
Vector256<Int16> vsrlr(Vector256<Int16> src, Int16 count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vscalar(Z0.N128,System.Int16)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0011: ret
}
