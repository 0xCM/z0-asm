// System.Runtime.Intrinsics.Vector128`1<System.Single> Z0.CpuVector::vpartsf(Z0.N128,System.Single,System.Single,System.Single,System.Single)
// Vector128<float> vpartsf(N128 w, float x0, float x1, float x2, float x3)
// AggressiveInlining
Vector128<float> vpartsf(N128 w, float x0, float x1, float x2, float x3)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: call System.Runtime.Intrinsics.Vector128`1<System.Single> System.Runtime.Intrinsics.Vector128::Create(System.Single,System.Single,System.Single,System.Single)
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Double> Z0.CpuVector::vpartsf(Z0.N128,System.Double,System.Double)
// Vector128<double> vpartsf(N128 w, double x0, double x1)
// AggressiveInlining
Vector128<double> vpartsf(N128 w, double x0, double x1)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Double> System.Runtime.Intrinsics.Vector128::Create(System.Double,System.Double)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Single> Z0.CpuVector::vpartsf(Z0.N256,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single)
// Vector256<float> vpartsf(N256 w, float x0, float x1, float x2, float x3, float x4, float x5, float x6, float x7)
// AggressiveInlining
Vector256<float> vpartsf(N256 w, float x0, float x1, float x2, float x3, float x4, float x5, float x6, float x7)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: ldarg.s x4
    IL_0007: ldarg.s x5
    IL_0009: ldarg.s x6
    IL_000B: ldarg.s x7
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<System.Single> System.Runtime.Intrinsics.Vector256::Create(System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Double> Z0.CpuVector::vpartsf(Z0.N256,System.Double,System.Double,System.Double,System.Double)
// Vector256<double> vpartsf(N256 w, double x0, double x1, double x2, double x3)
// AggressiveInlining
Vector256<double> vpartsf(N256 w, double x0, double x1, double x2, double x3)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: call System.Runtime.Intrinsics.Vector256`1<System.Double> System.Runtime.Intrinsics.Vector256::Create(System.Double,System.Double,System.Double,System.Double)
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<System.Single> Z0.CpuVector::vpartsf(Z0.N512,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single)
// Vector512<float> vpartsf(N512 w, float x0, float x1, float x2, float x3, float x4, float x5, float x6, float x7, float x8, float x9, float x10, float x11, float x12, float x13, float x14, float x15)
// AggressiveInlining
Vector512<float> vpartsf(N512 w, float x0, float x1, float x2, float x3, float x4, float x5, float x6, float x7, float x8, float x9, float x10, float x11, float x12, float x13, float x14, float x15)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: ldarg.s x4
    IL_0007: ldarg.s x5
    IL_0009: ldarg.s x6
    IL_000B: ldarg.s x7
    IL_000D: ldarg.s x8
    IL_000F: ldarg.s x9
    IL_0011: ldarg.s x10
    IL_0013: ldarg.s x11
    IL_0015: ldarg.s x12
    IL_0017: ldarg.s x13
    IL_0019: ldarg.s x14
    IL_001B: ldarg.s x15
    IL_001D: call Z0.Vector512`1<System.Single> Z0.Vector512::Create(System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single,System.Single)
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<System.Double> Z0.CpuVector::vpartsf(Z0.N512,System.Double,System.Double,System.Double,System.Double,System.Double,System.Double,System.Double,System.Double)
// Vector512<double> vpartsf(N512 w, double x0, double x1, double x2, double x3, double x4, double x5, double x6, double x7)
// AggressiveInlining
Vector512<double> vpartsf(N512 w, double x0, double x1, double x2, double x3, double x4, double x5, double x6, double x7)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: ldarg.s x4
    IL_0007: ldarg.s x5
    IL_0009: ldarg.s x6
    IL_000B: ldarg.s x7
    IL_000D: call Z0.Vector512`1<System.Double> Z0.Vector512::Create(System.Double,System.Double,System.Double,System.Double,System.Double,System.Double,System.Double,System.Double)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
