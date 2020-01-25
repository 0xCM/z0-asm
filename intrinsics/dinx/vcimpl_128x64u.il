// Id := 100664034, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vcimpl(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vcimpl(Vector128<ulong> x, Vector128<ulong> y)
// AggressiveInlining
Vector128<ulong> vcimpl(Vector128<ulong> x, Vector128<ulong> y)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Sse2::Or(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000C: ret
}
