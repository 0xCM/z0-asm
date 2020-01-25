// Id := 100665230, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vperm16x8<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<Int16> vperm16x8<Int16>(Vector256<Int16> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<Int16> vperm16x8<Int16>(Vector256<Int16> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vperm16x8_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: ret
}
