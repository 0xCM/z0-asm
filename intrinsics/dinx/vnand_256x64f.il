// Id := 100664094, Name := System.Runtime.Intrinsics.Vector256`1<System.Double> Z0.dinx::vnand(System.Runtime.Intrinsics.Vector256`1<System.Double>,System.Runtime.Intrinsics.Vector256`1<System.Double>)
// Vector256<double> vnand(Vector256<double> x, Vector256<double> y)
// AggressiveInlining
Vector256<double> vnand(Vector256<double> x, Vector256<double> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Double> System.Runtime.Intrinsics.X86.Avx::And(System.Runtime.Intrinsics.Vector256`1<System.Double>,System.Runtime.Intrinsics.Vector256`1<System.Double>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Double> Z0.dinxfp::vnot(System.Runtime.Intrinsics.Vector256`1<System.Double>)
    IL_000C: ret
}
