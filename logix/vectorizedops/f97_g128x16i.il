// Id := 100664240, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f97<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<Int16> f97<Int16>(Vector128<Int16> a, Vector128<Int16> b, Vector128<Int16> c)
// AggressiveInlining
Vector128<Int16> f97<Int16>(Vector128<Int16> a, Vector128<Int16> b, Vector128<Int16> c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::xnor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: ldarg.1
    IL_0009: ldarg.2
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::nand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000F: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::select<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0014: ret
}
