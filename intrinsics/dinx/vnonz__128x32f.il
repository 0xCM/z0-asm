// Id := 100664640, Name := Z0.bit Z0.dinx::vnonz(System.Runtime.Intrinsics.Vector128`1<System.Single>)
// bit vnonz(Vector128<float> src)
// AggressiveInlining
bit vnonz(Vector128<float> src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Avx::TestZ(System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Single>)
    IL_0007: ldc.i4.0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
