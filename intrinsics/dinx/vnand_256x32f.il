// Id := 100664093, Name := System.Runtime.Intrinsics.Vector256`1<System.Single> Z0.dinx::vnand(System.Runtime.Intrinsics.Vector256`1<System.Single>,System.Runtime.Intrinsics.Vector256`1<System.Single>)
// Vector256<float> vnand(Vector256<float> x, Vector256<float> y)
// AggressiveInlining
Vector256<float> vnand(Vector256<float> x, Vector256<float> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Single> System.Runtime.Intrinsics.X86.Avx::And(System.Runtime.Intrinsics.Vector256`1<System.Single>,System.Runtime.Intrinsics.Vector256`1<System.Single>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Single> Z0.dinxfp::vnot(System.Runtime.Intrinsics.Vector256`1<System.Single>)
    IL_000C: ret
}
