// Id := 100663683, Name := System.Runtime.Intrinsics.Vector128`1<System.Double> Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Double>)
// Vector128<double> vmovelo(Vector128<float> src, Vector128<double> dst)
// AggressiveInlining
Vector128<double> vmovelo(Vector128<float> src, Vector128<double> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Double> System.Runtime.Intrinsics.X86.Sse2::ConvertScalarToVector128Double(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Single>)
    IL_0007: ret
}
