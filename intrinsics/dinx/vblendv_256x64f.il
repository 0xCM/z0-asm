// Id := 100664551, Name := System.Runtime.Intrinsics.Vector256`1<System.Double> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.Double>,System.Runtime.Intrinsics.Vector256`1<System.Double>,System.Runtime.Intrinsics.Vector256`1<System.Double>)
// Vector256<double> vblendv(Vector256<double> x, Vector256<double> y, Vector256<double> spec)
// AggressiveInlining
Vector256<double> vblendv(Vector256<double> x, Vector256<double> y, Vector256<double> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Double> System.Runtime.Intrinsics.X86.Avx::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.Double>,System.Runtime.Intrinsics.Vector256`1<System.Double>,System.Runtime.Intrinsics.Vector256`1<System.Double>)
    IL_0008: ret
}
