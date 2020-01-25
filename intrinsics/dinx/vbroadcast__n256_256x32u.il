// Id := 100663643, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbroadcast(Z0.N256,System.UInt32)
// Vector256<uint> vbroadcast(N256 n, uint src)
// AggressiveInlining
Vector256<uint> vbroadcast(N256 n, uint src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector256(System.UInt32*)
    IL_0008: ret
}
