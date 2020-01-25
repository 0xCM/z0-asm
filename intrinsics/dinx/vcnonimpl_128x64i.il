// Id := 100664049, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vcnonimpl(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vcnonimpl(Vector128<long> x, Vector128<long> y)
// AggressiveInlining
Vector128<long> vcnonimpl(Vector128<long> x, Vector128<long> y)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse2::AndNot(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0007: ret
}
