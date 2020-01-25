// Id := 100664274, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> sub<ulong>(Vector256<ulong> a, Vector256<ulong> b)
// AggressiveInlining
Vector256<ulong> sub<ulong>(Vector256<ulong> a, Vector256<ulong> b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
