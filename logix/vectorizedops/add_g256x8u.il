// Id := 100664273, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<byte> add<byte>(Vector256<byte> a, Vector256<byte> b)
// AggressiveInlining
Vector256<byte> add<byte>(Vector256<byte> a, Vector256<byte> b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vadd<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
