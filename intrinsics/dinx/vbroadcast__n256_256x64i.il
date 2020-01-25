// Id := 100663644, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vbroadcast(Z0.N256,System.Int64)
// Vector256<long> vbroadcast(N256 n, long src)
// AggressiveInlining
Vector256<long> vbroadcast(N256 n, long src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.Int64*)
    IL_0008: ret
}
