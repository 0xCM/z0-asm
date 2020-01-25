// Id := 100664169, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vselect(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vselect(Vector256<byte> x, Vector256<byte> y, Vector256<byte> z)
// AggressiveInlining
Vector256<byte> vselect(Vector256<byte> x, Vector256<byte> y, Vector256<byte> z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vnonimpl(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vor(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0013: ret
}
