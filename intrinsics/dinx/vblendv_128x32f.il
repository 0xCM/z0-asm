// Id := 100664540, Name := System.Runtime.Intrinsics.Vector128`1<System.Single> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Single>)
// Vector128<float> vblendv(Vector128<float> x, Vector128<float> y, Vector128<float> spec)
// AggressiveInlining
Vector128<float> vblendv(Vector128<float> x, Vector128<float> y, Vector128<float> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Single> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Single>)
    IL_0008: ret
}
