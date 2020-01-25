// Id := 100663695, Name := System.Runtime.Intrinsics.Vector256`1<System.Double> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Double>)
// Vector256<double> vconcat(Vector128<double> lo, Vector128<double> hi)
// AggressiveInlining
Vector256<double> vconcat(Vector128<double> lo, Vector128<double> hi)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.Double>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Double> System.Runtime.Intrinsics.X86.Avx::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Byte)
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.Double> System.Runtime.Intrinsics.X86.Avx::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Byte)
    IL_0017: ret
}
