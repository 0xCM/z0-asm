// Id := 100665455, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblend<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vblend<byte>(Vector256<byte> x, Vector256<byte> y, Vector256<byte> spec)
// AggressiveInlining
Vector256<byte> vblend<byte>(Vector256<byte> x, Vector256<byte> y, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblend_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0008: ret
}
