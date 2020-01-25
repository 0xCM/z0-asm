// Id := 100664048, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vcnonimpl(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vcnonimpl(Vector128<uint> x, Vector128<uint> y)
// AggressiveInlining
Vector128<uint> vcnonimpl(Vector128<uint> x, Vector128<uint> y)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Sse2::AndNot(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ret
}
