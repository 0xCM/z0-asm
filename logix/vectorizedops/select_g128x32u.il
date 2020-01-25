// Id := 100664212, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::select<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<uint> select<uint>(Vector128<uint> a, Vector128<uint> b, Vector128<uint> c)
// AggressiveInlining
Vector128<uint> select<uint>(Vector128<uint> a, Vector128<uint> b, Vector128<uint> c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vselect<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: ret
}
