// Id := 100663977, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vswaphl(Vector256<sbyte> x)
// AggressiveInlining
Vector256<sbyte> vswaphl(Vector256<sbyte> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.3
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vperm2x128(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.Perm2x4)
    IL_0008: ret
}
