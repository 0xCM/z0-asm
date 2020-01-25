// Id := 100663970, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vswaphl(Vector128<Int16> x)
// AggressiveInlining
Vector128<Int16> vswaphl(Vector128<Int16> x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 78
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vshuf2x64(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.Arrange2L)
    IL_0008: ret
}
