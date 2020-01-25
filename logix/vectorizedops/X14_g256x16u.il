// Id := 100664301, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f14<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> f14<ushort>(Vector256<ushort> a, Vector256<ushort> b, Vector256<ushort> c)
// AggressiveInlining
Vector256<ushort> f14<ushort>(Vector256<ushort> a, Vector256<ushort> b, Vector256<ushort> c)
{
    IL_0000: ldarg.2
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ldarg.0
    IL_0007: ldarg.1
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0012: ret
}
