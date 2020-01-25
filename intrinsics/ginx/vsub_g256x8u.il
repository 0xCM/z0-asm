// Id := 100665160, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<byte> vsub<byte>(Vector256<byte> x, Vector256<byte> y)
// AggressiveInlining
Vector256<byte> vsub<byte>(Vector256<byte> x, Vector256<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsub_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
