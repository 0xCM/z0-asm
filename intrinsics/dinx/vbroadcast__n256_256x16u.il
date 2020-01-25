// Id := 100663641, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vbroadcast(Z0.N256,System.UInt16)
// Vector256<ushort> vbroadcast(N256 n, ushort src)
// AggressiveInlining
Vector256<ushort> vbroadcast(N256 n, ushort src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.UInt16*)
    IL_0008: ret
}
