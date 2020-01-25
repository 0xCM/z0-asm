// Id := 100665229, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vperm16x8<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<long> vperm16x8<long>(Vector128<long> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<long> vperm16x8<long>(Vector128<long> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vperm16x8_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0007: ret
}
