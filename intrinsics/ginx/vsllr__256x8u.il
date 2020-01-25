// Id := 100665385, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsllr<T>(System.Runtime.Intrinsics.Vector256`1<T>,T)
// Vector256<byte> vsllr<byte>(Vector256<byte> x, byte offset)
// AggressiveInlining
Vector256<byte> vsllr<byte>(Vector256<byte> x, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsllr_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,T)
    IL_0007: ret
}
