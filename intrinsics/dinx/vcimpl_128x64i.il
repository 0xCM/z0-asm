// Id := 100664033, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vcimpl(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vcimpl(Vector128<long> x, Vector128<long> y)
// AggressiveInlining
Vector128<long> vcimpl(Vector128<long> x, Vector128<long> y)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse2::Or(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_000C: ret
}
