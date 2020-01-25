// Id := 100663636, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vbroadcast(Z0.N128,System.Int64)
// Vector128<long> vbroadcast(N128 n, long src)
// AggressiveInlining
Vector128<long> vbroadcast(N128 n, long src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.Int64*)
    IL_0008: ret
}
