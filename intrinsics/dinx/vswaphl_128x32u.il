// Id := 100663973, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vswaphl(Vector128<uint> x)
// AggressiveInlining
Vector128<uint> vswaphl(Vector128<uint> x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 78
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vshuf2x64(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.Arrange2L)
    IL_0008: ret
}
