// Id := 100664290, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f09<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> f09<ulong>(Vector256<ulong> a, Vector256<ulong> b, Vector256<ulong> c)
// AggressiveInlining
Vector256<ulong> f09<ulong>(Vector256<ulong> a, Vector256<ulong> b, Vector256<ulong> c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000D: ret
}
