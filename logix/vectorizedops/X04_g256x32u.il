// Id := 100664285, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f04<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> f04<uint>(Vector256<uint> a, Vector256<uint> b, Vector256<uint> c)
// AggressiveInlining
Vector256<uint> f04<uint>(Vector256<uint> a, Vector256<uint> b, Vector256<uint> c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000D: ret
}
