// Id := 100663974, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vswaphl(Vector128<ulong> x)
// AggressiveInlining
Vector128<ulong> vswaphl(Vector128<ulong> x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 78
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vshuf2x64(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,Z0.Arrange2L)
    IL_0008: ret
}
