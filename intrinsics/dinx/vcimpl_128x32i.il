// Id := 100664031, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vcimpl(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vcimpl(Vector128<int> x, Vector128<int> y)
// AggressiveInlining
Vector128<int> vcimpl(Vector128<int> x, Vector128<int> y)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse2::Or(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000C: ret
}
