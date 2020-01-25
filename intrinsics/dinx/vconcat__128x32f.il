// Id := 100663694, Name := System.Runtime.Intrinsics.Vector256`1<System.Single> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Single>)
// Vector256<float> vconcat(Vector128<float> lo, Vector128<float> hi)
// AggressiveInlining
Vector256<float> vconcat(Vector128<float> lo, Vector128<float> hi)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.Single>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Single> System.Runtime.Intrinsics.X86.Avx::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Byte)
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.Single> System.Runtime.Intrinsics.X86.Avx::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Byte)
    IL_0017: ret
}
