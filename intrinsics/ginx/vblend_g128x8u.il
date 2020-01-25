// Id := 100665454, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblend<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vblend<byte>(Vector128<byte> x, Vector128<byte> y, Vector128<byte> spec)
// AggressiveInlining
Vector128<byte> vblend<byte>(Vector128<byte> x, Vector128<byte> y, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblend_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: ret
}
