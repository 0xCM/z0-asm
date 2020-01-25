// Id := 100664541, Name := System.Runtime.Intrinsics.Vector128`1<System.Double> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Double>)
// Vector128<double> vblendv(Vector128<double> x, Vector128<double> y, Vector128<double> spec)
// AggressiveInlining
Vector128<double> vblendv(Vector128<double> x, Vector128<double> y, Vector128<double> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Double> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Double>)
    IL_0008: ret
}
