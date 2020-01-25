// Id := 100663980, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vswaphl(Vector256<int> x)
// AggressiveInlining
Vector256<int> vswaphl(Vector256<int> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.3
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vperm2x128(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.Perm2x4)
    IL_0008: ret
}
