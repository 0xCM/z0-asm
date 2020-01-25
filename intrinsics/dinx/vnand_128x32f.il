// Id := 100664083, Name := System.Runtime.Intrinsics.Vector128`1<System.Single> Z0.dinx::vnand(System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Single>)
// Vector128<float> vnand(Vector128<float> x, Vector128<float> y)
// AggressiveInlining
Vector128<float> vnand(Vector128<float> x, Vector128<float> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Single> System.Runtime.Intrinsics.X86.Sse::And(System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Single>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Single> Z0.dinxfp::vnot(System.Runtime.Intrinsics.Vector128`1<System.Single>)
    IL_000C: ret
}
