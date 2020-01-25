// Id := 100664538, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vblendv(Vector128<long> x, Vector128<long> y, Vector128<long> spec)
// AggressiveInlining
Vector128<long> vblendv(Vector128<long> x, Vector128<long> y, Vector128<long> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0008: ret
}
