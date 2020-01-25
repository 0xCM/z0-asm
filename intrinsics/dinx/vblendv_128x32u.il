// Id := 100664537, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vblendv(Vector128<uint> x, Vector128<uint> y, Vector128<uint> spec)
// AggressiveInlining
Vector128<uint> vblendv(Vector128<uint> x, Vector128<uint> y, Vector128<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0008: ret
}
