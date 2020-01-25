// Id := 100664300, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f13<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<byte> f13<byte>(Vector256<byte> a, Vector256<byte> b, Vector256<byte> c)
// AggressiveInlining
Vector256<byte> f13<byte>(Vector256<byte> a, Vector256<byte> b, Vector256<byte> c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000D: ret
}
