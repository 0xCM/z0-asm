// Id := 100663638, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vbroadcast(Z0.N256,System.SByte)
// Vector256<sbyte> vbroadcast(N256 n, sbyte src)
// AggressiveInlining
Vector256<sbyte> vbroadcast(N256 n, sbyte src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.SByte*)
    IL_0008: ret
}
