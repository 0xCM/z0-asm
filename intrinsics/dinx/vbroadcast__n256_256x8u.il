// Id := 100663639, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vbroadcast(Z0.N256,System.Byte)
// Vector256<byte> vbroadcast(N256 n, byte src)
// AggressiveInlining
Vector256<byte> vbroadcast(N256 n, byte src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.Byte*)
    IL_0008: ret
}
