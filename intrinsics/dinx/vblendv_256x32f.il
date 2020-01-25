// Id := 100664550, Name := System.Runtime.Intrinsics.Vector256`1<System.Single> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.Single>,System.Runtime.Intrinsics.Vector256`1<System.Single>,System.Runtime.Intrinsics.Vector256`1<System.Single>)
// Vector256<float> vblendv(Vector256<float> x, Vector256<float> y, Vector256<float> spec)
// AggressiveInlining
Vector256<float> vblendv(Vector256<float> x, Vector256<float> y, Vector256<float> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Single> System.Runtime.Intrinsics.X86.Avx::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.Single>,System.Runtime.Intrinsics.Vector256`1<System.Single>,System.Runtime.Intrinsics.Vector256`1<System.Single>)
    IL_0008: ret
}
