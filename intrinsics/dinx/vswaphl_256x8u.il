// Id := 100663976, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vswaphl(Vector256<byte> x)
// AggressiveInlining
Vector256<byte> vswaphl(Vector256<byte> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.3
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vperm2x128(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.Perm2x4)
    IL_0008: ret
}
