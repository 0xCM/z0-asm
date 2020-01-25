// Id := 100663888, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vreverse(Vector128<ulong> src)
// AggressiveInlining
Vector128<ulong> vreverse(Vector128<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: ret
}
