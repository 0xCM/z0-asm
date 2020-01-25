// Id := 100664539, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vblendv(Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> spec)
// AggressiveInlining
Vector128<ulong> vblendv(Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0008: ret
}
