// Id := 100664050, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vcnonimpl(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vcnonimpl(Vector128<ulong> x, Vector128<ulong> y)
// AggressiveInlining
Vector128<ulong> vcnonimpl(Vector128<ulong> x, Vector128<ulong> y)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Sse2::AndNot(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ret
}
