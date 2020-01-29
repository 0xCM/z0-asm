// System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vshuf32x8(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vshuf32x8(Vector256<byte> a, Vector256<byte> spec)
// AggressiveInlining
Vector256<byte> vshuf32x8(Vector256<byte> a, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::get_K0V()
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: stloc.0
    IL_0012: ldarg.0
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0018: ldarg.1
    IL_0019: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::get_K1V()
    IL_001E: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0023: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0028: stloc.1
    IL_0029: ldloc.0
    IL_002A: ldloc.1
    IL_002B: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vor(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0030: ret
}
------------------------------------------------------------------------------------------------------------------------
