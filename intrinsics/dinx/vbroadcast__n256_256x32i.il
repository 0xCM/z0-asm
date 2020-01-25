// Id := 100663642, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vbroadcast(Z0.N256,System.Int32)
// Vector256<int> vbroadcast(N256 n, int src)
// AggressiveInlining
Vector256<int> vbroadcast(N256 n, int src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.Int32*)
    IL_0008: ret
}
