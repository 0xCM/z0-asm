// Id := 100664039, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vcimpl(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vcimpl(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector256<int> vcimpl(Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::Or(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000C: ret
}
