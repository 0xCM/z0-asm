// Id := 100663645, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbroadcast(Z0.N256,System.UInt64)
// Vector256<ulong> vbroadcast(N256 n, ulong src)
// AggressiveInlining
Vector256<ulong> vbroadcast(N256 n, ulong src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.UInt64*)
    IL_0008: ret
}
