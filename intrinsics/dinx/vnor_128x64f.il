// Id := 100664120, Name := System.Runtime.Intrinsics.Vector128`1<System.Double> Z0.dinx::vnor(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Double>)
// Vector128<double> vnor(Vector128<double> x, Vector128<double> y)
// AggressiveInlining
Vector128<double> vnor(Vector128<double> x, Vector128<double> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Double> System.Runtime.Intrinsics.X86.Sse2::Or(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Double>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Double> Z0.dinxfp::vnot(System.Runtime.Intrinsics.Vector128`1<System.Double>)
    IL_000C: ret
}
