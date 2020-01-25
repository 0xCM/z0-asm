// Id := 100663981, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vswaphl(Vector256<uint> x)
// AggressiveInlining
Vector256<uint> vswaphl(Vector256<uint> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.3
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vperm2x128(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.Perm2x4)
    IL_0008: ret
}
