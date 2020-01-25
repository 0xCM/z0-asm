// Id := 100663749, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vmerge(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector256<long> vmerge(Vector128<long> x, Vector128<long> y)
// AggressiveInlining
Vector256<long> vmerge(Vector128<long> x, Vector128<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vmergelo(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vmergehi(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0013: ret
}
