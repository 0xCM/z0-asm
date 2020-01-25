// Id := 100663750, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vmerge(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector256<ulong> vmerge(Vector128<ulong> x, Vector128<ulong> y)
// AggressiveInlining
Vector256<ulong> vmerge(Vector128<ulong> x, Vector128<ulong> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vmergelo(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vmergehi(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0013: ret
}
