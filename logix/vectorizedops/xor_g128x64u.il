// Id := 100664187, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ulong> xor<ulong>(Vector128<ulong> a, Vector128<ulong> b)
// AggressiveInlining
Vector128<ulong> xor<ulong>(Vector128<ulong> a, Vector128<ulong> b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vxor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
