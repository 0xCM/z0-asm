// Id := 100663968, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vswaphl(Vector128<sbyte> x)
// AggressiveInlining
Vector128<sbyte> vswaphl(Vector128<sbyte> x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 78
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vshuf2x64(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.Arrange2L)
    IL_0008: ret
}
