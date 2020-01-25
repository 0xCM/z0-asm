// Id := 100664080, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vnand(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vnand(Vector128<uint> x, Vector128<uint> y)
// AggressiveInlining
Vector128<uint> vnand(Vector128<uint> x, Vector128<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Sse2::And(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000C: ret
}
