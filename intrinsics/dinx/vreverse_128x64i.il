// Id := 100663887, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vreverse(Vector128<long> src)
// AggressiveInlining
Vector128<long> vreverse(Vector128<long> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0006: ret
}
