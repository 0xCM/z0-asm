// Id := 100663640, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vbroadcast(Z0.N256,System.Int16)
// Vector256<Int16> vbroadcast(N256 n, Int16 src)
// AggressiveInlining
Vector256<Int16> vbroadcast(N256 n, Int16 src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.Int16*)
    IL_0008: ret
}
