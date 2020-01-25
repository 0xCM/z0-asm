// Id := 100664221, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f09<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ushort> f09<ushort>(Vector128<ushort> a, Vector128<ushort> b, Vector128<ushort> c)
// AggressiveInlining
Vector128<ushort> f09<ushort>(Vector128<ushort> a, Vector128<ushort> b, Vector128<ushort> c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000D: ret
}
